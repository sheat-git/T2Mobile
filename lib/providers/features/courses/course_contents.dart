import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:t2mobile/providers/base/cacheable_notifier.dart';
import 'package:t2mobile/services/cache_database/cache_database.dart';
import 'package:t2mobile/services/cache_database/models/course_content_module_content.dart';
import 'package:t2mobile/services/cache_database/tables/course_content_modules.dart';
import 'package:t2mobile/services/cache_database/tables/course_contents.dart';
import 'package:t2mobile/services/cache_database/tables/timestamps.dart';
import 'package:t2mobile/services/moodle_api/moodle_api.dart';

part 'course_contents.freezed.dart';
part 'course_contents.g.dart';

@freezed
class CourseSectionData with _$CourseSectionData {
  const factory CourseSectionData({
    required CourseContent content,
    required List<CourseContentModule> modules,
  }) = _CourseSectionData;
}

@freezed
class CourseSectionsData with _$CourseSectionsData {
  const factory CourseSectionsData._({
    required List<CourseSectionData> sections,
    required DateTime updatedAt,
  }) = _CourseSectionsData;

  factory CourseSectionsData({
    required List<CourseSectionData> sections,
    DateTime? updatedAt,
  }) =>
      CourseSectionsData._(
        sections: sections,
        updatedAt: updatedAt ?? DateTime.now(),
      );

  factory CourseSectionsData.fold({
    required List<CourseContent> contents,
    required List<CourseContentModule> modules,
    DateTime? updatedAt,
  }) {
    final groupedModules = modules.groupListsBy((m) => m.courseContentId);
    final sections = contents.sortedBy<num>((c) => c.id).map((content) {
      final modules = groupedModules[content.id] ?? [];
      modules.sortBy<num>((m) => m.id);
      return CourseSectionData(content: content, modules: modules);
    }).toList();
    return CourseSectionsData(sections: sections, updatedAt: updatedAt);
  }
}

@riverpod
class CourseSections extends _$CourseSections
    with CacheableNotifier<CourseSectionsData> {
  @override
  Future<CacheableData<CourseSectionsData>> build(int id) => loadAndFetch();

  @override
  bool shouldFetch(CourseSectionsData cache) =>
      DateTime.now().difference(cache.updatedAt).inMinutes >= 1;

  @override
  Future<CourseSectionsData?> load() async {
    final cacheDb = ref.read(cacheDbProvider);
    final ((contents, modules), timestamp) = await (
      () async {
        final contents = await cacheDb.courseContentsDao.getMany(id);
        final modules = await cacheDb.courseContentModulesDao
            .getMany(contents.map((c) => c.id));
        return (contents, modules);
      }(),
      cacheDb.timestampsDao.get(TimestampIds.updateCourseContents(id))
    ).wait;
    return timestamp != null
        ? CourseSectionsData.fold(
            contents: contents,
            modules: modules,
            updatedAt: timestamp.at,
          )
        : null;
  }

  @override
  Future<CourseSectionsData> fetch() async {
    final moodleApi = ref.read(moodleApiProvider);
    final contents = await moodleApi.getCourseContents(id);
    final sections = contents
        .map((content) => CourseSectionData(
              content: CourseContent(
                courseId: id,
                id: content.id,
                name: content.name,
                summary: content.summary,
                summaryFormat: SummaryFormat.fromValue(content.summaryformat),
                rawSummaryFormat: content.summaryformat,
              ),
              modules: content.modules
                  .map((module) => CourseContentModule(
                        courseContentId: content.id,
                        id: module.id,
                        type:
                            CourseContentModuleType.fromModName(module.modname),
                        modName: module.modname,
                        name: module.name,
                        description: module.description,
                        url: module.url,
                        contents: module.contents
                                ?.map((c) => CourseContentModuleContent(
                                      url: c.fileurl,
                                      modifiedAt:
                                          DateTime.fromMillisecondsSinceEpoch(
                                              c.timemodified * 1000),
                                    ))
                                .toList() ??
                            [],
                      ))
                  .toList(),
            ))
        .toList();
    return CourseSectionsData(sections: sections);
  }

  @override
  Future<void> save(CourseSectionsData data) async {
    final cacheDb = ref.read(cacheDbProvider);
    await (
      cacheDb.courseContentsDao.setMany(data.sections.map((s) => s.content)),
      cacheDb.courseContentModulesDao
          .setMany(data.sections.expand((s) => s.modules)),
      cacheDb.timestampsDao.set(TimestampIds.updateCourseContents(id)),
    ).wait;
  }
}
