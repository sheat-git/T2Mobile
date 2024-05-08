import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:t2mobile/services/moodle_api/models/searched_course.dart';
import 'package:t2mobile/services/moodle_api/models/warning.dart';

part 'courses.freezed.dart';
part 'courses.g.dart';

/// `CoreCourseGetCoursesByFieldWSResponse`
@freezed
class CoursesModel with _$CoursesModel {
  const factory CoursesModel({
    required List<SearchedCourseModel> courses,
    List<WarningModel>? warnings,
  }) = _CoursesModel;

  factory CoursesModel.fromJson(Map<String, dynamic> json) =>
      _$CoursesModelFromJson(json);
}
