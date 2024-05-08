import 'package:drift/drift.dart';
import 'package:t2mobile/services/cache_database/cache_database.dart';
import 'package:t2mobile/services/cache_database/tables/course_content_modules.dart';

part 'course_content_modules.g.dart';

@DriftAccessor(tables: [CourseContentModules])
class CourseContentModulesDao extends DatabaseAccessor<CacheDatabase>
    with _$CourseContentModulesDaoMixin {
  CourseContentModulesDao(super.db);

  Future<List<CourseContentModule>> getMany(Iterable<int> courseContentIds) =>
      (select(courseContentModules)
            ..where((tbl) => tbl.courseContentId.isIn(courseContentIds)))
          .get();

  Future<void> setMany(Iterable<CourseContentModule> data) =>
      batch((batch) => batch.insertAll(courseContentModules, data,
          mode: InsertMode.insertOrReplace));
}
