import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:t2mobile/services/moodle_api/models/course.dart';
import 'package:t2mobile/services/moodle_api/models/file.dart';

part 'enrolled_course.freezed.dart';
part 'enrolled_course.g.dart';

/// `CoreEnrolledCourseData & { category?: number; }`
@freezed
class EnrolledCourseModel with _$EnrolledCourseModel, CourseModel {
  const EnrolledCourseModel._();

  const factory EnrolledCourseModel({
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

    /// Id number of course.
    String? idnumber,

    /// 1 means visible, 0 means not yet visible course.
    int? visible,

    /// Course format: weeks, topics, social, site.
    String? format,

    /// True if grades are shown, otherwise false.
    bool? showgrades,

    /// Forced course language.
    String? lang,

    /// True if completion is enabled, otherwise false.
    bool? enablecompletion,

    /// Timestamp when the course start.
    int? startdate,

    /// Timestamp when the course end.
    int? enddate,

    /// Number of enrolled users in this course.
    int? enrolledusercount,

    /// If completion criteria is set.
    bool? completionhascriteria,

    /// If the user is completion tracked.
    bool? completionusertracked,

    /// Progress percentage.
    int? progress,

    /// Whether the course is completed.
    bool? completed,

    /// Course section marker.
    int? marker,

    /// Last access to the course (timestamp).
    int? lastaccess,

    /// If the user marked this course a favourite.
    bool? isfavourite,

    /// If the user hide the course from the dashboard.
    bool? hidden,

    /// List of overview files.
    List<FileModel>? overviewfiles,

    /// Whether the activity dates are shown or not.
    bool? showactivitydates,

    /// Whether the activity completion conditions are shown or not.
    bool? showcompletionconditions,

    /// Last time course settings were updated (timestamp).
    int? timemodified,

    /// Course category id.
    int? category,
  }) = _EnrolledCourseModel;

  factory EnrolledCourseModel.fromJson(Map<String, dynamic> json) =>
      _$EnrolledCourseModelFromJson(json);
}
