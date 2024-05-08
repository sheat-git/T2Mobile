import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:t2mobile/services/cache_database/cache_database.dart';
import 'package:t2mobile/services/cache_database/models/format.dart';
import 'package:t2mobile/services/moodle_api/models/file.dart';
import 'package:t2mobile/services/moodle_api/models/warning.dart';

part 'submission_status.freezed.dart';
part 'submission_status.g.dart';

/// `AddonModAssignGetSubmissionStatusWSResponse`
@freezed
class SubmissionStatusModel with _$SubmissionStatusModel {
  const SubmissionStatusModel._();

  const factory SubmissionStatusModel({
    /// Grading information.
    SubmissionGradingSummaryModel? gradingsummary,

    /// Last attempt information.
    SubmissionAttemptModel? lastattempt,

    /// Feedback for the last attempt.
    SubmissionFeedbackModel? feedback,

    /// List all the previous attempts did by the user.
    List<SubmissionPreviousAttemptModel>? previousattempts,

    /// @since 4.0. Extra information about assignment.
    SubmissionAssignmentModel? assignmentdata,
    List<WarningModel>? warnings,
  }) = _SubmissionStatusModel;

  factory SubmissionStatusModel.fromJson(Map<String, dynamic> json) =>
      _$SubmissionStatusModelFromJson(json);

  Submission toDb({
    required int assignmentId,
    DateTime? updatedAt,
  }) {
    final editorField = lastattempt?.submission?.plugins
        ?.firstWhereOrNull((p) => p.type == 'onlinetext')
        ?.editorfields
        ?.firstOrNull;
    return Submission(
      assignmentId: assignmentId,
      id: lastattempt?.submission?.id,
      canEdit: lastattempt?.canedit ?? false,
      isSubmitted:
          lastattempt?.submission?.status == SubmissionStatus.submitted,
      modifiedAt: lastattempt?.submission?.timemodified != null
          ? DateTime.fromMillisecondsSinceEpoch(
              lastattempt!.submission!.timemodified * 1000)
          : null,
      onlineText: editorField?.text,
      onlineTextFormat: Format.fromValue(editorField?.format),
      files: lastattempt?.submission?.plugins
              ?.firstWhereOrNull((p) => p.type == 'file')
              ?.fileareas
              ?.firstWhereOrNull((f) => f.area == 'submission_files')
              ?.files
              ?.map((f) => f.toDb())
              .toList() ??
          [],
      updatedAt: updatedAt ?? DateTime.now(),
    );
  }
}

@freezed
class SubmissionAssignmentModel with _$SubmissionAssignmentModel {
  const factory SubmissionAssignmentModel({
    /// Intro and activity attachments.
    SubmissionAssignmentAttachmentsModel? attachments,

    /// Text of activity.
    String? activity,

    /// Format of activity.
    int? activityformat,
  }) = _SubmissionAssignmentModel;

  factory SubmissionAssignmentModel.fromJson(Map<String, dynamic> json) =>
      _$SubmissionAssignmentModelFromJson(json);
}

@freezed
class SubmissionAssignmentAttachmentsModel
    with _$SubmissionAssignmentAttachmentsModel {
  const factory SubmissionAssignmentAttachmentsModel({
    /// Intro attachments files.
    List<FileModel>? intro,

    /// Activity attachments files.
    List<FileModel>? activity,
  }) = _SubmissionAssignmentAttachmentsModel;

  factory SubmissionAssignmentAttachmentsModel.fromJson(
          Map<String, dynamic> json) =>
      _$SubmissionAssignmentAttachmentsModelFromJson(json);
}

/// `AddonModAssignSubmissionGradingSummary`
@freezed
class SubmissionGradingSummaryModel with _$SubmissionGradingSummaryModel {
  const factory SubmissionGradingSummaryModel({
    /// Number of users who can submit.
    required int participantcount,

    /// Number of submissions in draft status.
    required int submissiondraftscount,

    /// Whether submissions are enabled or not.
    required bool submissionsenabled,

    /// Number of submissions in submitted status.
    required int submissionssubmittedcount,

    /// Number of submissions that need grading.
    required int submissionsneedgradingcount,

    /// Whether we need to warn people about groups.
    /// string or bool
    required dynamic warnofungroupedusers,
  }) = _SubmissionGradingSummaryModel;

  factory SubmissionGradingSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$SubmissionGradingSummaryModelFromJson(json);
}

/// `AddonModAssignSubmissionAttempt`
@freezed
class SubmissionAttemptModel with _$SubmissionAttemptModel {
  const factory SubmissionAttemptModel({
    /// Submission info.
    SubmissionModel? submission,

    /// Submission info.
    SubmissionModel? teamsubmission,

    /// The submission group id (for group submissions only).
    int? submissiongroup,

    /// List of users who still need to submit (for group submissions only).
    List<int>? submissiongroupmemberswhoneedtosubmit,

    /// Whether submissions are enabled or not.
    required bool submissionsenabled,

    /// Whether new submissions are locked.
    required bool locked,

    /// Whether the submission is graded.
    required bool graded,

    /// Whether the user can edit the current submission.
    required bool canedit,

    /// Whether the owner of the submission can edit it.
    bool? caneditowner,

    /// Whether the user can submit.
    required bool cansubmit,

    /// Extension due date.
    required int extensionduedate,

    /// Whether blind marking is enabled.
    required bool blindmarking,

    /// Grading status.
    required SubmissionGradingStatus gradingstatus,

    /// User groups in the course.
    required List<int> usergroups,

    /// @since 4.0. Time limit for submission.
    int? timelimit,
  }) = _SubmissionAttemptModel;

