import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_category.freezed.dart';
part 'course_category.g.dart';

/// `CoreCategoryData`
@freezed
class CourseCategoryModel with _$CourseCategoryModel {
  const factory CourseCategoryModel({
    /// Category id.
    required int id,

    /// Category name.
    required String name,

    /// Category id number.
    String? idnumber,

    /// Category description.
    required String description,

    /// Description format (1 = HTML, 0 = MOODLE, 2 = PLAIN or 4 = MARKDOWN).
    required int descriptionformat,

    /// Parent category id.
    required int parent,

    /// Category sorting order.
    required int sortorder,

    /// Number of courses in this category.
    required int coursecount,

    /// 1: available, 0: not available.
    int? visible,

    /// 1: available, 0: not available.
    int? visibleold,

    /// Timestamp.
    int? timemodified,

    /// Category depth.
    required int depth,

    /// Category path.
    required String path,

    /// Category theme.
    String? theme,
  }) = _CourseCategoryModel;

  factory CourseCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CourseCategoryModelFromJson(json);
}
