// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assignments.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AssignmentsModel _$AssignmentsModelFromJson(Map<String, dynamic> json) {
  return _AssignmentsModel.fromJson(json);
}

/// @nodoc
mixin _$AssignmentsModel {
  /// List of courses.
  List<AssignmentCourseModel> get courses => throw _privateConstructorUsedError;
  List<WarningModel>? get warnings => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssignmentsModelCopyWith<AssignmentsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssignmentsModelCopyWith<$Res> {
  factory $AssignmentsModelCopyWith(
          AssignmentsModel value, $Res Function(AssignmentsModel) then) =
      _$AssignmentsModelCopyWithImpl<$Res, AssignmentsModel>;
  @useResult
  $Res call(
      {List<AssignmentCourseModel> courses, List<WarningModel>? warnings});
}

/// @nodoc
class _$AssignmentsModelCopyWithImpl<$Res, $Val extends AssignmentsModel>
    implements $AssignmentsModelCopyWith<$Res> {
  _$AssignmentsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courses = null,
    Object? warnings = freezed,
  }) {
    return _then(_value.copyWith(
      courses: null == courses
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<AssignmentCourseModel>,
      warnings: freezed == warnings
          ? _value.warnings
          : warnings // ignore: cast_nullable_to_non_nullable
              as List<WarningModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AssignmentsModelImplCopyWith<$Res>
    implements $AssignmentsModelCopyWith<$Res> {
  factory _$$AssignmentsModelImplCopyWith(_$AssignmentsModelImpl value,
          $Res Function(_$AssignmentsModelImpl) then) =
      __$$AssignmentsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<AssignmentCourseModel> courses, List<WarningModel>? warnings});
}

/// @nodoc
class __$$AssignmentsModelImplCopyWithImpl<$Res>
    extends _$AssignmentsModelCopyWithImpl<$Res, _$AssignmentsModelImpl>
    implements _$$AssignmentsModelImplCopyWith<$Res> {
  __$$AssignmentsModelImplCopyWithImpl(_$AssignmentsModelImpl _value,
      $Res Function(_$AssignmentsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courses = null,
    Object? warnings = freezed,
  }) {
    return _then(_$AssignmentsModelImpl(
      courses: null == courses
          ? _value._courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<AssignmentCourseModel>,
      warnings: freezed == warnings
          ? _value._warnings
          : warnings // ignore: cast_nullable_to_non_nullable
              as List<WarningModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AssignmentsModelImpl implements _AssignmentsModel {
  const _$AssignmentsModelImpl(
      {required final List<AssignmentCourseModel> courses,
      final List<WarningModel>? warnings})
      : _courses = courses,
        _warnings = warnings;

  factory _$AssignmentsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AssignmentsModelImplFromJson(json);

  /// List of courses.
  final List<AssignmentCourseModel> _courses;

  /// List of courses.
  @override
  List<AssignmentCourseModel> get courses {
    if (_courses is EqualUnmodifiableListView) return _courses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_courses);
  }

  final List<WarningModel>? _warnings;
  @override
  List<WarningModel>? get warnings {
    final value = _warnings;
    if (value == null) return null;
    if (_warnings is EqualUnmodifiableListView) return _warnings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AssignmentsModel(courses: $courses, warnings: $warnings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssignmentsModelImpl &&
            const DeepCollectionEquality().equals(other._courses, _courses) &&
            const DeepCollectionEquality().equals(other._warnings, _warnings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_courses),
      const DeepCollectionEquality().hash(_warnings));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AssignmentsModelImplCopyWith<_$AssignmentsModelImpl> get copyWith =>
      __$$AssignmentsModelImplCopyWithImpl<_$AssignmentsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AssignmentsModelImplToJson(
      this,
    );
  }
}

abstract class _AssignmentsModel implements AssignmentsModel {
  const factory _AssignmentsModel(
      {required final List<AssignmentCourseModel> courses,
      final List<WarningModel>? warnings}) = _$AssignmentsModelImpl;

  factory _AssignmentsModel.fromJson(Map<String, dynamic> json) =
      _$AssignmentsModelImpl.fromJson;

  @override

  /// List of courses.
  List<AssignmentCourseModel> get courses;
  @override
  List<WarningModel>? get warnings;
  @override
  @JsonKey(ignore: true)
  _$$AssignmentsModelImplCopyWith<_$AssignmentsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AssignmentCourseModel _$AssignmentCourseModelFromJson(
    Map<String, dynamic> json) {
  return _AssignmentCourseModel.fromJson(json);
}

/// @nodoc
mixin _$AssignmentCourseModel {
  /// Course id.
  int get id => throw _privateConstructorUsedError;

  /// Course full name.
  String get fullname => throw _privateConstructorUsedError;

  /// Course short name.
  String get shortname => throw _privateConstructorUsedError;

  /// Last time modified.
  int get timemodified => throw _privateConstructorUsedError;

  /// Assignment info.
  List<AssignmentModel> get assignments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssignmentCourseModelCopyWith<AssignmentCourseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssignmentCourseModelCopyWith<$Res> {
  factory $AssignmentCourseModelCopyWith(AssignmentCourseModel value,
          $Res Function(AssignmentCourseModel) then) =
      _$AssignmentCourseModelCopyWithImpl<$Res, AssignmentCourseModel>;
  @useResult
  $Res call(
      {int id,
      String fullname,
      String shortname,
      int timemodified,
      List<AssignmentModel> assignments});
}

/// @nodoc
class _$AssignmentCourseModelCopyWithImpl<$Res,
        $Val extends AssignmentCourseModel>
    implements $AssignmentCourseModelCopyWith<$Res> {
  _$AssignmentCourseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullname = null,
    Object? shortname = null,
    Object? timemodified = null,
    Object? assignments = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fullname: null == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
      shortname: null == shortname
          ? _value.shortname
          : shortname // ignore: cast_nullable_to_non_nullable
              as String,
      timemodified: null == timemodified
          ? _value.timemodified
          : timemodified // ignore: cast_nullable_to_non_nullable
              as int,
      assignments: null == assignments
          ? _value.assignments
          : assignments // ignore: cast_nullable_to_non_nullable
              as List<AssignmentModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AssignmentCourseModelImplCopyWith<$Res>
    implements $AssignmentCourseModelCopyWith<$Res> {
  factory _$$AssignmentCourseModelImplCopyWith(
          _$AssignmentCourseModelImpl value,
          $Res Function(_$AssignmentCourseModelImpl) then) =
      __$$AssignmentCourseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String fullname,
      String shortname,
      int timemodified,
      List<AssignmentModel> assignments});
}

/// @nodoc
class __$$AssignmentCourseModelImplCopyWithImpl<$Res>
    extends _$AssignmentCourseModelCopyWithImpl<$Res,
        _$AssignmentCourseModelImpl>
    implements _$$AssignmentCourseModelImplCopyWith<$Res> {
  __$$AssignmentCourseModelImplCopyWithImpl(_$AssignmentCourseModelImpl _value,
      $Res Function(_$AssignmentCourseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullname = null,
    Object? shortname = null,
    Object? timemodified = null,
    Object? assignments = null,
  }) {
    return _then(_$AssignmentCourseModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fullname: null == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
      shortname: null == shortname
          ? _value.shortname
          : shortname // ignore: cast_nullable_to_non_nullable
              as String,
      timemodified: null == timemodified
          ? _value.timemodified
          : timemodified // ignore: cast_nullable_to_non_nullable
              as int,
      assignments: null == assignments
          ? _value._assignments
          : assignments // ignore: cast_nullable_to_non_nullable
              as List<AssignmentModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AssignmentCourseModelImpl implements _AssignmentCourseModel {
  const _$AssignmentCourseModelImpl(
      {required this.id,
      required this.fullname,
      required this.shortname,
      required this.timemodified,
      required final List<AssignmentModel> assignments})
      : _assignments = assignments;

  factory _$AssignmentCourseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AssignmentCourseModelImplFromJson(json);

  /// Course id.
  @override
  final int id;

  /// Course full name.
  @override
  final String fullname;

  /// Course short name.
  @override
  final String shortname;

  /// Last time modified.
  @override
  final int timemodified;

  /// Assignment info.
  final List<AssignmentModel> _assignments;

  /// Assignment info.
  @override
  List<AssignmentModel> get assignments {
    if (_assignments is EqualUnmodifiableListView) return _assignments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_assignments);
  }

  @override
  String toString() {
    return 'AssignmentCourseModel(id: $id, fullname: $fullname, shortname: $shortname, timemodified: $timemodified, assignments: $assignments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssignmentCourseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullname, fullname) ||
                other.fullname == fullname) &&
            (identical(other.shortname, shortname) ||
                other.shortname == shortname) &&
            (identical(other.timemodified, timemodified) ||
                other.timemodified == timemodified) &&
            const DeepCollectionEquality()
                .equals(other._assignments, _assignments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, fullname, shortname,
      timemodified, const DeepCollectionEquality().hash(_assignments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AssignmentCourseModelImplCopyWith<_$AssignmentCourseModelImpl>
      get copyWith => __$$AssignmentCourseModelImplCopyWithImpl<
          _$AssignmentCourseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AssignmentCourseModelImplToJson(
      this,
    );
  }
}

abstract class _AssignmentCourseModel implements AssignmentCourseModel {
  const factory _AssignmentCourseModel(
          {required final int id,
          required final String fullname,
          required final String shortname,
          required final int timemodified,
          required final List<AssignmentModel> assignments}) =
      _$AssignmentCourseModelImpl;

  factory _AssignmentCourseModel.fromJson(Map<String, dynamic> json) =
      _$AssignmentCourseModelImpl.fromJson;

  @override

  /// Course id.
  int get id;
  @override

  /// Course full name.
  String get fullname;
  @override

  /// Course short name.
  String get shortname;
  @override

  /// Last time modified.
  int get timemodified;
  @override

  /// Assignment info.
  List<AssignmentModel> get assignments;
  @override
  @JsonKey(ignore: true)
  _$$AssignmentCourseModelImplCopyWith<_$AssignmentCourseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AssignmentModel _$AssignmentModelFromJson(Map<String, dynamic> json) {
  return _AssignmentModel.fromJson(json);
}

/// @nodoc
mixin _$AssignmentModel {
  /// Assignment id.
  int get id => throw _privateConstructorUsedError;

  /// Course module id.
  int get cmid => throw _privateConstructorUsedError;

  /// Course id.
  int get course => throw _privateConstructorUsedError;

  /// Assignment name.
  String get name => throw _privateConstructorUsedError;

  /// No submissions.
  int get nosubmissions => throw _privateConstructorUsedError;

  /// Submissions drafts.
  int get submissiondrafts => throw _privateConstructorUsedError;

  /// Send notifications.
  int get sendnotifications => throw _privateConstructorUsedError;

  /// Send late notifications.
  int get sendlatenotifications => throw _privateConstructorUsedError;

  /// Send student notifications (default).
  int get sendstudentnotifications => throw _privateConstructorUsedError;

  /// Assignment due date.
  int get duedate => throw _privateConstructorUsedError;

  /// Allow submissions from date.
  int get allowsubmissionsfromdate => throw _privateConstructorUsedError;

  /// Grade type.
  int get grade => throw _privateConstructorUsedError;

  /// Last time assignment was modified.
  int get timemodified => throw _privateConstructorUsedError;

  /// If enabled, set activity as complete following submission.
  int get completionsubmit => throw _privateConstructorUsedError;

  /// Date after which submission is not accepted without an extension.
  int get cutoffdate => throw _privateConstructorUsedError;

  /// The expected date for marking the submissions.
  int? get gradingduedate => throw _privateConstructorUsedError;

  /// If enabled, students submit as a team.
  int get teamsubmission => throw _privateConstructorUsedError;

  /// If enabled, all team members must submit.
  int get requireallteammemberssubmit => throw _privateConstructorUsedError;

  /// The grouping id for the team submission groups.
  int get teamsubmissiongroupingid => throw _privateConstructorUsedError;

  /// If enabled, hide identities until reveal identities actioned.
  int get blindmarking => throw _privateConstructorUsedError;

  /// @since 3.7. If enabled, hide grader to student.
  int? get hidegrader => throw _privateConstructorUsedError;

  /// Show identities for a blind marking assignment.
  int get revealidentities => throw _privateConstructorUsedError;

  /// Method used to control opening new attempts.
  AssignmentAttemptReopenMethod get attemptreopenmethod =>
      throw _privateConstructorUsedError;

  /// Maximum number of attempts allowed.
  int get maxattempts => throw _privateConstructorUsedError;

  /// Enable marking workflow.
  int get markingworkflow => throw _privateConstructorUsedError;

  /// Enable marking allocation.
  int get markingallocation => throw _privateConstructorUsedError;

  /// Student must accept submission statement.
  int get requiresubmissionstatement => throw _privateConstructorUsedError;

  /// Prevent submission not in group.
  int? get preventsubmissionnotingroup => throw _privateConstructorUsedError;

  /// Submission statement formatted.
  String? get submissionstatement => throw _privateConstructorUsedError;

  /// Submissionstatement format (1 = HTML, 0 = MOODLE, 2 = PLAIN or 4 = MARKDOWN).
  int? get submissionstatementformat => throw _privateConstructorUsedError;

  /// Configuration settings.
  List<AssignmentConfigModel> get configs => throw _privateConstructorUsedError;

  /// Assignment intro, not always returned because it depends on the activity configuration.
  String? get intro => throw _privateConstructorUsedError;

  /// Intro format (1 = HTML, 0 = MOODLE, 2 = PLAIN or 4 = MARKDOWN).
  int? get introformat => throw _privateConstructorUsedError;

  /// Intro files.
  List<FileModel>? get introfiles => throw _privateConstructorUsedError;

  /// Intro attachments.
  List<FileModel>? get introattachments => throw _privateConstructorUsedError;

  /// @since 4.0. Description of activity.
  String? get activity => throw _privateConstructorUsedError;

  /// @since 4.0. Format of activity.
  int? get activityformat => throw _privateConstructorUsedError;

  /// @since 4.0. Files from activity field.
  List<FileModel>? get activityattachments =>
      throw _privateConstructorUsedError;

  /// @since 4.0. Time limit to complete assignment.
  int? get timelimit => throw _privateConstructorUsedError;

  /// @since 4.0. Flag to only show files during submission.
  int? get submissionattachments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssignmentModelCopyWith<AssignmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssignmentModelCopyWith<$Res> {
  factory $AssignmentModelCopyWith(
          AssignmentModel value, $Res Function(AssignmentModel) then) =
      _$AssignmentModelCopyWithImpl<$Res, AssignmentModel>;
  @useResult
  $Res call(
      {int id,
      int cmid,
      int course,
      String name,
      int nosubmissions,
      int submissiondrafts,
      int sendnotifications,
      int sendlatenotifications,
      int sendstudentnotifications,
      int duedate,
      int allowsubmissionsfromdate,
      int grade,
      int timemodified,
      int completionsubmit,
      int cutoffdate,
      int? gradingduedate,
      int teamsubmission,
      int requireallteammemberssubmit,
      int teamsubmissiongroupingid,
      int blindmarking,
      int? hidegrader,
      int revealidentities,
      AssignmentAttemptReopenMethod attemptreopenmethod,
      int maxattempts,
      int markingworkflow,
      int markingallocation,
      int requiresubmissionstatement,
      int? preventsubmissionnotingroup,
      String? submissionstatement,
      int? submissionstatementformat,
      List<AssignmentConfigModel> configs,
      String? intro,
      int? introformat,
      List<FileModel>? introfiles,
      List<FileModel>? introattachments,
      String? activity,
      int? activityformat,
      List<FileModel>? activityattachments,
      int? timelimit,
      int? submissionattachments});
}

/// @nodoc
class _$AssignmentModelCopyWithImpl<$Res, $Val extends AssignmentModel>
    implements $AssignmentModelCopyWith<$Res> {
  _$AssignmentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cmid = null,
    Object? course = null,
    Object? name = null,
    Object? nosubmissions = null,
    Object? submissiondrafts = null,
    Object? sendnotifications = null,
    Object? sendlatenotifications = null,
    Object? sendstudentnotifications = null,
    Object? duedate = null,
    Object? allowsubmissionsfromdate = null,
    Object? grade = null,
    Object? timemodified = null,
    Object? completionsubmit = null,
    Object? cutoffdate = null,
    Object? gradingduedate = freezed,
    Object? teamsubmission = null,
    Object? requireallteammemberssubmit = null,
    Object? teamsubmissiongroupingid = null,
    Object? blindmarking = null,
    Object? hidegrader = freezed,
    Object? revealidentities = null,
    Object? attemptreopenmethod = null,
    Object? maxattempts = null,
    Object? markingworkflow = null,
    Object? markingallocation = null,
    Object? requiresubmissionstatement = null,
    Object? preventsubmissionnotingroup = freezed,
    Object? submissionstatement = freezed,
    Object? submissionstatementformat = freezed,
    Object? configs = null,
    Object? intro = freezed,
    Object? introformat = freezed,
    Object? introfiles = freezed,
    Object? introattachments = freezed,
    Object? activity = freezed,
    Object? activityformat = freezed,
    Object? activityattachments = freezed,
    Object? timelimit = freezed,
    Object? submissionattachments = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      cmid: null == cmid
          ? _value.cmid
          : cmid // ignore: cast_nullable_to_non_nullable
              as int,
      course: null == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nosubmissions: null == nosubmissions
          ? _value.nosubmissions
          : nosubmissions // ignore: cast_nullable_to_non_nullable
              as int,
      submissiondrafts: null == submissiondrafts
          ? _value.submissiondrafts
          : submissiondrafts // ignore: cast_nullable_to_non_nullable
              as int,
      sendnotifications: null == sendnotifications
          ? _value.sendnotifications
          : sendnotifications // ignore: cast_nullable_to_non_nullable
              as int,
      sendlatenotifications: null == sendlatenotifications
          ? _value.sendlatenotifications
          : sendlatenotifications // ignore: cast_nullable_to_non_nullable
              as int,
      sendstudentnotifications: null == sendstudentnotifications
          ? _value.sendstudentnotifications
          : sendstudentnotifications // ignore: cast_nullable_to_non_nullable
              as int,
      duedate: null == duedate
          ? _value.duedate
          : duedate // ignore: cast_nullable_to_non_nullable
              as int,
      allowsubmissionsfromdate: null == allowsubmissionsfromdate
          ? _value.allowsubmissionsfromdate
          : allowsubmissionsfromdate // ignore: cast_nullable_to_non_nullable
              as int,
      grade: null == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as int,
      timemodified: null == timemodified
          ? _value.timemodified
          : timemodified // ignore: cast_nullable_to_non_nullable
              as int,
      completionsubmit: null == completionsubmit
          ? _value.completionsubmit
          : completionsubmit // ignore: cast_nullable_to_non_nullable
              as int,
      cutoffdate: null == cutoffdate
          ? _value.cutoffdate
          : cutoffdate // ignore: cast_nullable_to_non_nullable
              as int,
      gradingduedate: freezed == gradingduedate
          ? _value.gradingduedate
          : gradingduedate // ignore: cast_nullable_to_non_nullable
              as int?,
      teamsubmission: null == teamsubmission
          ? _value.teamsubmission
          : teamsubmission // ignore: cast_nullable_to_non_nullable
              as int,
      requireallteammemberssubmit: null == requireallteammemberssubmit
          ? _value.requireallteammemberssubmit
          : requireallteammemberssubmit // ignore: cast_nullable_to_non_nullable
              as int,
      teamsubmissiongroupingid: null == teamsubmissiongroupingid
          ? _value.teamsubmissiongroupingid
          : teamsubmissiongroupingid // ignore: cast_nullable_to_non_nullable
              as int,
      blindmarking: null == blindmarking
          ? _value.blindmarking
          : blindmarking // ignore: cast_nullable_to_non_nullable
              as int,
      hidegrader: freezed == hidegrader
          ? _value.hidegrader
          : hidegrader // ignore: cast_nullable_to_non_nullable
              as int?,
      revealidentities: null == revealidentities
          ? _value.revealidentities
          : revealidentities // ignore: cast_nullable_to_non_nullable
              as int,
      attemptreopenmethod: null == attemptreopenmethod
          ? _value.attemptreopenmethod
          : attemptreopenmethod // ignore: cast_nullable_to_non_nullable
              as AssignmentAttemptReopenMethod,
      maxattempts: null == maxattempts
          ? _value.maxattempts
          : maxattempts // ignore: cast_nullable_to_non_nullable
              as int,
      markingworkflow: null == markingworkflow
          ? _value.markingworkflow
          : markingworkflow // ignore: cast_nullable_to_non_nullable
              as int,
      markingallocation: null == markingallocation
          ? _value.markingallocation
          : markingallocation // ignore: cast_nullable_to_non_nullable
              as int,
      requiresubmissionstatement: null == requiresubmissionstatement
          ? _value.requiresubmissionstatement
          : requiresubmissionstatement // ignore: cast_nullable_to_non_nullable
              as int,
      preventsubmissionnotingroup: freezed == preventsubmissionnotingroup
          ? _value.preventsubmissionnotingroup
          : preventsubmissionnotingroup // ignore: cast_nullable_to_non_nullable
              as int?,
      submissionstatement: freezed == submissionstatement
          ? _value.submissionstatement
          : submissionstatement // ignore: cast_nullable_to_non_nullable
              as String?,
      submissionstatementformat: freezed == submissionstatementformat
          ? _value.submissionstatementformat
          : submissionstatementformat // ignore: cast_nullable_to_non_nullable
              as int?,
      configs: null == configs
          ? _value.configs
          : configs // ignore: cast_nullable_to_non_nullable
              as List<AssignmentConfigModel>,
      intro: freezed == intro
          ? _value.intro
          : intro // ignore: cast_nullable_to_non_nullable
              as String?,
      introformat: freezed == introformat
          ? _value.introformat
          : introformat // ignore: cast_nullable_to_non_nullable
              as int?,
      introfiles: freezed == introfiles
          ? _value.introfiles
          : introfiles // ignore: cast_nullable_to_non_nullable
              as List<FileModel>?,
      introattachments: freezed == introattachments
          ? _value.introattachments
          : introattachments // ignore: cast_nullable_to_non_nullable
              as List<FileModel>?,
      activity: freezed == activity
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as String?,
      activityformat: freezed == activityformat
          ? _value.activityformat
          : activityformat // ignore: cast_nullable_to_non_nullable
              as int?,
      activityattachments: freezed == activityattachments
          ? _value.activityattachments
          : activityattachments // ignore: cast_nullable_to_non_nullable
              as List<FileModel>?,
      timelimit: freezed == timelimit
          ? _value.timelimit
          : timelimit // ignore: cast_nullable_to_non_nullable
              as int?,
      submissionattachments: freezed == submissionattachments
          ? _value.submissionattachments
          : submissionattachments // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AssignmentModelImplCopyWith<$Res>
    implements $AssignmentModelCopyWith<$Res> {
  factory _$$AssignmentModelImplCopyWith(_$AssignmentModelImpl value,
          $Res Function(_$AssignmentModelImpl) then) =
      __$$AssignmentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int cmid,
      int course,
      String name,
      int nosubmissions,
      int submissiondrafts,
      int sendnotifications,
      int sendlatenotifications,
      int sendstudentnotifications,
      int duedate,
      int allowsubmissionsfromdate,
      int grade,
      int timemodified,
      int completionsubmit,
      int cutoffdate,
      int? gradingduedate,
      int teamsubmission,
      int requireallteammemberssubmit,
      int teamsubmissiongroupingid,
      int blindmarking,
      int? hidegrader,
      int revealidentities,
      AssignmentAttemptReopenMethod attemptreopenmethod,
      int maxattempts,
      int markingworkflow,
      int markingallocation,
      int requiresubmissionstatement,
      int? preventsubmissionnotingroup,
      String? submissionstatement,
      int? submissionstatementformat,
      List<AssignmentConfigModel> configs,
      String? intro,
      int? introformat,
      List<FileModel>? introfiles,
      List<FileModel>? introattachments,
      String? activity,
      int? activityformat,
      List<FileModel>? activityattachments,
      int? timelimit,
      int? submissionattachments});
}

/// @nodoc
class __$$AssignmentModelImplCopyWithImpl<$Res>
    extends _$AssignmentModelCopyWithImpl<$Res, _$AssignmentModelImpl>
    implements _$$AssignmentModelImplCopyWith<$Res> {
  __$$AssignmentModelImplCopyWithImpl(
      _$AssignmentModelImpl _value, $Res Function(_$AssignmentModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cmid = null,
    Object? course = null,
    Object? name = null,
    Object? nosubmissions = null,
    Object? submissiondrafts = null,
    Object? sendnotifications = null,
    Object? sendlatenotifications = null,
    Object? sendstudentnotifications = null,
    Object? duedate = null,
    Object? allowsubmissionsfromdate = null,
    Object? grade = null,
    Object? timemodified = null,
    Object? completionsubmit = null,
    Object? cutoffdate = null,
    Object? gradingduedate = freezed,
    Object? teamsubmission = null,
    Object? requireallteammemberssubmit = null,
    Object? teamsubmissiongroupingid = null,
    Object? blindmarking = null,
    Object? hidegrader = freezed,
    Object? revealidentities = null,
    Object? attemptreopenmethod = null,
    Object? maxattempts = null,
    Object? markingworkflow = null,
    Object? markingallocation = null,
    Object? requiresubmissionstatement = null,
    Object? preventsubmissionnotingroup = freezed,
    Object? submissionstatement = freezed,
    Object? submissionstatementformat = freezed,
    Object? configs = null,
    Object? intro = freezed,
    Object? introformat = freezed,
    Object? introfiles = freezed,
    Object? introattachments = freezed,
    Object? activity = freezed,
    Object? activityformat = freezed,
    Object? activityattachments = freezed,
    Object? timelimit = freezed,
    Object? submissionattachments = freezed,
  }) {
    return _then(_$AssignmentModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      cmid: null == cmid
          ? _value.cmid
          : cmid // ignore: cast_nullable_to_non_nullable
              as int,
      course: null == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nosubmissions: null == nosubmissions
          ? _value.nosubmissions
          : nosubmissions // ignore: cast_nullable_to_non_nullable
              as int,
      submissiondrafts: null == submissiondrafts
          ? _value.submissiondrafts
          : submissiondrafts // ignore: cast_nullable_to_non_nullable
              as int,
      sendnotifications: null == sendnotifications
          ? _value.sendnotifications
          : sendnotifications // ignore: cast_nullable_to_non_nullable
              as int,
      sendlatenotifications: null == sendlatenotifications
          ? _value.sendlatenotifications
          : sendlatenotifications // ignore: cast_nullable_to_non_nullable
              as int,
      sendstudentnotifications: null == sendstudentnotifications
          ? _value.sendstudentnotifications
          : sendstudentnotifications // ignore: cast_nullable_to_non_nullable
              as int,
      duedate: null == duedate
          ? _value.duedate
          : duedate // ignore: cast_nullable_to_non_nullable
              as int,
      allowsubmissionsfromdate: null == allowsubmissionsfromdate
          ? _value.allowsubmissionsfromdate
          : allowsubmissionsfromdate // ignore: cast_nullable_to_non_nullable
              as int,
      grade: null == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as int,
      timemodified: null == timemodified
          ? _value.timemodified
          : timemodified // ignore: cast_nullable_to_non_nullable
              as int,
      completionsubmit: null == completionsubmit
          ? _value.completionsubmit
          : completionsubmit // ignore: cast_nullable_to_non_nullable
              as int,
      cutoffdate: null == cutoffdate
          ? _value.cutoffdate
          : cutoffdate // ignore: cast_nullable_to_non_nullable
              as int,
      gradingduedate: freezed == gradingduedate
          ? _value.gradingduedate
          : gradingduedate // ignore: cast_nullable_to_non_nullable
              as int?,
      teamsubmission: null == teamsubmission
          ? _value.teamsubmission
          : teamsubmission // ignore: cast_nullable_to_non_nullable
              as int,
      requireallteammemberssubmit: null == requireallteammemberssubmit
          ? _value.requireallteammemberssubmit
          : requireallteammemberssubmit // ignore: cast_nullable_to_non_nullable
              as int,
      teamsubmissiongroupingid: null == teamsubmissiongroupingid
          ? _value.teamsubmissiongroupingid
          : teamsubmissiongroupingid // ignore: cast_nullable_to_non_nullable
              as int,
      blindmarking: null == blindmarking
          ? _value.blindmarking
          : blindmarking // ignore: cast_nullable_to_non_nullable
              as int,
      hidegrader: freezed == hidegrader
          ? _value.hidegrader
          : hidegrader // ignore: cast_nullable_to_non_nullable
              as int?,
      revealidentities: null == revealidentities
          ? _value.revealidentities
          : revealidentities // ignore: cast_nullable_to_non_nullable
              as int,
      attemptreopenmethod: null == attemptreopenmethod
          ? _value.attemptreopenmethod
          : attemptreopenmethod // ignore: cast_nullable_to_non_nullable
              as AssignmentAttemptReopenMethod,
      maxattempts: null == maxattempts
          ? _value.maxattempts
          : maxattempts // ignore: cast_nullable_to_non_nullable
              as int,
      markingworkflow: null == markingworkflow
          ? _value.markingworkflow
          : markingworkflow // ignore: cast_nullable_to_non_nullable
              as int,
      markingallocation: null == markingallocation
          ? _value.markingallocation
          : markingallocation // ignore: cast_nullable_to_non_nullable
              as int,
      requiresubmissionstatement: null == requiresubmissionstatement
          ? _value.requiresubmissionstatement
          : requiresubmissionstatement // ignore: cast_nullable_to_non_nullable
              as int,
      preventsubmissionnotingroup: freezed == preventsubmissionnotingroup
          ? _value.preventsubmissionnotingroup
          : preventsubmissionnotingroup // ignore: cast_nullable_to_non_nullable
              as int?,
      submissionstatement: freezed == submissionstatement
          ? _value.submissionstatement
          : submissionstatement // ignore: cast_nullable_to_non_nullable
              as String?,
      submissionstatementformat: freezed == submissionstatementformat
          ? _value.submissionstatementformat
          : submissionstatementformat // ignore: cast_nullable_to_non_nullable
              as int?,
      configs: null == configs
          ? _value._configs
          : configs // ignore: cast_nullable_to_non_nullable
              as List<AssignmentConfigModel>,
      intro: freezed == intro
          ? _value.intro
          : intro // ignore: cast_nullable_to_non_nullable
              as String?,
      introformat: freezed == introformat
          ? _value.introformat
          : introformat // ignore: cast_nullable_to_non_nullable
              as int?,
      introfiles: freezed == introfiles
          ? _value._introfiles
          : introfiles // ignore: cast_nullable_to_non_nullable
              as List<FileModel>?,
      introattachments: freezed == introattachments
          ? _value._introattachments
          : introattachments // ignore: cast_nullable_to_non_nullable
              as List<FileModel>?,
      activity: freezed == activity
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as String?,
      activityformat: freezed == activityformat
          ? _value.activityformat
          : activityformat // ignore: cast_nullable_to_non_nullable
              as int?,
      activityattachments: freezed == activityattachments
          ? _value._activityattachments
          : activityattachments // ignore: cast_nullable_to_non_nullable
              as List<FileModel>?,
      timelimit: freezed == timelimit
          ? _value.timelimit
          : timelimit // ignore: cast_nullable_to_non_nullable
              as int?,
      submissionattachments: freezed == submissionattachments
          ? _value.submissionattachments
          : submissionattachments // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AssignmentModelImpl implements _AssignmentModel {
  const _$AssignmentModelImpl(
      {required this.id,
      required this.cmid,
      required this.course,
      required this.name,
      required this.nosubmissions,
      required this.submissiondrafts,
      required this.sendnotifications,
      required this.sendlatenotifications,
      required this.sendstudentnotifications,
      required this.duedate,
      required this.allowsubmissionsfromdate,
      required this.grade,
      required this.timemodified,
      required this.completionsubmit,
      required this.cutoffdate,
      this.gradingduedate,
      required this.teamsubmission,
      required this.requireallteammemberssubmit,
      required this.teamsubmissiongroupingid,
      required this.blindmarking,
      this.hidegrader,
      required this.revealidentities,
      required this.attemptreopenmethod,
      required this.maxattempts,
      required this.markingworkflow,
      required this.markingallocation,
      required this.requiresubmissionstatement,
      this.preventsubmissionnotingroup,
      this.submissionstatement,
      this.submissionstatementformat,
      required final List<AssignmentConfigModel> configs,
      this.intro,
      this.introformat,
      final List<FileModel>? introfiles,
      final List<FileModel>? introattachments,
      this.activity,
      this.activityformat,
      final List<FileModel>? activityattachments,
      this.timelimit,
      this.submissionattachments})
      : _configs = configs,
        _introfiles = introfiles,
        _introattachments = introattachments,
        _activityattachments = activityattachments;

  factory _$AssignmentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AssignmentModelImplFromJson(json);

  /// Assignment id.
  @override
  final int id;

  /// Course module id.
  @override
  final int cmid;

  /// Course id.
  @override
  final int course;

  /// Assignment name.
  @override
  final String name;

  /// No submissions.
  @override
  final int nosubmissions;

  /// Submissions drafts.
  @override
  final int submissiondrafts;

  /// Send notifications.
  @override
  final int sendnotifications;

  /// Send late notifications.
  @override
  final int sendlatenotifications;

  /// Send student notifications (default).
  @override
  final int sendstudentnotifications;

  /// Assignment due date.
  @override
  final int duedate;

  /// Allow submissions from date.
  @override
  final int allowsubmissionsfromdate;

  /// Grade type.
  @override
  final int grade;

  /// Last time assignment was modified.
  @override
  final int timemodified;

  /// If enabled, set activity as complete following submission.
  @override
  final int completionsubmit;

  /// Date after which submission is not accepted without an extension.
  @override
  final int cutoffdate;

  /// The expected date for marking the submissions.
  @override
  final int? gradingduedate;

  /// If enabled, students submit as a team.
  @override
  final int teamsubmission;

  /// If enabled, all team members must submit.
  @override
  final int requireallteammemberssubmit;

  /// The grouping id for the team submission groups.
  @override
  final int teamsubmissiongroupingid;

  /// If enabled, hide identities until reveal identities actioned.
  @override
  final int blindmarking;

  /// @since 3.7. If enabled, hide grader to student.
  @override
  final int? hidegrader;

  /// Show identities for a blind marking assignment.
  @override
  final int revealidentities;

  /// Method used to control opening new attempts.
  @override
  final AssignmentAttemptReopenMethod attemptreopenmethod;

  /// Maximum number of attempts allowed.
  @override
  final int maxattempts;

  /// Enable marking workflow.
  @override
  final int markingworkflow;

  /// Enable marking allocation.
  @override
  final int markingallocation;

  /// Student must accept submission statement.
  @override
  final int requiresubmissionstatement;

  /// Prevent submission not in group.
  @override
  final int? preventsubmissionnotingroup;

  /// Submission statement formatted.
  @override
  final String? submissionstatement;

  /// Submissionstatement format (1 = HTML, 0 = MOODLE, 2 = PLAIN or 4 = MARKDOWN).
  @override
  final int? submissionstatementformat;

  /// Configuration settings.
  final List<AssignmentConfigModel> _configs;

  /// Configuration settings.
  @override
  List<AssignmentConfigModel> get configs {
    if (_configs is EqualUnmodifiableListView) return _configs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_configs);
  }

  /// Assignment intro, not always returned because it depends on the activity configuration.
  @override
  final String? intro;

  /// Intro format (1 = HTML, 0 = MOODLE, 2 = PLAIN or 4 = MARKDOWN).
  @override
  final int? introformat;

  /// Intro files.
  final List<FileModel>? _introfiles;

  /// Intro files.
  @override
  List<FileModel>? get introfiles {
    final value = _introfiles;
    if (value == null) return null;
    if (_introfiles is EqualUnmodifiableListView) return _introfiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Intro attachments.
  final List<FileModel>? _introattachments;

  /// Intro attachments.
  @override
  List<FileModel>? get introattachments {
    final value = _introattachments;
    if (value == null) return null;
    if (_introattachments is EqualUnmodifiableListView)
      return _introattachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// @since 4.0. Description of activity.
  @override
  final String? activity;

  /// @since 4.0. Format of activity.
  @override
  final int? activityformat;

  /// @since 4.0. Files from activity field.
  final List<FileModel>? _activityattachments;

  /// @since 4.0. Files from activity field.
  @override
  List<FileModel>? get activityattachments {
    final value = _activityattachments;
    if (value == null) return null;
    if (_activityattachments is EqualUnmodifiableListView)
      return _activityattachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// @since 4.0. Time limit to complete assignment.
  @override
  final int? timelimit;

  /// @since 4.0. Flag to only show files during submission.
  @override
  final int? submissionattachments;

  @override
  String toString() {
    return 'AssignmentModel(id: $id, cmid: $cmid, course: $course, name: $name, nosubmissions: $nosubmissions, submissiondrafts: $submissiondrafts, sendnotifications: $sendnotifications, sendlatenotifications: $sendlatenotifications, sendstudentnotifications: $sendstudentnotifications, duedate: $duedate, allowsubmissionsfromdate: $allowsubmissionsfromdate, grade: $grade, timemodified: $timemodified, completionsubmit: $completionsubmit, cutoffdate: $cutoffdate, gradingduedate: $gradingduedate, teamsubmission: $teamsubmission, requireallteammemberssubmit: $requireallteammemberssubmit, teamsubmissiongroupingid: $teamsubmissiongroupingid, blindmarking: $blindmarking, hidegrader: $hidegrader, revealidentities: $revealidentities, attemptreopenmethod: $attemptreopenmethod, maxattempts: $maxattempts, markingworkflow: $markingworkflow, markingallocation: $markingallocation, requiresubmissionstatement: $requiresubmissionstatement, preventsubmissionnotingroup: $preventsubmissionnotingroup, submissionstatement: $submissionstatement, submissionstatementformat: $submissionstatementformat, configs: $configs, intro: $intro, introformat: $introformat, introfiles: $introfiles, introattachments: $introattachments, activity: $activity, activityformat: $activityformat, activityattachments: $activityattachments, timelimit: $timelimit, submissionattachments: $submissionattachments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssignmentModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.cmid, cmid) || other.cmid == cmid) &&
            (identical(other.course, course) || other.course == course) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nosubmissions, nosubmissions) ||
                other.nosubmissions == nosubmissions) &&
            (identical(other.submissiondrafts, submissiondrafts) ||
                other.submissiondrafts == submissiondrafts) &&
            (identical(other.sendnotifications, sendnotifications) ||
                other.sendnotifications == sendnotifications) &&
            (identical(other.sendlatenotifications, sendlatenotifications) ||
                other.sendlatenotifications == sendlatenotifications) &&
            (identical(other.sendstudentnotifications, sendstudentnotifications) ||
                other.sendstudentnotifications == sendstudentnotifications) &&
            (identical(other.duedate, duedate) || other.duedate == duedate) &&
            (identical(other.allowsubmissionsfromdate, allowsubmissionsfromdate) ||
                other.allowsubmissionsfromdate == allowsubmissionsfromdate) &&
            (identical(other.grade, grade) || other.grade == grade) &&
            (identical(other.timemodified, timemodified) ||
                other.timemodified == timemodified) &&
            (identical(other.completionsubmit, completionsubmit) ||
                other.completionsubmit == completionsubmit) &&
            (identical(other.cutoffdate, cutoffdate) ||
                other.cutoffdate == cutoffdate) &&
            (identical(other.gradingduedate, gradingduedate) ||
                other.gradingduedate == gradingduedate) &&
            (identical(other.teamsubmission, teamsubmission) ||
                other.teamsubmission == teamsubmission) &&
            (identical(other.requireallteammemberssubmit, requireallteammemberssubmit) ||
                other.requireallteammemberssubmit ==
                    requireallteammemberssubmit) &&
            (identical(other.teamsubmissiongroupingid, teamsubmissiongroupingid) ||
                other.teamsubmissiongroupingid == teamsubmissiongroupingid) &&
            (identical(other.blindmarking, blindmarking) ||
                other.blindmarking == blindmarking) &&
            (identical(other.hidegrader, hidegrader) ||
                other.hidegrader == hidegrader) &&
            (identical(other.revealidentities, revealidentities) ||
                other.revealidentities == revealidentities) &&
            (identical(other.attemptreopenmethod, attemptreopenmethod) ||
                other.attemptreopenmethod == attemptreopenmethod) &&
            (identical(other.maxattempts, maxattempts) ||
                other.maxattempts == maxattempts) &&
            (identical(other.markingworkflow, markingworkflow) ||
                other.markingworkflow == markingworkflow) &&
            (identical(other.markingallocation, markingallocation) ||
                other.markingallocation == markingallocation) &&
            (identical(other.requiresubmissionstatement, requiresubmissionstatement) ||
                other.requiresubmissionstatement ==
                    requiresubmissionstatement) &&
            (identical(other.preventsubmissionnotingroup, preventsubmissionnotingroup) ||
                other.preventsubmissionnotingroup ==
                    preventsubmissionnotingroup) &&
            (identical(other.submissionstatement, submissionstatement) ||
                other.submissionstatement == submissionstatement) &&
            (identical(other.submissionstatementformat, submissionstatementformat) ||
                other.submissionstatementformat == submissionstatementformat) &&
            const DeepCollectionEquality().equals(other._configs, _configs) &&
            (identical(other.intro, intro) || other.intro == intro) &&
            (identical(other.introformat, introformat) || other.introformat == introformat) &&
            const DeepCollectionEquality().equals(other._introfiles, _introfiles) &&
            const DeepCollectionEquality().equals(other._introattachments, _introattachments) &&
            (identical(other.activity, activity) || other.activity == activity) &&
            (identical(other.activityformat, activityformat) || other.activityformat == activityformat) &&
            const DeepCollectionEquality().equals(other._activityattachments, _activityattachments) &&
            (identical(other.timelimit, timelimit) || other.timelimit == timelimit) &&
            (identical(other.submissionattachments, submissionattachments) || other.submissionattachments == submissionattachments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        cmid,
        course,
        name,
        nosubmissions,
        submissiondrafts,
        sendnotifications,
        sendlatenotifications,
        sendstudentnotifications,
        duedate,
        allowsubmissionsfromdate,
        grade,
        timemodified,
        completionsubmit,
        cutoffdate,
        gradingduedate,
        teamsubmission,
        requireallteammemberssubmit,
        teamsubmissiongroupingid,
        blindmarking,
        hidegrader,
        revealidentities,
        attemptreopenmethod,
        maxattempts,
        markingworkflow,
        markingallocation,
        requiresubmissionstatement,
        preventsubmissionnotingroup,
        submissionstatement,
        submissionstatementformat,
        const DeepCollectionEquality().hash(_configs),
        intro,
        introformat,
        const DeepCollectionEquality().hash(_introfiles),
        const DeepCollectionEquality().hash(_introattachments),
        activity,
        activityformat,
        const DeepCollectionEquality().hash(_activityattachments),
        timelimit,
        submissionattachments
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AssignmentModelImplCopyWith<_$AssignmentModelImpl> get copyWith =>
      __$$AssignmentModelImplCopyWithImpl<_$AssignmentModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AssignmentModelImplToJson(
      this,
    );
  }
}

abstract class _AssignmentModel implements AssignmentModel {
  const factory _AssignmentModel(
      {required final int id,
      required final int cmid,
      required final int course,
      required final String name,
      required final int nosubmissions,
      required final int submissiondrafts,
      required final int sendnotifications,
      required final int sendlatenotifications,
      required final int sendstudentnotifications,
      required final int duedate,
      required final int allowsubmissionsfromdate,
      required final int grade,
      required final int timemodified,
      required final int completionsubmit,
      required final int cutoffdate,
      final int? gradingduedate,
      required final int teamsubmission,
      required final int requireallteammemberssubmit,
      required final int teamsubmissiongroupingid,
      required final int blindmarking,
      final int? hidegrader,
      required final int revealidentities,
      required final AssignmentAttemptReopenMethod attemptreopenmethod,
      required final int maxattempts,
      required final int markingworkflow,
      required final int markingallocation,
      required final int requiresubmissionstatement,
      final int? preventsubmissionnotingroup,
      final String? submissionstatement,
      final int? submissionstatementformat,
      required final List<AssignmentConfigModel> configs,
      final String? intro,
      final int? introformat,
      final List<FileModel>? introfiles,
      final List<FileModel>? introattachments,
      final String? activity,
      final int? activityformat,
      final List<FileModel>? activityattachments,
      final int? timelimit,
      final int? submissionattachments}) = _$AssignmentModelImpl;

  factory _AssignmentModel.fromJson(Map<String, dynamic> json) =
      _$AssignmentModelImpl.fromJson;

  @override

  /// Assignment id.
  int get id;
  @override

  /// Course module id.
  int get cmid;
  @override

  /// Course id.
  int get course;
  @override

  /// Assignment name.
  String get name;
  @override

  /// No submissions.
  int get nosubmissions;
  @override

  /// Submissions drafts.
  int get submissiondrafts;
  @override

  /// Send notifications.
  int get sendnotifications;
  @override

  /// Send late notifications.
  int get sendlatenotifications;
  @override

  /// Send student notifications (default).
  int get sendstudentnotifications;
  @override

  /// Assignment due date.
  int get duedate;
  @override

  /// Allow submissions from date.
  int get allowsubmissionsfromdate;
  @override

  /// Grade type.
  int get grade;
  @override

  /// Last time assignment was modified.
  int get timemodified;
  @override

  /// If enabled, set activity as complete following submission.
  int get completionsubmit;
  @override

  /// Date after which submission is not accepted without an extension.
  int get cutoffdate;
  @override

  /// The expected date for marking the submissions.
  int? get gradingduedate;
  @override

  /// If enabled, students submit as a team.
  int get teamsubmission;
  @override

  /// If enabled, all team members must submit.
  int get requireallteammemberssubmit;
  @override

  /// The grouping id for the team submission groups.
  int get teamsubmissiongroupingid;
  @override

  /// If enabled, hide identities until reveal identities actioned.
  int get blindmarking;
  @override

  /// @since 3.7. If enabled, hide grader to student.
  int? get hidegrader;
  @override

  /// Show identities for a blind marking assignment.
  int get revealidentities;
  @override

  /// Method used to control opening new attempts.
  AssignmentAttemptReopenMethod get attemptreopenmethod;
  @override

  /// Maximum number of attempts allowed.
  int get maxattempts;
  @override

  /// Enable marking workflow.
  int get markingworkflow;
  @override

  /// Enable marking allocation.
  int get markingallocation;
  @override

  /// Student must accept submission statement.
  int get requiresubmissionstatement;
  @override

  /// Prevent submission not in group.
  int? get preventsubmissionnotingroup;
  @override

  /// Submission statement formatted.
  String? get submissionstatement;
  @override

  /// Submissionstatement format (1 = HTML, 0 = MOODLE, 2 = PLAIN or 4 = MARKDOWN).
  int? get submissionstatementformat;
  @override

  /// Configuration settings.
  List<AssignmentConfigModel> get configs;
  @override

  /// Assignment intro, not always returned because it depends on the activity configuration.
  String? get intro;
  @override

  /// Intro format (1 = HTML, 0 = MOODLE, 2 = PLAIN or 4 = MARKDOWN).
  int? get introformat;
  @override

  /// Intro files.
  List<FileModel>? get introfiles;
  @override

  /// Intro attachments.
  List<FileModel>? get introattachments;
  @override

  /// @since 4.0. Description of activity.
  String? get activity;
  @override

  /// @since 4.0. Format of activity.
  int? get activityformat;
  @override

  /// @since 4.0. Files from activity field.
  List<FileModel>? get activityattachments;
  @override

  /// @since 4.0. Time limit to complete assignment.
  int? get timelimit;
  @override

  /// @since 4.0. Flag to only show files during submission.
  int? get submissionattachments;
  @override
  @JsonKey(ignore: true)
  _$$AssignmentModelImplCopyWith<_$AssignmentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AssignmentConfigModel _$AssignmentConfigModelFromJson(
    Map<String, dynamic> json) {
  return _AssignmentConfigModel.fromJson(json);
}

/// @nodoc
mixin _$AssignmentConfigModel {
  /// Assign_plugin_config id.
  int? get id => throw _privateConstructorUsedError;

  /// Assignment id.
  int? get assignment => throw _privateConstructorUsedError;

  /// Plugin.
  String get plugin => throw _privateConstructorUsedError;

  /// Subtype.
  String get subtype => throw _privateConstructorUsedError;

  /// Name.
  String get name => throw _privateConstructorUsedError;

  /// Value.
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssignmentConfigModelCopyWith<AssignmentConfigModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssignmentConfigModelCopyWith<$Res> {
  factory $AssignmentConfigModelCopyWith(AssignmentConfigModel value,
          $Res Function(AssignmentConfigModel) then) =
      _$AssignmentConfigModelCopyWithImpl<$Res, AssignmentConfigModel>;
  @useResult
  $Res call(
      {int? id,
      int? assignment,
      String plugin,
      String subtype,
      String name,
      String value});
}

/// @nodoc
class _$AssignmentConfigModelCopyWithImpl<$Res,
        $Val extends AssignmentConfigModel>
    implements $AssignmentConfigModelCopyWith<$Res> {
  _$AssignmentConfigModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? assignment = freezed,
    Object? plugin = null,
    Object? subtype = null,
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      assignment: freezed == assignment
          ? _value.assignment
          : assignment // ignore: cast_nullable_to_non_nullable
              as int?,
      plugin: null == plugin
          ? _value.plugin
          : plugin // ignore: cast_nullable_to_non_nullable
              as String,
      subtype: null == subtype
          ? _value.subtype
          : subtype // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AssignmentConfigModelImplCopyWith<$Res>
    implements $AssignmentConfigModelCopyWith<$Res> {
  factory _$$AssignmentConfigModelImplCopyWith(
          _$AssignmentConfigModelImpl value,
          $Res Function(_$AssignmentConfigModelImpl) then) =
      __$$AssignmentConfigModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? assignment,
      String plugin,
      String subtype,
      String name,
      String value});
}

/// @nodoc
class __$$AssignmentConfigModelImplCopyWithImpl<$Res>
    extends _$AssignmentConfigModelCopyWithImpl<$Res,
        _$AssignmentConfigModelImpl>
    implements _$$AssignmentConfigModelImplCopyWith<$Res> {
  __$$AssignmentConfigModelImplCopyWithImpl(_$AssignmentConfigModelImpl _value,
      $Res Function(_$AssignmentConfigModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? assignment = freezed,
    Object? plugin = null,
    Object? subtype = null,
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_$AssignmentConfigModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      assignment: freezed == assignment
          ? _value.assignment
          : assignment // ignore: cast_nullable_to_non_nullable
              as int?,
      plugin: null == plugin
          ? _value.plugin
          : plugin // ignore: cast_nullable_to_non_nullable
              as String,
      subtype: null == subtype
          ? _value.subtype
          : subtype // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AssignmentConfigModelImpl implements _AssignmentConfigModel {
  const _$AssignmentConfigModelImpl(
      {this.id,
      this.assignment,
      required this.plugin,
      required this.subtype,
      required this.name,
      required this.value});

  factory _$AssignmentConfigModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AssignmentConfigModelImplFromJson(json);

  /// Assign_plugin_config id.
  @override
  final int? id;

  /// Assignment id.
  @override
  final int? assignment;

  /// Plugin.
  @override
  final String plugin;

  /// Subtype.
  @override
  final String subtype;

  /// Name.
  @override
  final String name;

  /// Value.
  @override
  final String value;

  @override
  String toString() {
    return 'AssignmentConfigModel(id: $id, assignment: $assignment, plugin: $plugin, subtype: $subtype, name: $name, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssignmentConfigModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.assignment, assignment) ||
                other.assignment == assignment) &&
            (identical(other.plugin, plugin) || other.plugin == plugin) &&
            (identical(other.subtype, subtype) || other.subtype == subtype) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, assignment, plugin, subtype, name, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AssignmentConfigModelImplCopyWith<_$AssignmentConfigModelImpl>
      get copyWith => __$$AssignmentConfigModelImplCopyWithImpl<
          _$AssignmentConfigModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AssignmentConfigModelImplToJson(
      this,
    );
  }
}

abstract class _AssignmentConfigModel implements AssignmentConfigModel {
  const factory _AssignmentConfigModel(
      {final int? id,
      final int? assignment,
      required final String plugin,
      required final String subtype,
      required final String name,
      required final String value}) = _$AssignmentConfigModelImpl;

  factory _AssignmentConfigModel.fromJson(Map<String, dynamic> json) =
      _$AssignmentConfigModelImpl.fromJson;

  @override

  /// Assign_plugin_config id.
  int? get id;
  @override

  /// Assignment id.
  int? get assignment;
  @override

  /// Plugin.
  String get plugin;
  @override

  /// Subtype.
  String get subtype;
  @override

  /// Name.
  String get name;
  @override

  /// Value.
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$AssignmentConfigModelImplCopyWith<_$AssignmentConfigModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
