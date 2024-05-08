import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:t2mobile/providers/base/cacheable_notifier.dart';
import 'package:t2mobile/services/cache_database/cache_database.dart';
import 'package:t2mobile/services/cache_database/tables/timestamps.dart';
import 'package:t2mobile/services/moodle_api/moodle_api.dart';

part 'courses.freezed.dart';
part 'courses.g.dart';

@freezed
class CoursesData with _$CoursesData {
  const factory CoursesData._({
    required Map<int, List<Course>> courses,
    required DateTime updatedAt,
  }) = _CoursesData;

  factory CoursesData(Iterable<Course> courses, {DateTime? updatedAt}) =>
      CoursesData._(
        courses: courses
            .where((c) => c.categoryId != null)
            .groupListsBy((c) => c.categoryId!),
        updatedAt: updatedAt ?? DateTime.now(),
      );
}

@riverpod
class Courses extends _$Courses with CacheableNotifier<CoursesData> {
  @override
  Future<CacheableData<CoursesData>> build() => loadAndFetch();

  @override
  bool shouldFetch(CoursesData cache) {
    final difference = DateTime.now().difference(cache.updatedAt);
    if (cache.courses.isEmpty) {
      return difference.inMinutes >= 1;
    } else {
      return difference.inDays >= 1;
    }
  }

  @override
  Future<CoursesData?> load() async {
    final cacheDb = ref.read(cacheDbProvider);
    final (courses, timestamp) = await (
      cacheDb.coursesDao.getAllEnrolled(),
      cacheDb.timestampsDao.get(TimestampIds.updateCourses),
    ).wait;
    return timestamp != null
        ? CoursesData(courses, updatedAt: timestamp.at)
        : null;
  }

  @override
  Future<CoursesData> fetch() async {
    final moodleApi = ref.read(moodleApiProvider);
    final courses = await moodleApi.getCourses();
    return CoursesData(courses.map((c) => c.toDb(isEnroled: true)));
  }

  @override
  Future<void> save(CoursesData data) async {
    final cacheDb = ref.read(cacheDbProvider);
    await cacheDb.transaction(() => (
          cacheDb.coursesDao.setAll(data.courses.values.flattened.toList()),
          cacheDb.timestampsDao.set(TimestampIds.updateCourses, data.updatedAt),
        ).wait);
  }
}
