import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:t2mobile/providers/base/cacheable_notifier.dart';
import 'package:t2mobile/providers/features/assignments/assignment_ids.dart';
import 'package:t2mobile/services/cache_database/cache_database.dart';
import 'package:t2mobile/services/cache_database/tables/timestamps.dart';

part 'assignments.freezed.dart';
part 'assignments.g.dart';

@freezed
class AssignmentsData with _$AssignmentsData {
  const factory AssignmentsData({
    required List<Assignment> data,
    required DateTime updatedAt,
  }) = _AssignmentsData;
}

@riverpod
class Assignments extends _$Assignments
    with CacheableNotifier<AssignmentsData> {
  @override
  Future<CacheableData<AssignmentsData>> build(AssignmentType type) async {
    final ids = await ref.read(assignmentIdsProvider.future);

    ref.listen(assignmentIdsProvider, (previous, next) async {
      var newState = state;
      if (next.hasValue &&
          next.requireValue.data[type] != previous?.valueOrNull?.data[type]) {
        newState = AsyncData(await _load(next.requireValue));
      }
      if (next.error != null && next.stackTrace != null) {
        newState = AsyncError(next.error!, next.stackTrace!);
      }
      if (next.isLoading) {
        newState = const AsyncLoading<CacheableData<AssignmentsData>>()
            .copyWithPrevious(newState);
      }
      state = newState;
    }, fireImmediately: false);

    return await _load(ids);
  }

  Future<CacheableData<AssignmentsData>> _load(
      CacheableData<AssignmentIdsData> data) async {
    final cacheDb = ref.read(cacheDbProvider);
    final assignments = await cacheDb.assignmentsDao.getMany(data.data[type]);
    final DateTime updatedAt;
    switch (type) {
      case AssignmentType.notSubmitted:
        assignments.sort((a, b) {
          final aDue = a.dueDate ?? a.cutOffDate;
          final bDue = b.dueDate ?? b.cutOffDate;
          if (aDue == null) return -1;
          if (bDue == null) return 1;
          return aDue.compareTo(bDue);
        });
        updatedAt = data.data.updatedAt;
      case AssignmentType.submitted:
      case AssignmentType.hidden:
        assignments.sort((a, b) {
          final aDue = a.dueDate ?? a.cutOffDate;
          final bDue = b.dueDate ?? b.cutOffDate;
          if (aDue == null) return -1;
          if (bDue == null) return 1;
          return bDue.compareTo(aDue);
        });
        final timestamp = await cacheDb.timestampsDao.get(
          type == AssignmentType.submitted
              ? TimestampIds.updateSubmittedSubmissions
              : TimestampIds.updateHiddenSubmissions,
        );
        updatedAt = timestamp?.at ?? data.data.updatedAt;
    }
    return CacheableData(
      AssignmentsData(data: assignments, updatedAt: updatedAt),
      isCache: data.isCache,
    );
  }

  @override
  Future<void> refresh() async {
    switch (type) {
      case AssignmentType.notSubmitted:
        await ref.read(assignmentIdsProvider.notifier).refresh();
      case AssignmentType.submitted:
      case AssignmentType.hidden:
        await ref.read(assignmentIdsProvider.notifier).refreshOf(type);
    }
  }
}
