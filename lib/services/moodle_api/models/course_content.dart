import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:t2mobile/services/moodle_api/models/tag.dart';

part 'course_content.freezed.dart';
part 'course_content.g.dart';

/// `CoreCourseGetContentsWSSection`
@freezed
class CourseContentModel with _$CourseContentModel {
  const factory CourseContentModel({
    /// Section ID.
    required int id,

    /// Section name.
    required String name,

    /// Is the section visible.
    int? visible,

    /// Section description.
    required String summary,

    /// Summary format (1 = HTML, 0 = MOODLE, 2 = PLAIN or 4 = MARKDOWN).
    required int summaryformat,

    /// Section number inside the course.
    int? section,

    /// Whether is a section hidden in the course format.
    int? hiddenbynumsections,

    /// Is the section visible for the user?.
    bool? uservisible,

    /// Availability information.
    String? availabilityinfo,

    /// List of module.
    required List<CourseContentModuleModel> modules,
  }) = _CourseContentModel;

  factory CourseContentModel.fromJson(Map<String, dynamic> json) =>
      _$CourseContentModelFromJson(json);
}

/// `CoreCourseGetContentsWSModule`
@freezed
class CourseContentModuleModel with _$CourseContentModuleModel {
  const factory CourseContentModuleModel({
    /// Activity id.
    required int id,

    /// Activity url.
    String? url,

    /// Activity module name.
    required String name,

    /// Instance id. Cannot be undefined.
    required int instance,

    /// @since 3.10. Activity context id.
    int? contextid,

    /// Activity description.
    String? description,

    /// Is the module visible. Cannot be undefined.
    required int visible,

    /// Is the module visible for the user?. Cannot be undefined.
    required bool uservisible,

    /// Availability information.
    String? availabilityinfo,

    /// Is the module visible on course page. Cannot be undefined.
    required int visibleoncoursepage,

    /// Activity icon url.
    required String modicon,

    /// Activity module type.
    required String modname,

    /// @since 4.4 The module purpose.
    String? purpose,

    /// @since 4.4 Whether the module is branded or not.
    bool? branded,

    /// Activity module plural name.
    required String modplural,

    /// Module availability settings.
    String? availability,

    /// Number of indentation in the site.
    required int indent,

    /// Onclick action.
    String? onclick,

    /// After link info to be displayed.
    String? afterlink,

    /// Custom data (JSON encoded).
    String? customdata,

    /// Whether the module has no view page.
    bool? noviewlink,

    /// Type of completion tracking: 0 means none, 1 manual, 2 automatic.
    CourseContentModuleCompletionTracking? completion,

    /// Module completion data.
    CourseContentModuleCompletionModel? completiondata,

    /// Module contents.
    List<CourseContentModuleFileModel>? contents,

    /// @since 4.3. Group mode value.
    int? groupmode,

    /// @since 4.0 The download content value.
    int? downloadcontent,

    /// @since 3.11. Activity dates.
    List<CourseContentModuleDateModel>? dates,

    /// @since v3.7.6 Contents summary information.
    CourseContentModuleContentsInfoModel? contentsinfo,
  }) = _CourseContentModuleModel;

  factory CourseContentModuleModel.fromJson(Map<String, dynamic> json) =>
      _$CourseContentModuleModelFromJson(json);
}

/// `CoreCourseModuleCompletionTracking`
enum CourseContentModuleCompletionTracking {
  /// `COMPLETION_TRACKING_NONE`
  @JsonValue(0)
  none,

  /// `COMPLETION_TRACKING_MANUAL`
  @JsonValue(1)
  manual,

  /// `COMPLETION_TRACKING_AUTOMATIC`
  @JsonValue(2)
  automatic,
}

@freezed
class CourseContentModuleDateModel with _$CourseContentModuleDateModel {
  const factory CourseContentModuleDateModel({
    required String label,
    required int timestamp,
  }) = _CourseContentModuleDateModel;

  factory CourseContentModuleDateModel.fromJson(Map<String, dynamic> json) =>
      _$CourseContentModuleDateModelFromJson(json);
}

@freezed
class CourseContentModuleContentsInfoModel
    with _$CourseContentModuleContentsInfoModel {
  const factory CourseContentModuleContentsInfoModel({
    required int filescount,
    required int filessize,
    required int lastmodified,
    required List<String> mimetypes,
  }) = _CourseContentModuleContentsInfoModel;

  factory CourseContentModuleContentsInfoModel.fromJson(
          Map<String, dynamic> json) =>
      _$CourseContentModuleContentsInfoModelFromJson(json);
}

