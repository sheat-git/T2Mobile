import 'package:drift/drift.dart';
import 'package:t2mobile/services/cache_database/cache_database.dart';
import 'package:t2mobile/services/cache_database/tables/course_contents.dart';

part 'course_contents.g.dart';

@DriftAccessor(tables: [CourseContents])
class CourseContentsDao extends DatabaseAccessor<CacheDatabase>
    with _$CourseContentsDaoMixin {
  CourseContentsDao(super.db);

  Future<List<CourseContent>> getMany(int courseId) =>
      (select(courseContents)..where((tbl) => tbl.courseId.equals(courseId)))
          .get();

  Future<void> setMany(Iterable<CourseContent> data) => batch((batch) =>
      batch.insertAll(courseContents, data, mode: InsertMode.insertOrReplace));
}
