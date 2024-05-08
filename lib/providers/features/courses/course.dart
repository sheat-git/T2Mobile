import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:t2mobile/providers/base/cacheable_notifier.dart';
import 'package:t2mobile/services/cache_database/cache_database.dart' as d;
import 'package:t2mobile/services/moodle_api/moodle_api.dart';

part 'course.g.dart';

@riverpod
class Course extends _$Course with CacheableNotifier<d.Course> {
  @override
  Future<CacheableData<d.Course>> build(int id) => loadOrFetch();

  @override
  Future<d.Course?> load() async {
    final cacheDb = ref.read(d.cacheDbProvider);
    return cacheDb.coursesDao.get(id);
  }

  @override
  Future<d.Course> fetch() async {
    final moodleApi = ref.read(moodleApiProvider);
    final course = await moodleApi.getCourse(id);
    return course.toDb(isEnroled: false);
  }

  @override
  Future<void> save(d.Course data) async {
    final cacheDb = ref.read(d.cacheDbProvider);
    await cacheDb.coursesDao.set(data);
  }
}