/// `CoreCourseModuleWSCompletionData`
@freezed
class CourseContentModuleCompletionModel
    with _$CourseContentModuleCompletionModel {
  const factory CourseContentModuleCompletionModel({
    /// Completion state value.
    required CourseContentModuleCompletionStatus state,

    /// Timestamp for completion status.
    required int timecompleted,

    /// The user id who has overridden the status.
    int? overrideby,

    /// Whether the completion status affects the availability of another activity.
    bool? valueused,

    /// @since 3.11. Whether this activity module has completion enabled.
    bool? hascompletion,

    /// @since 3.11. Whether this activity module instance tracks completion automatically.
    bool? isautomatic,

    /// @since 3.11. Whether completion is being tracked for this user.
    bool? istrackeduser,

    /// @since 3.11. Whether this activity is visible to the user.
    bool? uservisible,

    /// @since 3.11. An array of completion details.
    List<CourseContentModuleCompletionRuleModel>? details,

    /// @since 4.4. Whether the overall completion state of this course module should be marked as complete or not.
    bool? isoverallcomplete,
  }) = _CourseContentModuleCompletionModel;

  factory CourseContentModuleCompletionModel.fromJson(
          Map<String, dynamic> json) =>
      _$CourseContentModuleCompletionModelFromJson(json);
}

/// `CoreCourseModuleCompletionStatus`
enum CourseContentModuleCompletionStatus {
  /// `COMPLETION_INCOMPLETE`
  @JsonValue(0)
  incomplete,

  /// `COMPLETION_COMPLETE`
  @JsonValue(1)
  complete,

  /// `COMPLETION_COMPLETE_PASS`
  @JsonValue(2)
  completePass,

  /// `COMPLETION_COMPLETE_FAIL`
  @JsonValue(3)
  completeFail,
}

/// `CoreCourseModuleWSRuleDetails`
@freezed
class CourseContentModuleCompletionRuleModel
    with _$CourseContentModuleCompletionRuleModel {
  const factory CourseContentModuleCompletionRuleModel({
    /// Rule name.
    required String rulename,

    /// Rule value.
    required CourseContentModuleCompletionRuleValueModel rulevalue,
  }) = _CourseContentModuleCompletionRuleModel;

  factory CourseContentModuleCompletionRuleModel.fromJson(
          Map<String, dynamic> json) =>
      _$CourseContentModuleCompletionRuleModelFromJson(json);
}

@freezed
class CourseContentModuleCompletionRuleValueModel
    with _$CourseContentModuleCompletionRuleValueModel {
  const factory CourseContentModuleCompletionRuleValueModel({
    /// Completion status.
    required int status,

    /// Completion description.
    required String description,
  }) = _CourseContentModuleCompletionRuleValueModel;

  factory CourseContentModuleCompletionRuleValueModel.fromJson(
          Map<String, dynamic> json) =>
      _$CourseContentModuleCompletionRuleValueModelFromJson(json);
}

/// `CoreCourseModuleContentFile`
/// 一部誤っていたので修正している
@freezed
class CourseContentModuleFileModel with _$CourseContentModuleFileModel {
  const factory CourseContentModuleFileModel({
    /// Filename.
    required String filename,

    /// Filepath.
    String? filepath,

    /// Filesize.
    required int filesize,

    /// Downloadable file url.
    required String fileurl,

    /// Time modified.
    required int timemodified,

    /// File mime type.
    String? mimetype,

    /// Whether is an external file.
    bool? isexternalfile,

    /// The repository type for external files.
    String? repositorytype,

    /// A file or a folder or external link.
    required String type,

    /// Raw content, will be used when type is content.
    String? content,

    /// Time created.
    int? timecreated,

    /// Content sort order.
    int? sortorder,

    /// User who added this content to moodle.
    int? userid,

    /// Content owner.
    String? author,

    /// Content license.
    String? license,

    /// Tags.
    List<TagModel>? tags,
  }) = _CourseContentModuleFileModel;

  factory CourseContentModuleFileModel.fromJson(Map<String, dynamic> json) =>
      _$CourseContentModuleFileModelFromJson(json);
}
