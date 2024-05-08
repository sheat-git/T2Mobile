import 'package:drift/drift.dart';
import 'package:t2mobile/services/cache_database/cache_database.dart';
import 'package:t2mobile/services/cache_database/tables/courses.dart';

part 'courses.g.dart';

@DriftAccessor(tables: [Courses])
class CoursesDao extends DatabaseAccessor<CacheDatabase>
    with _$CoursesDaoMixin {
  CoursesDao(super.db);

  Future<List<Course>> getAllEnrolled() =>
      (select(courses)..where((tbl) => tbl.isEnrolled.equals(true))).get();

  Future<void> setMany(Iterable<Course> data) => batch((batch) =>
      batch.insertAll(courses, data, mode: InsertMode.insertOrReplace));

  Future<Course?> get(int id) =>
      (select(courses)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();

  Future<void> set(Course data) => into(courses).insertOnConflictUpdate(data);
}