  factory SubmissionAttemptModel.fromJson(Map<String, dynamic> json) =>
      _$SubmissionAttemptModelFromJson(json);
}

/// `AddonModAssignGradingStates`
enum SubmissionGradingStatus {
  graded,
  notgraded,
  // Added by App Statuses.
  released, // with ASSIGN_MARKING_WORKFLOW_STATE_RELEASED
  gradedfollowupsubmit,
}

/// `AddonModAssignSubmissionFeedback`
@freezed
class SubmissionFeedbackModel with _$SubmissionFeedbackModel {
  const factory SubmissionFeedbackModel({
    /// Grade information.
    SubmissionGradeModel? grade,

    /// Grade rendered into a format suitable for display.
    required String gradefordisplay,

    /// The date the user was graded.
    required int gradeddate,

    /// Plugins info.
    List<SubmissionPluginModel>? plugins,
  }) = _SubmissionFeedbackModel;

  factory SubmissionFeedbackModel.fromJson(Map<String, dynamic> json) =>
      _$SubmissionFeedbackModelFromJson(json);
}

/// `AddonModAssignSubmissionPreviousAttempt`
@freezed
class SubmissionPreviousAttemptModel with _$SubmissionPreviousAttemptModel {
  const factory SubmissionPreviousAttemptModel({
    /// Attempt number.
    required int attemptnumber,

    /// Submission info.
    SubmissionModel? submission,

    /// Grade information.
    SubmissionGradeModel? grade,

    /// Feedback info.
    List<SubmissionPluginModel>? feedbackplugins,
  }) = _SubmissionPreviousAttemptModel;

  factory SubmissionPreviousAttemptModel.fromJson(Map<String, dynamic> json) =>
      _$SubmissionPreviousAttemptModelFromJson(json);
}

/// `AddonModAssignSubmission`
@freezed
class SubmissionModel with _$SubmissionModel {
  const factory SubmissionModel({
    /// Submission id.
    required int id,

    /// Student id.
    required int userid,

    /// Attempt number.
    required int attemptnumber,

    /// Submission creation time.
    required int timecreated,

    /// Submission last modified time.
    required int timemodified,

    /// Submission status.
    required SubmissionStatus status,

    /// Group id.
    required int groupid,

    /// Assignment id.
    int? assignment,

    /// Latest attempt.
    int? latest,

    /// Plugins.
    List<SubmissionPluginModel>? plugins,

    /// Grading status.
    SubmissionGradingStatus? gradingstatus,

    /// @since 4.0. Submission start time.
    int? timestarted,
  }) = _SubmissionModel;

  factory SubmissionModel.fromJson(Map<String, dynamic> json) =>
      _$SubmissionModelFromJson(json);
}

/// `AddonModAssignSubmissionStatusValues`
enum SubmissionStatus {
  submitted,
  draft,
  @JsonValue('new')
  newly,
  reopened,
  // Added by App Statuses.
  noattempt,
  noonlinesubmissions,
  nosubmission,
  gradedfollowupsubmit,
}

/// `AddonModAssignGrade`
@freezed
class SubmissionGradeModel with _$SubmissionGradeModel {
  const factory SubmissionGradeModel({
    /// Grade id.
    required int id,

    /// Assignment id.
    int? assignment,

    /// Student id.
    required int userid,

    /// Attempt number.
    required int attemptnumber,

    /// Grade creation time.
    required int timecreated,

    /// Grade last modified time.
    required int timemodified,

    /// Grader, -1 if grader is hidden.
    required int grader,

    /// Grade.
    required String grade,

    /// Grade rendered into a format suitable for display.
    String? gradefordisplay,
  }) = _SubmissionGradeModel;

  factory SubmissionGradeModel.fromJson(Map<String, dynamic> json) =>
      _$SubmissionGradeModelFromJson(json);
}

/// `AddonModAssignPlugin`
@freezed
class SubmissionPluginModel with _$SubmissionPluginModel {
  const factory SubmissionPluginModel({
    /// Submission plugin type.
    required String type,

    /// Submission plugin name.
    required String name,

    /// Fileareas.
    List<SubmissionPluginFileAreaModel>? fileareas,

    /// Editorfields.
    List<SubmissionPluginEditorFieldModel>? editorfields,
  }) = _SubmissionPluginModel;

  factory SubmissionPluginModel.fromJson(Map<String, dynamic> json) =>
      _$SubmissionPluginModelFromJson(json);
}

@freezed
class SubmissionPluginFileAreaModel with _$SubmissionPluginFileAreaModel {
  const factory SubmissionPluginFileAreaModel({
    /// File area.
    required String area,

    /// Files.
    List<FileModel>? files,
  }) = _SubmissionPluginFileAreaModel;

  factory SubmissionPluginFileAreaModel.fromJson(Map<String, dynamic> json) =>
      _$SubmissionPluginFileAreaModelFromJson(json);
}

@freezed
class SubmissionPluginEditorFieldModel with _$SubmissionPluginEditorFieldModel {
  const factory SubmissionPluginEditorFieldModel({
    /// Field name.
    required String name,

    /// Field description.
    required String description,

    /// Field value.
    required String text,

    /// Text format (1 = HTML, 0 = MOODLE, 2 = PLAIN or 4 = MARKDOWN).
    required int format,
  }) = _SubmissionPluginEditorFieldModel;

  factory SubmissionPluginEditorFieldModel.fromJson(
          Map<String, dynamic> json) =>
      _$SubmissionPluginEditorFieldModelFromJson(json);
}
