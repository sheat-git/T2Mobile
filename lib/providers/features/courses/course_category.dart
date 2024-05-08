import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:t2mobile/services/cache_database/cache_database.dart';
import 'package:t2mobile/services/moodle_api/moodle_api.dart';

part 'course_category.g.dart';

@riverpod
Future<String> courseCategory(CourseCategoryRef ref, int id) async {
  final cacheDb = ref.read(cacheDbProvider);
  final category = await cacheDb.courseCategoriesDao.get(id) ??
      await () async {
        final moodleApi = ref.read(moodleApiProvider);
        final model = await moodleApi.getCourseCategory(id);
        final category = CourseCategory(
          id: model.id,
          name: model.name,
          parentId: model.parent,
        );
        unawaited(cacheDb.courseCategoriesDao.set(category));
        return category;
      }();
  final parent = category.parentId != null && category.parentId! > 0
      ? await ref.watch(courseCategoryProvider(category.parentId!).future)
      : null;
  return parent != null ? '$parent / ${category.name}' : category.name;
}
