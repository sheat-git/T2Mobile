import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:t2mobile/providers/base/cacheable_notifier.dart';
import 'package:t2mobile/services/cache_database/cache_database.dart';
import 'package:t2mobile/services/cache_database/models/format.dart';
import 'package:t2mobile/services/cache_database/tables/timestamps.dart';
import 'package:t2mobile/services/database/database.dart';
import 'package:t2mobile/services/moodle_api/moodle_api.dart';

part 'assignment_ids.freezed.dart';
part 'assignment_ids.g.dart';

enum AssignmentType {
  notSubmitted,
  submitted,
  hidden,
}

@freezed
class AssignmentIdsData with _$AssignmentIdsData {
  const factory AssignmentIdsData._(
    Map<AssignmentType, Set<int>> data, {
    required DateTime updatedAt,
  }) = _AssignmentIdsData;

  factory AssignmentIdsData({
    required Set<int> notSubmitted,
    required Set<int> submitted,
    required Set<int> hidden,
    DateTime? updatedAt,
  }) =>
      AssignmentIdsData._(
        {
          AssignmentType.notSubmitted: notSubmitted,
          AssignmentType.submitted: submitted,
          AssignmentType.hidden: hidden,
        },
        updatedAt: updatedAt ?? DateTime.now(),
      );

  factory AssignmentIdsData.compute({
    required Iterable<int> all,
    required Iterable<int> submitted,
    required Iterable<int> hidden,
    DateTime? updatedAt,
  }) {
    final notHidden = all.toSet().difference(hidden.toSet());
    return AssignmentIdsData(
      notSubmitted: notHidden.difference(submitted.toSet()),
      submitted: submitted.toSet().intersection(notHidden),
      hidden: hidden.toSet(),
      updatedAt: updatedAt,
    );
  }

  Set<int> operator [](AssignmentType status) => data[status] ?? {};
}

