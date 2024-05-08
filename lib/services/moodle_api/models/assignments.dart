import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:t2mobile/services/moodle_api/models/file.dart';
import 'package:t2mobile/services/moodle_api/models/warning.dart';

part 'assignments.freezed.dart';
part 'assignments.g.dart';

/// `AddonModAssignGetAssignmentsWSResponse`
@freezed
class AssignmentsModel with _$AssignmentsModel {
  const factory AssignmentsModel({
    /// List of courses.
    required List<AssignmentCourseModel> courses,
    List<WarningModel>? warnings,
  }) = _AssignmentsModel;

  factory AssignmentsModel.fromJson(Map<String, dynamic> json) =>
      _$AssignmentsModelFromJson(json);
}

@freezed
class AssignmentCourseModel with _$AssignmentCourseModel {
  const factory AssignmentCourseModel({
    /// Course id.
    required int id,

    /// Course full name.
    required String fullname,

    /// Course short name.
    required String shortname,

    /// Last time modified.
    required int timemodified,

    /// Assignment info.
    required List<AssignmentModel> assignments,
  }) = _AssignmentCourseModel;

  factory AssignmentCourseModel.fromJson(Map<String, dynamic> json) =>
      _$AssignmentCourseModelFromJson(json);
}

/// `AddonModAssignAssign`
@freezed
class AssignmentModel with _$AssignmentModel {
  const factory AssignmentModel({
    /// Assignment id.
    required int id,

    /// Course module id.
    required int cmid,

    /// Course id.
    required int course,

    /// Assignment name.
    required String name,

    /// No submissions.
    required int nosubmissions,

    /// Submissions drafts.
    required int submissiondrafts,

    /// Send notifications.
    required int sendnotifications,

    /// Send late notifications.
    required int sendlatenotifications,

    /// Send student notifications (default).
    required int sendstudentnotifications,

    /// Assignment due date.
    required int duedate,

    /// Allow submissions from date.
    required int allowsubmissionsfromdate,

    /// Grade type.
    required int grade,

    /// Last time assignment was modified.
    required int timemodified,

    /// If enabled, set activity as complete following submission.
    required int completionsubmit,

    /// Date after which submission is not accepted without an extension.
    required int cutoffdate,

    /// The expected date for marking the submissions.
    int? gradingduedate,

    /// If enabled, students submit as a team.
    required int teamsubmission,

    /// If enabled, all team members must submit.
    required int requireallteammemberssubmit,

    /// The grouping id for the team submission groups.
    required int teamsubmissiongroupingid,

    /// If enabled, hide identities until reveal identities actioned.
    required int blindmarking,

    /// @since 3.7. If enabled, hide grader to student.
    int? hidegrader,

    /// Show identities for a blind marking assignment.
    required int revealidentities,

    /// Method used to control opening new attempts.
    required AssignmentAttemptReopenMethod attemptreopenmethod,

    /// Maximum number of attempts allowed.
    required int maxattempts,

    /// Enable marking workflow.
    required int markingworkflow,

    /// Enable marking allocation.
    required int markingallocation,

    /// Student must accept submission statement.
    required int requiresubmissionstatement,

    /// Prevent submission not in group.
    int? preventsubmissionnotingroup,

    /// Submission statement formatted.
    String? submissionstatement,

    /// Submissionstatement format (1 = HTML, 0 = MOODLE, 2 = PLAIN or 4 = MARKDOWN).
    int? submissionstatementformat,

    /// Configuration settings.
    required List<AssignmentConfigModel> configs,

    /// Assignment intro, not always returned because it depends on the activity configuration.
    String? intro,

    /// Intro format (1 = HTML, 0 = MOODLE, 2 = PLAIN or 4 = MARKDOWN).
    int? introformat,

    /// Intro files.
    List<FileModel>? introfiles,

    /// Intro attachments.
    List<FileModel>? introattachments,

    /// @since 4.0. Description of activity.
    String? activity,

    /// @since 4.0. Format of activity.
    int? activityformat,

    /// @since 4.0. Files from activity field.
    List<FileModel>? activityattachments,

    /// @since 4.0. Time limit to complete assignment.
    int? timelimit,

    /// @since 4.0. Flag to only show files during submission.
    int? submissionattachments,
  }) = _AssignmentModel;

  factory AssignmentModel.fromJson(Map<String, dynamic> json) =>
      _$AssignmentModelFromJson(json);
}

/// `AddonModAssignAttemptReopenMethodValues`
enum AssignmentAttemptReopenMethod {
  none,
  manual,
  untilpass,
}

/// `AddonModAssignConfig`
@freezed
class AssignmentConfigModel with _$AssignmentConfigModel {
  const factory AssignmentConfigModel({
    /// Assign_plugin_config id.
    int? id,

    /// Assignment id.
    int? assignment,

    /// Plugin.
    required String plugin,

    /// Subtype.
    required String subtype,

    /// Name.
    required String name,

    /// Value.
    required String value,
  }) = _AssignmentConfigModel;

  factory AssignmentConfigModel.fromJson(Map<String, dynamic> json) =>
      _$AssignmentConfigModelFromJson(json);
}
