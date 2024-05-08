import 'package:drift/drift.dart';
import 'package:t2mobile/services/cache_database/cache_database.dart';
import 'package:t2mobile/services/cache_database/tables/course_categories.dart';

part 'course_categories.g.dart';

@DriftAccessor(tables: [CourseCategories])
class CourseCategoriesDao extends DatabaseAccessor<CacheDatabase>
    with _$CourseCategoriesDaoMixin {
  CourseCategoriesDao(super.db);

  Future<CourseCategory?> get(int id) async =>
      (select(courseCategories)..where((t) => t.id.equals(id)))
          .getSingleOrNull();

  Future<void> set(CourseCategory data) =>
      into(courseCategories).insertOnConflictUpdate(data);
}