@riverpod
class AssignmentIds extends _$AssignmentIds
    with CacheableNotifier<AssignmentIdsData> {
  @override
  Future<CacheableData<AssignmentIdsData>> build() => loadAndFetch();

  @override
  Future<AssignmentIdsData?> load() async {
    final db = ref.read(dbProvider);
    final cacheDb = ref.read(cacheDbProvider);
    final (
      hiddenIds,
      allIds,
      submittedAssignmentIds,
      timestamp,
    ) = await (
      db.assignmentInfosDao.getHiddenIds(),
      cacheDb.assignmentsDao.getAllIds(),
      cacheDb.submissionsDao.getSubmittedAssignmentIds(),
      cacheDb.timestampsDao.get(TimestampIds.updateAssignments),
    ).wait;
    return timestamp != null
        ? AssignmentIdsData.compute(
            all: allIds,
            submitted: submittedAssignmentIds,
            hidden: hiddenIds,
            updatedAt: timestamp.at,
          )
        : null;
  }

  Future<List<Assignment>> _fetchAssignments() async {
    final moodleApi = ref.read(moodleApiProvider);
    final models = await moodleApi.getAssignments();
    final now = DateTime.now();
    final assignments = models
        .map((m) => Assignment(
              id: m.id,
              courseId: m.course,
              courseModuleId: m.cmid,
              name: m.name,
              intro: m.intro,
              introFormat: Format.fromValue(m.introformat),
              introFiles: (m.introattachments ?? m.introfiles ?? [])
                  .map((f) => f.toDb())
                  .toList(),
              allowSubmissionsFromDate: m.allowsubmissionsfromdate > 0
                  ? DateTime.fromMillisecondsSinceEpoch(
                      m.allowsubmissionsfromdate * 1000)
                  : null,
              dueDate: m.duedate > 0
                  ? DateTime.fromMillisecondsSinceEpoch(m.duedate * 1000)
                  : null,
              cutOffDate: m.cutoffdate > 0
                  ? DateTime.fromMillisecondsSinceEpoch(m.cutoffdate * 1000)
                  : null,
              timeLimit: m.timelimit,
              isNotRequiredToSubmit: m.nosubmissions >= 1,
              updatedAt: now,
            ))
        .toList();
    final cacheDb = ref.read(cacheDbProvider);
    unawaited(cacheDb.assignmentsDao.setMany(assignments));
    return assignments;
  }

  Future<Submission> _fetchSubmission(int id) async {
    final moodleApi = ref.read(moodleApiProvider);
    final status = await moodleApi.getSubmissionStatus(id);
    final submission = status.toDb(assignmentId: id);
    final cacheDb = ref.read(cacheDbProvider);
    unawaited(cacheDb.submissionsDao.set(submission));
    return submission;
  }

  @override
  Future<AssignmentIdsData> fetch() async {
    final data = state.valueOrNull?.data;
    final submissionFutures = <Future<Submission>>[];
    if (data != null) {
      submissionFutures
          .addAll(data[AssignmentType.notSubmitted].map(_fetchSubmission));
    }
    final (assignments, hiddenIds) = await (
      _fetchAssignments(),
      data != null
          ? Future.value(data[AssignmentType.hidden])
          : ref.read(dbProvider).assignmentInfosDao.getHiddenIds()
    ).wait;
    final newAssignmentIds = assignments.map((a) => a.id).toSet();
    // 非表示は取得しない
    newAssignmentIds.removeAll(hiddenIds);
    if (data != null) {
      // すでに取得開始済み
      newAssignmentIds.removeAll(data[AssignmentType.notSubmitted]);
    }
    submissionFutures.addAll(newAssignmentIds.map(_fetchSubmission));
    final submissions = await Future.wait(submissionFutures);
    return AssignmentIdsData.compute(
      all: assignments.map((a) => a.id),
      submitted:
          submissions.where((s) => s.isSubmitted).map((s) => s.assignmentId),
      hidden: data?[AssignmentType.hidden] ?? [],
    );
  }

  @override
  Future<void> save(AssignmentIdsData data) async {
    // _fetchAssignmentsや_fetchSubmissionにも保存処理がある
    final cacheDb = ref.read(cacheDbProvider);
    await cacheDb.timestampsDao
        .set(TimestampIds.updateAssignments, data.updatedAt);
  }

  Future<void> refreshOf(AssignmentType type) => update((value) async {
        setLoading();
        final data = value.data;
        final ids = data[type];
        final submissions = await Future.wait(ids.map(_fetchSubmission));
        final AssignmentIdsData next;
        switch (type) {
          case AssignmentType.notSubmitted:
            final submitted = submissions
                .where((s) => s.isSubmitted)
                .map((s) => s.assignmentId)
                .toSet();
            if (submitted.isNotEmpty) {
              next = AssignmentIdsData(
                notSubmitted:
                    data[AssignmentType.notSubmitted].difference(submitted),
                submitted: data[AssignmentType.submitted].union(submitted),
                hidden: data[AssignmentType.hidden],
                updatedAt: data.updatedAt,
              );
            } else {
              next = data;
            }
          case AssignmentType.submitted:
            final notSubmitted = submissions
                .where((s) => !s.isSubmitted)
                .map((s) => s.assignmentId)
                .toSet();
            if (notSubmitted.isNotEmpty) {
              next = AssignmentIdsData(
                notSubmitted:
                    data[AssignmentType.notSubmitted].union(notSubmitted),
                submitted:
                    data[AssignmentType.submitted].difference(notSubmitted),
                hidden: data[AssignmentType.hidden],
                updatedAt: data.updatedAt,
              );
            } else {
              next = data;
            }
            final cacheDb = ref.read(cacheDbProvider);
            unawaited(cacheDb.timestampsDao
                .set(TimestampIds.updateSubmittedSubmissions));
          case AssignmentType.hidden:
            next = data;
            final cacheDb = ref.read(cacheDbProvider);
            unawaited(cacheDb.timestampsDao
                .set(TimestampIds.updateHiddenSubmissions));
        }
        return FetchedData(next);
      });
}
