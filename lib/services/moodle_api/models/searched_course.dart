import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:t2mobile/services/moodle_api/models/course.dart';
import 'package:t2mobile/services/moodle_api/models/file.dart';

part 'searched_course.freezed.dart';
part 'searched_course.g.dart';

/// `CoreCourseSearchedData`
@freezed
class SearchedCourseModel with _$SearchedCourseModel, CourseModel {
  const SearchedCourseModel._();

  const factory SearchedCourseModel({
    /// Course id.
    required int id,

    /// Course full name.
    required String fullname,

    /// Course display name.
    String? displayname,

    /// Course short name.
    required String shortname,

    /// Summary.
    required String summary,

    /// Summary format (1 = HTML, 0 = MOODLE, 2 = PLAIN or 4 = MARKDOWN).
    required int summaryformat,

    /// Course category id.
    int? categoryid,

    /// Id number.
    String? idnumber,

    /// Course format: weeks, topics, social, site,..
    String? format,

    /// 1 if grades are shown, otherwise 0.
    int? showgrades,

    /// Number of recent items appearing on the course page.
    int? newsitems,

    /// Timestamp when the course start.
    int? startdate,

    /// Timestamp when the course end.
    int? enddate,

    /// Largest size of file that can be uploaded into.
    int? maxbytes,

    /// Are activity report shown (yes = 1, no =0).
    int? showreports,

    /// 1: available to student, 0:not available.
    int? visible,

    /// No group, separate, visible.
    int? groupmode,

    /// 1: yes, 0: no.
    int? groupmodeforce,

    /// Default grouping id.
    int? defaultgroupingid,

    /// Completion enabled? 1: yes 0: no.
    int? enablecompletion,

    /// 1: yes 0: no.
    int? completionnotify,

    /// Forced course language.
    String? lang,

    /// Name of the forced theme.
    String? theme,

    /// Current course marker.
    int? marker,

    /// If legacy files are enabled.
    int? legacyfiles,

    /// Calendar type.
    String? calendartype,

    /// Time when the course was created.
    int? timecreated,

    /// Last time the course was updated.
    int? timemodified,

    /// If is a requested course.
    int? requested,

    /// Cache revision number.
    int? cacherev,

    /// Course filters.
    List<SearchedCourseFilterModel>? filters,

    /// Additional options for particular course format.
    List<CourseFormatOptionModel>? courseformatoptions,

    /// @since Moodle 4.4. Communication tool room name.
    String? communicationroomname,

    /// @since Moodle 4.4. Communication tool room URL.
    String? communicationroomurl,

    /// Category name.
    required String categoryname,

    /// Sort order in the category.
    int? sortorder,

    /// Summary files.
    List<FileModel>? summaryfiles,

    /// Overview files.
    required List<FileModel> overviewfiles,

    /// Contact users.
    required List<SearchedCourseContactModel> contacts,

    /// Enrollment methods list.
    required List<String> enrollmentmethods,

    /// Custom fields and associated values.
    List<CourseCustomFieldModel>? customfields,

    /// @since 3.11. Whether the activity dates are shown or not.
    bool? showactivitydates,

    /// @since 3.11. Whether the activity completion conditions are shown or not.
    bool? showcompletionconditions,
  }) = _SearchedCourseModel;

  factory SearchedCourseModel.fromJson(Map<String, dynamic> json) =>
      _$SearchedCourseModelFromJson(json);
}

/// `CoreCourseFormatOption`
@freezed
class CourseFormatOptionModel with _$CourseFormatOptionModel {
  const factory CourseFormatOptionModel({
    /// Course format option name.
    required String name,

    /// Course format option value.
    required String value,
  }) = _CourseFormatOptionModel;

  factory CourseFormatOptionModel.fromJson(Map<String, dynamic> json) =>
      _$CourseFormatOptionModelFromJson(json);
}

/// `CoreCourseCustomField`
@freezed
class CourseCustomFieldModel with _$CourseCustomFieldModel {
  const factory CourseCustomFieldModel({
    /// The name of the custom field.
    required String name,

    /// The shortname of the custom field.
    required String shortname,

    /// The type of the custom field - text, checkbox...
    required String type,

    /// The raw value of the custom field.
    required String valueraw,

    /// The value of the custom field.
    required String value,
  }) = _CourseCustomFieldModel;

  factory CourseCustomFieldModel.fromJson(Map<String, dynamic> json) =>
      _$CourseCustomFieldModelFromJson(json);
}

@freezed
class SearchedCourseFilterModel with _$SearchedCourseFilterModel {
  const factory SearchedCourseFilterModel({
    /// Filter plugin name.
    required String filter,

    /// Filter state: 1 for on, -1 for off, 0 if inherit.
    required int localstate,

    /// 1 or 0 to use when localstate is set to inherit.
    required int inheritedstate,
  }) = _SearchedCourseFilterModel;

  factory SearchedCourseFilterModel.fromJson(Map<String, dynamic> json) =>
      _$SearchedCourseFilterModelFromJson(json);
}

@freezed
class SearchedCourseContactModel with _$SearchedCourseContactModel {
  const factory SearchedCourseContactModel({
    /// Contact user id.
    required int id,

    /// Contact user fullname.
    required String fullname,
  }) = _SearchedCourseContactModel;

  factory SearchedCourseContactModel.fromJson(Map<String, dynamic> json) =>
      _$SearchedCourseContactModelFromJson(json);
}
