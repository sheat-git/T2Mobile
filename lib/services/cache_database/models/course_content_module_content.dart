import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_content_module_content.freezed.dart';
part 'course_content_module_content.g.dart';

@freezed
class CourseContentModuleContent with _$CourseContentModuleContent {
  const factory CourseContentModuleContent({
    required String url,
    required DateTime modifiedAt,
  }) = _CourseContentModuleContent;

  factory CourseContentModuleContent.fromJson(Map<String, dynamic> json) =>
      _$CourseContentModuleContentFromJson(json);
}
