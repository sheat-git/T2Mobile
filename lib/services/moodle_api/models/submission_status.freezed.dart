// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submission_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubmissionStatusModel _$SubmissionStatusModelFromJson(
    Map<String, dynamic> json) {
  return _SubmissionStatusModel.fromJson(json);
}

/// @nodoc
mixin _$SubmissionStatusModel {
  /// Grading information.
  SubmissionGradingSummaryModel? get gradingsummary =>
      throw _privateConstructorUsedError;

  /// Last attempt information.
  SubmissionAttemptModel? get lastattempt => throw _privateConstructorUsedError;

  /// Feedback for the last attempt.
  SubmissionFeedbackModel? get feedback => throw _privateConstructorUsedError;

  /// List all the previous attempts did by the user.
  List<SubmissionPreviousAttemptModel>? get previousattempts =>
      throw _privateConstructorUsedError;

  /// @since 4.0. Extra information about assignment.
  SubmissionAssignmentModel? get assignmentdata =>
      throw _privateConstructorUsedError;
  List<WarningModel>? get warnings => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubmissionStatusModelCopyWith<SubmissionStatusModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmissionStatusModelCopyWith<$Res> {
  factory $SubmissionStatusModelCopyWith(SubmissionStatusModel value,
          $Res Function(SubmissionStatusModel) then) =
      _$SubmissionStatusModelCopyWithImpl<$Res, SubmissionStatusModel>;
  @useResult
  $Res call(
      {SubmissionGradingSummaryModel? gradingsummary,
      SubmissionAttemptModel? lastattempt,
      SubmissionFeedbackModel? feedback,
      List<SubmissionPreviousAttemptModel>? previousattempts,
      SubmissionAssignmentModel? assignmentdata,
      List<WarningModel>? warnings});

  $SubmissionGradingSummaryModelCopyWith<$Res>? get gradingsummary;
  $SubmissionAttemptModelCopyWith<$Res>? get lastattempt;
  $SubmissionFeedbackModelCopyWith<$Res>? get feedback;
  $SubmissionAssignmentModelCopyWith<$Res>? get assignmentdata;
}

/// @nodoc
class _$SubmissionStatusModelCopyWithImpl<$Res,
        $Val extends SubmissionStatusModel>
    implements $SubmissionStatusModelCopyWith<$Res> {
  _$SubmissionStatusModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gradingsummary = freezed,
    Object? lastattempt = freezed,
    Object? feedback = freezed,
    Object? previousattempts = freezed,
    Object? assignmentdata = freezed,
    Object? warnings = freezed,
  }) {
    return _then(_value.copyWith(
      gradingsummary: freezed == gradingsummary
          ? _value.gradingsummary
          : gradingsummary // ignore: cast_nullable_to_non_nullable
              as SubmissionGradingSummaryModel?,
      lastattempt: freezed == lastattempt
          ? _value.lastattempt
          : lastattempt // ignore: cast_nullable_to_non_nullable
              as SubmissionAttemptModel?,
      feedback: freezed == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as SubmissionFeedbackModel?,
      previousattempts: freezed == previousattempts
          ? _value.previousattempts
          : previousattempts // ignore: cast_nullable_to_non_nullable
              as List<SubmissionPreviousAttemptModel>?,
      assignmentdata: freezed == assignmentdata
          ? _value.assignmentdata
          : assignmentdata // ignore: cast_nullable_to_non_nullable
              as SubmissionAssignmentModel?,
      warnings: freezed == warnings
          ? _value.warnings
          : warnings // ignore: cast_nullable_to_non_nullable
              as List<WarningModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SubmissionGradingSummaryModelCopyWith<$Res>? get gradingsummary {
    if (_value.gradingsummary == null) {
      return null;
    }

    return $SubmissionGradingSummaryModelCopyWith<$Res>(_value.gradingsummary!,
        (value) {
      return _then(_value.copyWith(gradingsummary: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SubmissionAttemptModelCopyWith<$Res>? get lastattempt {
    if (_value.lastattempt == null) {
      return null;
    }

    return $SubmissionAttemptModelCopyWith<$Res>(_value.lastattempt!, (value) {
      return _then(_value.copyWith(lastattempt: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SubmissionFeedbackModelCopyWith<$Res>? get feedback {
    if (_value.feedback == null) {
      return null;
    }

    return $SubmissionFeedbackModelCopyWith<$Res>(_value.feedback!, (value) {
      return _then(_value.copyWith(feedback: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SubmissionAssignmentModelCopyWith<$Res>? get assignmentdata {
    if (_value.assignmentdata == null) {
      return null;
    }

    return $SubmissionAssignmentModelCopyWith<$Res>(_value.assignmentdata!,
        (value) {
      return _then(_value.copyWith(assignmentdata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubmissionStatusModelImplCopyWith<$Res>
    implements $SubmissionStatusModelCopyWith<$Res> {
  factory _$$SubmissionStatusModelImplCopyWith(
          _$SubmissionStatusModelImpl value,
          $Res Function(_$SubmissionStatusModelImpl) then) =
      __$$SubmissionStatusModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SubmissionGradingSummaryModel? gradingsummary,
      SubmissionAttemptModel? lastattempt,
      SubmissionFeedbackModel? feedback,
      List<SubmissionPreviousAttemptModel>? previousattempts,
      SubmissionAssignmentModel? assignmentdata,
      List<WarningModel>? warnings});

  @override
  $SubmissionGradingSummaryModelCopyWith<$Res>? get gradingsummary;
  @override
  $SubmissionAttemptModelCopyWith<$Res>? get lastattempt;
  @override
  $SubmissionFeedbackModelCopyWith<$Res>? get feedback;
  @override
  $SubmissionAssignmentModelCopyWith<$Res>? get assignmentdata;
}

/// @nodoc
class __$$SubmissionStatusModelImplCopyWithImpl<$Res>
    extends _$SubmissionStatusModelCopyWithImpl<$Res,
        _$SubmissionStatusModelImpl>
    implements _$$SubmissionStatusModelImplCopyWith<$Res> {
  __$$SubmissionStatusModelImplCopyWithImpl(_$SubmissionStatusModelImpl _value,
      $Res Function(_$SubmissionStatusModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gradingsummary = freezed,
    Object? lastattempt = freezed,
    Object? feedback = freezed,
    Object? previousattempts = freezed,
    Object? assignmentdata = freezed,
    Object? warnings = freezed,
  }) {
    return _then(_$SubmissionStatusModelImpl(
      gradingsummary: freezed == gradingsummary
          ? _value.gradingsummary
          : gradingsummary // ignore: cast_nullable_to_non_nullable
              as SubmissionGradingSummaryModel?,
      lastattempt: freezed == lastattempt
          ? _value.lastattempt
          : lastattempt // ignore: cast_nullable_to_non_nullable
              as SubmissionAttemptModel?,
      feedback: freezed == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as SubmissionFeedbackModel?,
      previousattempts: freezed == previousattempts
          ? _value._previousattempts
          : previousattempts // ignore: cast_nullable_to_non_nullable
              as List<SubmissionPreviousAttemptModel>?,
      assignmentdata: freezed == assignmentdata
          ? _value.assignmentdata
          : assignmentdata // ignore: cast_nullable_to_non_nullable
              as SubmissionAssignmentModel?,
      warnings: freezed == warnings
          ? _value._warnings
          : warnings // ignore: cast_nullable_to_non_nullable
              as List<WarningModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubmissionStatusModelImpl extends _SubmissionStatusModel {
  const _$SubmissionStatusModelImpl(
      {this.gradingsummary,
      this.lastattempt,
      this.feedback,
      final List<SubmissionPreviousAttemptModel>? previousattempts,
      this.assignmentdata,
      final List<WarningModel>? warnings})
      : _previousattempts = previousattempts,
        _warnings = warnings,
        super._();

  factory _$SubmissionStatusModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubmissionStatusModelImplFromJson(json);

  /// Grading information.
  @override
  final SubmissionGradingSummaryModel? gradingsummary;

  /// Last attempt information.
  @override
  final SubmissionAttemptModel? lastattempt;

  /// Feedback for the last attempt.
  @override
  final SubmissionFeedbackModel? feedback;

  /// List all the previous attempts did by the user.
  final List<SubmissionPreviousAttemptModel>? _previousattempts;

  /// List all the previous attempts did by the user.
  @override
  List<SubmissionPreviousAttemptModel>? get previousattempts {
    final value = _previousattempts;
    if (value == null) return null;
    if (_previousattempts is EqualUnmodifiableListView)
      return _previousattempts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// @since 4.0. Extra information about assignment.
  @override
  final SubmissionAssignmentModel? assignmentdata;
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
    return 'SubmissionStatusModel(gradingsummary: $gradingsummary, lastattempt: $lastattempt, feedback: $feedback, previousattempts: $previousattempts, assignmentdata: $assignmentdata, warnings: $warnings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmissionStatusModelImpl &&
            (identical(other.gradingsummary, gradingsummary) ||
                other.gradingsummary == gradingsummary) &&
            (identical(other.lastattempt, lastattempt) ||
                other.lastattempt == lastattempt) &&
            (identical(other.feedback, feedback) ||
                other.feedback == feedback) &&
            const DeepCollectionEquality()
                .equals(other._previousattempts, _previousattempts) &&
            (identical(other.assignmentdata, assignmentdata) ||
                other.assignmentdata == assignmentdata) &&
            const DeepCollectionEquality().equals(other._warnings, _warnings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      gradingsummary,
      lastattempt,
      feedback,
      const DeepCollectionEquality().hash(_previousattempts),
      assignmentdata,
      const DeepCollectionEquality().hash(_warnings));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmissionStatusModelImplCopyWith<_$SubmissionStatusModelImpl>
      get copyWith => __$$SubmissionStatusModelImplCopyWithImpl<
          _$SubmissionStatusModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubmissionStatusModelImplToJson(
      this,
    );
  }
}

abstract class _SubmissionStatusModel extends SubmissionStatusModel {
  const factory _SubmissionStatusModel(
      {final SubmissionGradingSummaryModel? gradingsummary,
      final SubmissionAttemptModel? lastattempt,
      final SubmissionFeedbackModel? feedback,
      final List<SubmissionPreviousAttemptModel>? previousattempts,
      final SubmissionAssignmentModel? assignmentdata,
      final List<WarningModel>? warnings}) = _$SubmissionStatusModelImpl;
  const _SubmissionStatusModel._() : super._();

  factory _SubmissionStatusModel.fromJson(Map<String, dynamic> json) =
      _$SubmissionStatusModelImpl.fromJson;

  @override

  /// Grading information.
  SubmissionGradingSummaryModel? get gradingsummary;
  @override

  /// Last attempt information.
  SubmissionAttemptModel? get lastattempt;
  @override

  /// Feedback for the last attempt.
  SubmissionFeedbackModel? get feedback;
  @override

  /// List all the previous attempts did by the user.
  List<SubmissionPreviousAttemptModel>? get previousattempts;
  @override

  /// @since 4.0. Extra information about assignment.
  SubmissionAssignmentModel? get assignmentdata;
  @override
  List<WarningModel>? get warnings;
  @override
  @JsonKey(ignore: true)
  _$$SubmissionStatusModelImplCopyWith<_$SubmissionStatusModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SubmissionAssignmentModel _$SubmissionAssignmentModelFromJson(
    Map<String, dynamic> json) {
  return _SubmissionAssignmentModel.fromJson(json);
}

/// @nodoc
mixin _$SubmissionAssignmentModel {
  /// Intro and activity attachments.
  SubmissionAssignmentAttachmentsModel? get attachments =>
      throw _privateConstructorUsedError;

  /// Text of activity.
  String? get activity => throw _privateConstructorUsedError;

  /// Format of activity.
  int? get activityformat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubmissionAssignmentModelCopyWith<SubmissionAssignmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmissionAssignmentModelCopyWith<$Res> {
  factory $SubmissionAssignmentModelCopyWith(SubmissionAssignmentModel value,
          $Res Function(SubmissionAssignmentModel) then) =
      _$SubmissionAssignmentModelCopyWithImpl<$Res, SubmissionAssignmentModel>;
  @useResult
  $Res call(
      {SubmissionAssignmentAttachmentsModel? attachments,
      String? activity,
      int? activityformat});

  $SubmissionAssignmentAttachmentsModelCopyWith<$Res>? get attachments;
}

/// @nodoc
class _$SubmissionAssignmentModelCopyWithImpl<$Res,
        $Val extends SubmissionAssignmentModel>
    implements $SubmissionAssignmentModelCopyWith<$Res> {
  _$SubmissionAssignmentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attachments = freezed,
    Object? activity = freezed,
    Object? activityformat = freezed,
  }) {
    return _then(_value.copyWith(
      attachments: freezed == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as SubmissionAssignmentAttachmentsModel?,
      activity: freezed == activity
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as String?,
      activityformat: freezed == activityformat
          ? _value.activityformat
          : activityformat // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SubmissionAssignmentAttachmentsModelCopyWith<$Res>? get attachments {
    if (_value.attachments == null) {
      return null;
    }

    return $SubmissionAssignmentAttachmentsModelCopyWith<$Res>(
        _value.attachments!, (value) {
      return _then(_value.copyWith(attachments: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubmissionAssignmentModelImplCopyWith<$Res>
    implements $SubmissionAssignmentModelCopyWith<$Res> {
  factory _$$SubmissionAssignmentModelImplCopyWith(
          _$SubmissionAssignmentModelImpl value,
          $Res Function(_$SubmissionAssignmentModelImpl) then) =
      __$$SubmissionAssignmentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SubmissionAssignmentAttachmentsModel? attachments,
      String? activity,
      int? activityformat});

  @override
  $SubmissionAssignmentAttachmentsModelCopyWith<$Res>? get attachments;
}

/// @nodoc
class __$$SubmissionAssignmentModelImplCopyWithImpl<$Res>
    extends _$SubmissionAssignmentModelCopyWithImpl<$Res,
        _$SubmissionAssignmentModelImpl>
    implements _$$SubmissionAssignmentModelImplCopyWith<$Res> {
  __$$SubmissionAssignmentModelImplCopyWithImpl(
      _$SubmissionAssignmentModelImpl _value,
      $Res Function(_$SubmissionAssignmentModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attachments = freezed,
    Object? activity = freezed,
    Object? activityformat = freezed,
  }) {
    return _then(_$SubmissionAssignmentModelImpl(
      attachments: freezed == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as SubmissionAssignmentAttachmentsModel?,
      activity: freezed == activity
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as String?,
      activityformat: freezed == activityformat
          ? _value.activityformat
          : activityformat // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubmissionAssignmentModelImpl implements _SubmissionAssignmentModel {
  const _$SubmissionAssignmentModelImpl(
      {this.attachments, this.activity, this.activityformat});

  factory _$SubmissionAssignmentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubmissionAssignmentModelImplFromJson(json);

  /// Intro and activity attachments.
  @override
  final SubmissionAssignmentAttachmentsModel? attachments;

  /// Text of activity.
  @override
  final String? activity;

  /// Format of activity.
  @override
  final int? activityformat;

  @override
  String toString() {
    return 'SubmissionAssignmentModel(attachments: $attachments, activity: $activity, activityformat: $activityformat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmissionAssignmentModelImpl &&
            (identical(other.attachments, attachments) ||
                other.attachments == attachments) &&
            (identical(other.activity, activity) ||
                other.activity == activity) &&
            (identical(other.activityformat, activityformat) ||
                other.activityformat == activityformat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, attachments, activity, activityformat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmissionAssignmentModelImplCopyWith<_$SubmissionAssignmentModelImpl>
      get copyWith => __$$SubmissionAssignmentModelImplCopyWithImpl<
          _$SubmissionAssignmentModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubmissionAssignmentModelImplToJson(
      this,
    );
  }
}

abstract class _SubmissionAssignmentModel implements SubmissionAssignmentModel {
  const factory _SubmissionAssignmentModel(
      {final SubmissionAssignmentAttachmentsModel? attachments,
      final String? activity,
      final int? activityformat}) = _$SubmissionAssignmentModelImpl;

  factory _SubmissionAssignmentModel.fromJson(Map<String, dynamic> json) =
      _$SubmissionAssignmentModelImpl.fromJson;

  @override

  /// Intro and activity attachments.
  SubmissionAssignmentAttachmentsModel? get attachments;
  @override

  /// Text of activity.
  String? get activity;
  @override

  /// Format of activity.
  int? get activityformat;
  @override
  @JsonKey(ignore: true)
  _$$SubmissionAssignmentModelImplCopyWith<_$SubmissionAssignmentModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SubmissionAssignmentAttachmentsModel
    _$SubmissionAssignmentAttachmentsModelFromJson(Map<String, dynamic> json) {
  return _SubmissionAssignmentAttachmentsModel.fromJson(json);
}

/// @nodoc
mixin _$SubmissionAssignmentAttachmentsModel {
  /// Intro attachments files.
  List<FileModel>? get intro => throw _privateConstructorUsedError;

  /// Activity attachments files.
  List<FileModel>? get activity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubmissionAssignmentAttachmentsModelCopyWith<
          SubmissionAssignmentAttachmentsModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmissionAssignmentAttachmentsModelCopyWith<$Res> {
  factory $SubmissionAssignmentAttachmentsModelCopyWith(
          SubmissionAssignmentAttachmentsModel value,
          $Res Function(SubmissionAssignmentAttachmentsModel) then) =
      _$SubmissionAssignmentAttachmentsModelCopyWithImpl<$Res,
          SubmissionAssignmentAttachmentsModel>;
  @useResult
  $Res call({List<FileModel>? intro, List<FileModel>? activity});
}

/// @nodoc
class _$SubmissionAssignmentAttachmentsModelCopyWithImpl<$Res,
        $Val extends SubmissionAssignmentAttachmentsModel>
    implements $SubmissionAssignmentAttachmentsModelCopyWith<$Res> {
  _$SubmissionAssignmentAttachmentsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? intro = freezed,
    Object? activity = freezed,
  }) {
    return _then(_value.copyWith(
      intro: freezed == intro
          ? _value.intro
          : intro // ignore: cast_nullable_to_non_nullable
              as List<FileModel>?,
      activity: freezed == activity
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as List<FileModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubmissionAssignmentAttachmentsModelImplCopyWith<$Res>
    implements $SubmissionAssignmentAttachmentsModelCopyWith<$Res> {
  factory _$$SubmissionAssignmentAttachmentsModelImplCopyWith(
          _$SubmissionAssignmentAttachmentsModelImpl value,
          $Res Function(_$SubmissionAssignmentAttachmentsModelImpl) then) =
      __$$SubmissionAssignmentAttachmentsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FileModel>? intro, List<FileModel>? activity});
}

/// @nodoc
class __$$SubmissionAssignmentAttachmentsModelImplCopyWithImpl<$Res>
    extends _$SubmissionAssignmentAttachmentsModelCopyWithImpl<$Res,
        _$SubmissionAssignmentAttachmentsModelImpl>
    implements _$$SubmissionAssignmentAttachmentsModelImplCopyWith<$Res> {
  __$$SubmissionAssignmentAttachmentsModelImplCopyWithImpl(
      _$SubmissionAssignmentAttachmentsModelImpl _value,
      $Res Function(_$SubmissionAssignmentAttachmentsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? intro = freezed,
    Object? activity = freezed,
  }) {
    return _then(_$SubmissionAssignmentAttachmentsModelImpl(
      intro: freezed == intro
          ? _value._intro
          : intro // ignore: cast_nullable_to_non_nullable
              as List<FileModel>?,
      activity: freezed == activity
          ? _value._activity
          : activity // ignore: cast_nullable_to_non_nullable
              as List<FileModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubmissionAssignmentAttachmentsModelImpl
    implements _SubmissionAssignmentAttachmentsModel {
  const _$SubmissionAssignmentAttachmentsModelImpl(
      {final List<FileModel>? intro, final List<FileModel>? activity})
      : _intro = intro,
        _activity = activity;

  factory _$SubmissionAssignmentAttachmentsModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SubmissionAssignmentAttachmentsModelImplFromJson(json);

  /// Intro attachments files.
  final List<FileModel>? _intro;

  /// Intro attachments files.
  @override
  List<FileModel>? get intro {
    final value = _intro;
    if (value == null) return null;
    if (_intro is EqualUnmodifiableListView) return _intro;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Activity attachments files.
  final List<FileModel>? _activity;

  /// Activity attachments files.
  @override
  List<FileModel>? get activity {
    final value = _activity;
    if (value == null) return null;
    if (_activity is EqualUnmodifiableListView) return _activity;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SubmissionAssignmentAttachmentsModel(intro: $intro, activity: $activity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmissionAssignmentAttachmentsModelImpl &&
            const DeepCollectionEquality().equals(other._intro, _intro) &&
            const DeepCollectionEquality().equals(other._activity, _activity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_intro),
      const DeepCollectionEquality().hash(_activity));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmissionAssignmentAttachmentsModelImplCopyWith<
          _$SubmissionAssignmentAttachmentsModelImpl>
      get copyWith => __$$SubmissionAssignmentAttachmentsModelImplCopyWithImpl<
          _$SubmissionAssignmentAttachmentsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubmissionAssignmentAttachmentsModelImplToJson(
      this,
    );
  }
}

abstract class _SubmissionAssignmentAttachmentsModel
    implements SubmissionAssignmentAttachmentsModel {
  const factory _SubmissionAssignmentAttachmentsModel(
          {final List<FileModel>? intro, final List<FileModel>? activity}) =
      _$SubmissionAssignmentAttachmentsModelImpl;

  factory _SubmissionAssignmentAttachmentsModel.fromJson(
          Map<String, dynamic> json) =
      _$SubmissionAssignmentAttachmentsModelImpl.fromJson;

  @override

  /// Intro attachments files.
  List<FileModel>? get intro;
  @override

  /// Activity attachments files.
  List<FileModel>? get activity;
  @override
  @JsonKey(ignore: true)
  _$$SubmissionAssignmentAttachmentsModelImplCopyWith<
          _$SubmissionAssignmentAttachmentsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SubmissionGradingSummaryModel _$SubmissionGradingSummaryModelFromJson(
    Map<String, dynamic> json) {
  return _SubmissionGradingSummaryModel.fromJson(json);
}

/// @nodoc
mixin _$SubmissionGradingSummaryModel {
  /// Number of users who can submit.
  int get participantcount => throw _privateConstructorUsedError;

  /// Number of submissions in draft status.
  int get submissiondraftscount => throw _privateConstructorUsedError;

  /// Whether submissions are enabled or not.
  bool get submissionsenabled => throw _privateConstructorUsedError;

  /// Number of submissions in submitted status.
  int get submissionssubmittedcount => throw _privateConstructorUsedError;

  /// Number of submissions that need grading.
  int get submissionsneedgradingcount => throw _privateConstructorUsedError;

  /// Whether we need to warn people about groups.
  /// string or bool
  dynamic get warnofungroupedusers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubmissionGradingSummaryModelCopyWith<SubmissionGradingSummaryModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmissionGradingSummaryModelCopyWith<$Res> {
  factory $SubmissionGradingSummaryModelCopyWith(
          SubmissionGradingSummaryModel value,
          $Res Function(SubmissionGradingSummaryModel) then) =
      _$SubmissionGradingSummaryModelCopyWithImpl<$Res,
          SubmissionGradingSummaryModel>;
  @useResult
  $Res call(
      {int participantcount,
      int submissiondraftscount,
      bool submissionsenabled,
      int submissionssubmittedcount,
      int submissionsneedgradingcount,
      dynamic warnofungroupedusers});
}

/// @nodoc
class _$SubmissionGradingSummaryModelCopyWithImpl<$Res,
        $Val extends SubmissionGradingSummaryModel>
    implements $SubmissionGradingSummaryModelCopyWith<$Res> {
  _$SubmissionGradingSummaryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? participantcount = null,
    Object? submissiondraftscount = null,
    Object? submissionsenabled = null,
    Object? submissionssubmittedcount = null,
    Object? submissionsneedgradingcount = null,
    Object? warnofungroupedusers = freezed,
  }) {
    return _then(_value.copyWith(
      participantcount: null == participantcount
          ? _value.participantcount
          : participantcount // ignore: cast_nullable_to_non_nullable
              as int,
      submissiondraftscount: null == submissiondraftscount
          ? _value.submissiondraftscount
          : submissiondraftscount // ignore: cast_nullable_to_non_nullable
              as int,
      submissionsenabled: null == submissionsenabled
          ? _value.submissionsenabled
          : submissionsenabled // ignore: cast_nullable_to_non_nullable
              as bool,
      submissionssubmittedcount: null == submissionssubmittedcount
          ? _value.submissionssubmittedcount
          : submissionssubmittedcount // ignore: cast_nullable_to_non_nullable
              as int,
      submissionsneedgradingcount: null == submissionsneedgradingcount
          ? _value.submissionsneedgradingcount
          : submissionsneedgradingcount // ignore: cast_nullable_to_non_nullable
              as int,
      warnofungroupedusers: freezed == warnofungroupedusers
          ? _value.warnofungroupedusers
          : warnofungroupedusers // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubmissionGradingSummaryModelImplCopyWith<$Res>
    implements $SubmissionGradingSummaryModelCopyWith<$Res> {
  factory _$$SubmissionGradingSummaryModelImplCopyWith(
          _$SubmissionGradingSummaryModelImpl value,
          $Res Function(_$SubmissionGradingSummaryModelImpl) then) =
      __$$SubmissionGradingSummaryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int participantcount,
      int submissiondraftscount,
      bool submissionsenabled,
      int submissionssubmittedcount,
      int submissionsneedgradingcount,
      dynamic warnofungroupedusers});
}

/// @nodoc
class __$$SubmissionGradingSummaryModelImplCopyWithImpl<$Res>
    extends _$SubmissionGradingSummaryModelCopyWithImpl<$Res,
        _$SubmissionGradingSummaryModelImpl>
    implements _$$SubmissionGradingSummaryModelImplCopyWith<$Res> {
  __$$SubmissionGradingSummaryModelImplCopyWithImpl(
      _$SubmissionGradingSummaryModelImpl _value,
      $Res Function(_$SubmissionGradingSummaryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? participantcount = null,
    Object? submissiondraftscount = null,
    Object? submissionsenabled = null,
    Object? submissionssubmittedcount = null,
    Object? submissionsneedgradingcount = null,
    Object? warnofungroupedusers = freezed,
  }) {
    return _then(_$SubmissionGradingSummaryModelImpl(
      participantcount: null == participantcount
          ? _value.participantcount
          : participantcount // ignore: cast_nullable_to_non_nullable
              as int,
      submissiondraftscount: null == submissiondraftscount
          ? _value.submissiondraftscount
          : submissiondraftscount // ignore: cast_nullable_to_non_nullable
              as int,
      submissionsenabled: null == submissionsenabled
          ? _value.submissionsenabled
          : submissionsenabled // ignore: cast_nullable_to_non_nullable
              as bool,
      submissionssubmittedcount: null == submissionssubmittedcount
          ? _value.submissionssubmittedcount
          : submissionssubmittedcount // ignore: cast_nullable_to_non_nullable
              as int,
      submissionsneedgradingcount: null == submissionsneedgradingcount
          ? _value.submissionsneedgradingcount
          : submissionsneedgradingcount // ignore: cast_nullable_to_non_nullable
              as int,
      warnofungroupedusers: freezed == warnofungroupedusers
          ? _value.warnofungroupedusers
          : warnofungroupedusers // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubmissionGradingSummaryModelImpl
    implements _SubmissionGradingSummaryModel {
  const _$SubmissionGradingSummaryModelImpl(
      {required this.participantcount,
      required this.submissiondraftscount,
      required this.submissionsenabled,
      required this.submissionssubmittedcount,
      required this.submissionsneedgradingcount,
      required this.warnofungroupedusers});

  factory _$SubmissionGradingSummaryModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SubmissionGradingSummaryModelImplFromJson(json);

  /// Number of users who can submit.
  @override
  final int participantcount;

  /// Number of submissions in draft status.
  @override
  final int submissiondraftscount;

  /// Whether submissions are enabled or not.
  @override
  final bool submissionsenabled;

  /// Number of submissions in submitted status.
  @override
  final int submissionssubmittedcount;

  /// Number of submissions that need grading.
  @override
  final int submissionsneedgradingcount;

  /// Whether we need to warn people about groups.
  /// string or bool
  @override
  final dynamic warnofungroupedusers;

  @override
  String toString() {
    return 'SubmissionGradingSummaryModel(participantcount: $participantcount, submissiondraftscount: $submissiondraftscount, submissionsenabled: $submissionsenabled, submissionssubmittedcount: $submissionssubmittedcount, submissionsneedgradingcount: $submissionsneedgradingcount, warnofungroupedusers: $warnofungroupedusers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmissionGradingSummaryModelImpl &&
            (identical(other.participantcount, participantcount) ||
                other.participantcount == participantcount) &&
            (identical(other.submissiondraftscount, submissiondraftscount) ||
                other.submissiondraftscount == submissiondraftscount) &&
            (identical(other.submissionsenabled, submissionsenabled) ||
                other.submissionsenabled == submissionsenabled) &&
            (identical(other.submissionssubmittedcount,
                    submissionssubmittedcount) ||
                other.submissionssubmittedcount == submissionssubmittedcount) &&
            (identical(other.submissionsneedgradingcount,
                    submissionsneedgradingcount) ||
                other.submissionsneedgradingcount ==
                    submissionsneedgradingcount) &&
            const DeepCollectionEquality()
                .equals(other.warnofungroupedusers, warnofungroupedusers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      participantcount,
      submissiondraftscount,
      submissionsenabled,
      submissionssubmittedcount,
      submissionsneedgradingcount,
      const DeepCollectionEquality().hash(warnofungroupedusers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmissionGradingSummaryModelImplCopyWith<
          _$SubmissionGradingSummaryModelImpl>
      get copyWith => __$$SubmissionGradingSummaryModelImplCopyWithImpl<
          _$SubmissionGradingSummaryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubmissionGradingSummaryModelImplToJson(
      this,
    );
  }
}

abstract class _SubmissionGradingSummaryModel
    implements SubmissionGradingSummaryModel {
  const factory _SubmissionGradingSummaryModel(
          {required final int participantcount,
          required final int submissiondraftscount,
          required final bool submissionsenabled,
          required final int submissionssubmittedcount,
          required final int submissionsneedgradingcount,
          required final dynamic warnofungroupedusers}) =
      _$SubmissionGradingSummaryModelImpl;

  factory _SubmissionGradingSummaryModel.fromJson(Map<String, dynamic> json) =
      _$SubmissionGradingSummaryModelImpl.fromJson;

  @override

  /// Number of users who can submit.
  int get participantcount;
  @override

  /// Number of submissions in draft status.
  int get submissiondraftscount;
  @override

  /// Whether submissions are enabled or not.
  bool get submissionsenabled;
  @override

  /// Number of submissions in submitted status.
  int get submissionssubmittedcount;
  @override

  /// Number of submissions that need grading.
  int get submissionsneedgradingcount;
  @override

  /// Whether we need to warn people about groups.
  /// string or bool
  dynamic get warnofungroupedusers;
  @override
  @JsonKey(ignore: true)
  _$$SubmissionGradingSummaryModelImplCopyWith<
          _$SubmissionGradingSummaryModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SubmissionAttemptModel _$SubmissionAttemptModelFromJson(
    Map<String, dynamic> json) {
  return _SubmissionAttemptModel.fromJson(json);
}

/// @nodoc
mixin _$SubmissionAttemptModel {
  /// Submission info.
  SubmissionModel? get submission => throw _privateConstructorUsedError;

  /// Submission info.
  SubmissionModel? get teamsubmission => throw _privateConstructorUsedError;

  /// The submission group id (for group submissions only).
  int? get submissiongroup => throw _privateConstructorUsedError;

  /// List of users who still need to submit (for group submissions only).
  List<int>? get submissiongroupmemberswhoneedtosubmit =>
      throw _privateConstructorUsedError;

  /// Whether submissions are enabled or not.
  bool get submissionsenabled => throw _privateConstructorUsedError;

  /// Whether new submissions are locked.
  bool get locked => throw _privateConstructorUsedError;

  /// Whether the submission is graded.
  bool get graded => throw _privateConstructorUsedError;

  /// Whether the user can edit the current submission.
  bool get canedit => throw _privateConstructorUsedError;

  /// Whether the owner of the submission can edit it.
  bool? get caneditowner => throw _privateConstructorUsedError;

  /// Whether the user can submit.
  bool get cansubmit => throw _privateConstructorUsedError;

  /// Extension due date.
  int get extensionduedate => throw _privateConstructorUsedError;

  /// Whether blind marking is enabled.
  bool get blindmarking => throw _privateConstructorUsedError;

  /// Grading status.
  SubmissionGradingStatus get gradingstatus =>
      throw _privateConstructorUsedError;

  /// User groups in the course.
  List<int> get usergroups => throw _privateConstructorUsedError;

  /// @since 4.0. Time limit for submission.
  int? get timelimit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubmissionAttemptModelCopyWith<SubmissionAttemptModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmissionAttemptModelCopyWith<$Res> {
  factory $SubmissionAttemptModelCopyWith(SubmissionAttemptModel value,
          $Res Function(SubmissionAttemptModel) then) =
      _$SubmissionAttemptModelCopyWithImpl<$Res, SubmissionAttemptModel>;
  @useResult
  $Res call(
      {SubmissionModel? submission,
      SubmissionModel? teamsubmission,
      int? submissiongroup,
      List<int>? submissiongroupmemberswhoneedtosubmit,
      bool submissionsenabled,
      bool locked,
      bool graded,
      bool canedit,
      bool? caneditowner,
      bool cansubmit,
      int extensionduedate,
      bool blindmarking,
      SubmissionGradingStatus gradingstatus,
      List<int> usergroups,
      int? timelimit});

  $SubmissionModelCopyWith<$Res>? get submission;
  $SubmissionModelCopyWith<$Res>? get teamsubmission;
}

/// @nodoc
class _$SubmissionAttemptModelCopyWithImpl<$Res,
        $Val extends SubmissionAttemptModel>
    implements $SubmissionAttemptModelCopyWith<$Res> {
  _$SubmissionAttemptModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? submission = freezed,
    Object? teamsubmission = freezed,
    Object? submissiongroup = freezed,
    Object? submissiongroupmemberswhoneedtosubmit = freezed,
    Object? submissionsenabled = null,
    Object? locked = null,
    Object? graded = null,
    Object? canedit = null,
    Object? caneditowner = freezed,
    Object? cansubmit = null,
    Object? extensionduedate = null,
    Object? blindmarking = null,
    Object? gradingstatus = null,
    Object? usergroups = null,
    Object? timelimit = freezed,
  }) {
    return _then(_value.copyWith(
      submission: freezed == submission
          ? _value.submission
          : submission // ignore: cast_nullable_to_non_nullable
              as SubmissionModel?,
      teamsubmission: freezed == teamsubmission
          ? _value.teamsubmission
          : teamsubmission // ignore: cast_nullable_to_non_nullable
              as SubmissionModel?,
      submissiongroup: freezed == submissiongroup
          ? _value.submissiongroup
          : submissiongroup // ignore: cast_nullable_to_non_nullable
              as int?,
      submissiongroupmemberswhoneedtosubmit: freezed ==
              submissiongroupmemberswhoneedtosubmit
          ? _value.submissiongroupmemberswhoneedtosubmit
          : submissiongroupmemberswhoneedtosubmit // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      submissionsenabled: null == submissionsenabled
          ? _value.submissionsenabled
          : submissionsenabled // ignore: cast_nullable_to_non_nullable
              as bool,
      locked: null == locked
          ? _value.locked
          : locked // ignore: cast_nullable_to_non_nullable
              as bool,
      graded: null == graded
          ? _value.graded
          : graded // ignore: cast_nullable_to_non_nullable
              as bool,
      canedit: null == canedit
          ? _value.canedit
          : canedit // ignore: cast_nullable_to_non_nullable
              as bool,
      caneditowner: freezed == caneditowner
          ? _value.caneditowner
          : caneditowner // ignore: cast_nullable_to_non_nullable
              as bool?,
      cansubmit: null == cansubmit
          ? _value.cansubmit
          : cansubmit // ignore: cast_nullable_to_non_nullable
              as bool,
      extensionduedate: null == extensionduedate
          ? _value.extensionduedate
          : extensionduedate // ignore: cast_nullable_to_non_nullable
              as int,
      blindmarking: null == blindmarking
          ? _value.blindmarking
          : blindmarking // ignore: cast_nullable_to_non_nullable
              as bool,
      gradingstatus: null == gradingstatus
          ? _value.gradingstatus
          : gradingstatus // ignore: cast_nullable_to_non_nullable
              as SubmissionGradingStatus,
      usergroups: null == usergroups
          ? _value.usergroups
          : usergroups // ignore: cast_nullable_to_non_nullable
              as List<int>,
      timelimit: freezed == timelimit
          ? _value.timelimit
          : timelimit // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SubmissionModelCopyWith<$Res>? get submission {
    if (_value.submission == null) {
      return null;
    }

    return $SubmissionModelCopyWith<$Res>(_value.submission!, (value) {
      return _then(_value.copyWith(submission: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SubmissionModelCopyWith<$Res>? get teamsubmission {
    if (_value.teamsubmission == null) {
      return null;
    }

    return $SubmissionModelCopyWith<$Res>(_value.teamsubmission!, (value) {
      return _then(_value.copyWith(teamsubmission: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubmissionAttemptModelImplCopyWith<$Res>
    implements $SubmissionAttemptModelCopyWith<$Res> {
  factory _$$SubmissionAttemptModelImplCopyWith(
          _$SubmissionAttemptModelImpl value,
          $Res Function(_$SubmissionAttemptModelImpl) then) =
      __$$SubmissionAttemptModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SubmissionModel? submission,
      SubmissionModel? teamsubmission,
      int? submissiongroup,
      List<int>? submissiongroupmemberswhoneedtosubmit,
      bool submissionsenabled,
      bool locked,
      bool graded,
      bool canedit,
      bool? caneditowner,
      bool cansubmit,
      int extensionduedate,
      bool blindmarking,
      SubmissionGradingStatus gradingstatus,
      List<int> usergroups,
      int? timelimit});

  @override
  $SubmissionModelCopyWith<$Res>? get submission;
  @override
  $SubmissionModelCopyWith<$Res>? get teamsubmission;
}

/// @nodoc
class __$$SubmissionAttemptModelImplCopyWithImpl<$Res>
    extends _$SubmissionAttemptModelCopyWithImpl<$Res,
        _$SubmissionAttemptModelImpl>
    implements _$$SubmissionAttemptModelImplCopyWith<$Res> {
  __$$SubmissionAttemptModelImplCopyWithImpl(
      _$SubmissionAttemptModelImpl _value,
      $Res Function(_$SubmissionAttemptModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? submission = freezed,
    Object? teamsubmission = freezed,
    Object? submissiongroup = freezed,
    Object? submissiongroupmemberswhoneedtosubmit = freezed,
    Object? submissionsenabled = null,
    Object? locked = null,
    Object? graded = null,
    Object? canedit = null,
    Object? caneditowner = freezed,
    Object? cansubmit = null,
    Object? extensionduedate = null,
    Object? blindmarking = null,
    Object? gradingstatus = null,
    Object? usergroups = null,
    Object? timelimit = freezed,
  }) {
    return _then(_$SubmissionAttemptModelImpl(
      submission: freezed == submission
          ? _value.submission
          : submission // ignore: cast_nullable_to_non_nullable
              as SubmissionModel?,
      teamsubmission: freezed == teamsubmission
          ? _value.teamsubmission
          : teamsubmission // ignore: cast_nullable_to_non_nullable
              as SubmissionModel?,
      submissiongroup: freezed == submissiongroup
          ? _value.submissiongroup
          : submissiongroup // ignore: cast_nullable_to_non_nullable
              as int?,
      submissiongroupmemberswhoneedtosubmit: freezed ==
              submissiongroupmemberswhoneedtosubmit
          ? _value._submissiongroupmemberswhoneedtosubmit
          : submissiongroupmemberswhoneedtosubmit // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      submissionsenabled: null == submissionsenabled
          ? _value.submissionsenabled
          : submissionsenabled // ignore: cast_nullable_to_non_nullable
              as bool,
      locked: null == locked
          ? _value.locked
          : locked // ignore: cast_nullable_to_non_nullable
              as bool,
      graded: null == graded
          ? _value.graded
          : graded // ignore: cast_nullable_to_non_nullable
              as bool,
      canedit: null == canedit
          ? _value.canedit
          : canedit // ignore: cast_nullable_to_non_nullable
              as bool,
      caneditowner: freezed == caneditowner
          ? _value.caneditowner
          : caneditowner // ignore: cast_nullable_to_non_nullable
              as bool?,
      cansubmit: null == cansubmit
          ? _value.cansubmit
          : cansubmit // ignore: cast_nullable_to_non_nullable
              as bool,
      extensionduedate: null == extensionduedate
          ? _value.extensionduedate
          : extensionduedate // ignore: cast_nullable_to_non_nullable
              as int,
      blindmarking: null == blindmarking
          ? _value.blindmarking
          : blindmarking // ignore: cast_nullable_to_non_nullable
              as bool,
      gradingstatus: null == gradingstatus
          ? _value.gradingstatus
          : gradingstatus // ignore: cast_nullable_to_non_nullable
              as SubmissionGradingStatus,
      usergroups: null == usergroups
          ? _value._usergroups
          : usergroups // ignore: cast_nullable_to_non_nullable
              as List<int>,
      timelimit: freezed == timelimit
          ? _value.timelimit
          : timelimit // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubmissionAttemptModelImpl implements _SubmissionAttemptModel {
  const _$SubmissionAttemptModelImpl(
      {this.submission,
      this.teamsubmission,
      this.submissiongroup,
      final List<int>? submissiongroupmemberswhoneedtosubmit,
      required this.submissionsenabled,
      required this.locked,
      required this.graded,
      required this.canedit,
      this.caneditowner,
      required this.cansubmit,
      required this.extensionduedate,
      required this.blindmarking,
      required this.gradingstatus,
      required final List<int> usergroups,
      this.timelimit})
      : _submissiongroupmemberswhoneedtosubmit =
            submissiongroupmemberswhoneedtosubmit,
        _usergroups = usergroups;

  factory _$SubmissionAttemptModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubmissionAttemptModelImplFromJson(json);

  /// Submission info.
  @override
  final SubmissionModel? submission;

  /// Submission info.
  @override
  final SubmissionModel? teamsubmission;

  /// The submission group id (for group submissions only).
  @override
  final int? submissiongroup;

  /// List of users who still need to submit (for group submissions only).
  final List<int>? _submissiongroupmemberswhoneedtosubmit;

  /// List of users who still need to submit (for group submissions only).
  @override
  List<int>? get submissiongroupmemberswhoneedtosubmit {
    final value = _submissiongroupmemberswhoneedtosubmit;
    if (value == null) return null;
    if (_submissiongroupmemberswhoneedtosubmit is EqualUnmodifiableListView)
      return _submissiongroupmemberswhoneedtosubmit;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Whether submissions are enabled or not.
  @override
  final bool submissionsenabled;

  /// Whether new submissions are locked.
  @override
  final bool locked;

  /// Whether the submission is graded.
  @override
  final bool graded;

  /// Whether the user can edit the current submission.
  @override
  final bool canedit;

  /// Whether the owner of the submission can edit it.
  @override
  final bool? caneditowner;

  /// Whether the user can submit.
  @override
  final bool cansubmit;

  /// Extension due date.
  @override
  final int extensionduedate;

  /// Whether blind marking is enabled.
  @override
  final bool blindmarking;

  /// Grading status.
  @override
  final SubmissionGradingStatus gradingstatus;

  /// User groups in the course.
  final List<int> _usergroups;

  /// User groups in the course.
  @override
  List<int> get usergroups {
    if (_usergroups is EqualUnmodifiableListView) return _usergroups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_usergroups);
  }

  /// @since 4.0. Time limit for submission.
  @override
  final int? timelimit;

  @override
  String toString() {
    return 'SubmissionAttemptModel(submission: $submission, teamsubmission: $teamsubmission, submissiongroup: $submissiongroup, submissiongroupmemberswhoneedtosubmit: $submissiongroupmemberswhoneedtosubmit, submissionsenabled: $submissionsenabled, locked: $locked, graded: $graded, canedit: $canedit, caneditowner: $caneditowner, cansubmit: $cansubmit, extensionduedate: $extensionduedate, blindmarking: $blindmarking, gradingstatus: $gradingstatus, usergroups: $usergroups, timelimit: $timelimit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmissionAttemptModelImpl &&
            (identical(other.submission, submission) ||
                other.submission == submission) &&
            (identical(other.teamsubmission, teamsubmission) ||
                other.teamsubmission == teamsubmission) &&
            (identical(other.submissiongroup, submissiongroup) ||
                other.submissiongroup == submissiongroup) &&
            const DeepCollectionEquality().equals(
                other._submissiongroupmemberswhoneedtosubmit,
                _submissiongroupmemberswhoneedtosubmit) &&
            (identical(other.submissionsenabled, submissionsenabled) ||
                other.submissionsenabled == submissionsenabled) &&
            (identical(other.locked, locked) || other.locked == locked) &&
            (identical(other.graded, graded) || other.graded == graded) &&
            (identical(other.canedit, canedit) || other.canedit == canedit) &&
            (identical(other.caneditowner, caneditowner) ||
                other.caneditowner == caneditowner) &&
            (identical(other.cansubmit, cansubmit) ||
                other.cansubmit == cansubmit) &&
            (identical(other.extensionduedate, extensionduedate) ||
                other.extensionduedate == extensionduedate) &&
            (identical(other.blindmarking, blindmarking) ||
                other.blindmarking == blindmarking) &&
            (identical(other.gradingstatus, gradingstatus) ||
                other.gradingstatus == gradingstatus) &&
            const DeepCollectionEquality()
                .equals(other._usergroups, _usergroups) &&
            (identical(other.timelimit, timelimit) ||
                other.timelimit == timelimit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      submission,
      teamsubmission,
      submissiongroup,
      const DeepCollectionEquality()
          .hash(_submissiongroupmemberswhoneedtosubmit),
      submissionsenabled,
      locked,
      graded,
      canedit,
      caneditowner,
      cansubmit,
      extensionduedate,
      blindmarking,
      gradingstatus,
      const DeepCollectionEquality().hash(_usergroups),
      timelimit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmissionAttemptModelImplCopyWith<_$SubmissionAttemptModelImpl>
      get copyWith => __$$SubmissionAttemptModelImplCopyWithImpl<
          _$SubmissionAttemptModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubmissionAttemptModelImplToJson(
      this,
    );
  }
}

abstract class _SubmissionAttemptModel implements SubmissionAttemptModel {
  const factory _SubmissionAttemptModel(
      {final SubmissionModel? submission,
      final SubmissionModel? teamsubmission,
      final int? submissiongroup,
      final List<int>? submissiongroupmemberswhoneedtosubmit,
      required final bool submissionsenabled,
      required final bool locked,
      required final bool graded,
      required final bool canedit,
      final bool? caneditowner,
      required final bool cansubmit,
      required final int extensionduedate,
      required final bool blindmarking,
      required final SubmissionGradingStatus gradingstatus,
      required final List<int> usergroups,
      final int? timelimit}) = _$SubmissionAttemptModelImpl;

  factory _SubmissionAttemptModel.fromJson(Map<String, dynamic> json) =
      _$SubmissionAttemptModelImpl.fromJson;

  @override

  /// Submission info.
  SubmissionModel? get submission;
  @override

  /// Submission info.
  SubmissionModel? get teamsubmission;
  @override

  /// The submission group id (for group submissions only).
  int? get submissiongroup;
  @override

  /// List of users who still need to submit (for group submissions only).
  List<int>? get submissiongroupmemberswhoneedtosubmit;
  @override

  /// Whether submissions are enabled or not.
  bool get submissionsenabled;
  @override

  /// Whether new submissions are locked.
  bool get locked;
  @override

  /// Whether the submission is graded.
  bool get graded;
  @override

  /// Whether the user can edit the current submission.
  bool get canedit;
  @override

  /// Whether the owner of the submission can edit it.
  bool? get caneditowner;
  @override

  /// Whether the user can submit.
  bool get cansubmit;
  @override

  /// Extension due date.
  int get extensionduedate;
  @override

  /// Whether blind marking is enabled.
  bool get blindmarking;
  @override

  /// Grading status.
  SubmissionGradingStatus get gradingstatus;
  @override

  /// User groups in the course.
  List<int> get usergroups;
  @override

  /// @since 4.0. Time limit for submission.
  int? get timelimit;
  @override
  @JsonKey(ignore: true)
  _$$SubmissionAttemptModelImplCopyWith<_$SubmissionAttemptModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SubmissionFeedbackModel _$SubmissionFeedbackModelFromJson(
    Map<String, dynamic> json) {
  return _SubmissionFeedbackModel.fromJson(json);
}

/// @nodoc
mixin _$SubmissionFeedbackModel {
  /// Grade information.
  SubmissionGradeModel? get grade => throw _privateConstructorUsedError;

  /// Grade rendered into a format suitable for display.
  String get gradefordisplay => throw _privateConstructorUsedError;

  /// The date the user was graded.
  int get gradeddate => throw _privateConstructorUsedError;

  /// Plugins info.
  List<SubmissionPluginModel>? get plugins =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubmissionFeedbackModelCopyWith<SubmissionFeedbackModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmissionFeedbackModelCopyWith<$Res> {
  factory $SubmissionFeedbackModelCopyWith(SubmissionFeedbackModel value,
          $Res Function(SubmissionFeedbackModel) then) =
      _$SubmissionFeedbackModelCopyWithImpl<$Res, SubmissionFeedbackModel>;
  @useResult
  $Res call(
      {SubmissionGradeModel? grade,
      String gradefordisplay,
      int gradeddate,
      List<SubmissionPluginModel>? plugins});

  $SubmissionGradeModelCopyWith<$Res>? get grade;
}

/// @nodoc
class _$SubmissionFeedbackModelCopyWithImpl<$Res,
        $Val extends SubmissionFeedbackModel>
    implements $SubmissionFeedbackModelCopyWith<$Res> {
  _$SubmissionFeedbackModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? grade = freezed,
    Object? gradefordisplay = null,
    Object? gradeddate = null,
    Object? plugins = freezed,
  }) {
    return _then(_value.copyWith(
      grade: freezed == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as SubmissionGradeModel?,
      gradefordisplay: null == gradefordisplay
          ? _value.gradefordisplay
          : gradefordisplay // ignore: cast_nullable_to_non_nullable
              as String,
      gradeddate: null == gradeddate
          ? _value.gradeddate
          : gradeddate // ignore: cast_nullable_to_non_nullable
              as int,
      plugins: freezed == plugins
          ? _value.plugins
          : plugins // ignore: cast_nullable_to_non_nullable
              as List<SubmissionPluginModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SubmissionGradeModelCopyWith<$Res>? get grade {
    if (_value.grade == null) {
      return null;
    }

    return $SubmissionGradeModelCopyWith<$Res>(_value.grade!, (value) {
      return _then(_value.copyWith(grade: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubmissionFeedbackModelImplCopyWith<$Res>
    implements $SubmissionFeedbackModelCopyWith<$Res> {
  factory _$$SubmissionFeedbackModelImplCopyWith(
          _$SubmissionFeedbackModelImpl value,
          $Res Function(_$SubmissionFeedbackModelImpl) then) =
      __$$SubmissionFeedbackModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SubmissionGradeModel? grade,
      String gradefordisplay,
      int gradeddate,
      List<SubmissionPluginModel>? plugins});

  @override
  $SubmissionGradeModelCopyWith<$Res>? get grade;
}

/// @nodoc
class __$$SubmissionFeedbackModelImplCopyWithImpl<$Res>
    extends _$SubmissionFeedbackModelCopyWithImpl<$Res,
        _$SubmissionFeedbackModelImpl>
    implements _$$SubmissionFeedbackModelImplCopyWith<$Res> {
  __$$SubmissionFeedbackModelImplCopyWithImpl(
      _$SubmissionFeedbackModelImpl _value,
      $Res Function(_$SubmissionFeedbackModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? grade = freezed,
    Object? gradefordisplay = null,
    Object? gradeddate = null,
    Object? plugins = freezed,
  }) {
    return _then(_$SubmissionFeedbackModelImpl(
      grade: freezed == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as SubmissionGradeModel?,
      gradefordisplay: null == gradefordisplay
          ? _value.gradefordisplay
          : gradefordisplay // ignore: cast_nullable_to_non_nullable
              as String,
      gradeddate: null == gradeddate
          ? _value.gradeddate
          : gradeddate // ignore: cast_nullable_to_non_nullable
              as int,
      plugins: freezed == plugins
          ? _value._plugins
          : plugins // ignore: cast_nullable_to_non_nullable
              as List<SubmissionPluginModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubmissionFeedbackModelImpl implements _SubmissionFeedbackModel {
  const _$SubmissionFeedbackModelImpl(
      {this.grade,
      required this.gradefordisplay,
      required this.gradeddate,
      final List<SubmissionPluginModel>? plugins})
      : _plugins = plugins;

  factory _$SubmissionFeedbackModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubmissionFeedbackModelImplFromJson(json);

  /// Grade information.
  @override
  final SubmissionGradeModel? grade;

  /// Grade rendered into a format suitable for display.
  @override
  final String gradefordisplay;

  /// The date the user was graded.
  @override
  final int gradeddate;

  /// Plugins info.
  final List<SubmissionPluginModel>? _plugins;

  /// Plugins info.
  @override
  List<SubmissionPluginModel>? get plugins {
    final value = _plugins;
    if (value == null) return null;
    if (_plugins is EqualUnmodifiableListView) return _plugins;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SubmissionFeedbackModel(grade: $grade, gradefordisplay: $gradefordisplay, gradeddate: $gradeddate, plugins: $plugins)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmissionFeedbackModelImpl &&
            (identical(other.grade, grade) || other.grade == grade) &&
            (identical(other.gradefordisplay, gradefordisplay) ||
                other.gradefordisplay == gradefordisplay) &&
            (identical(other.gradeddate, gradeddate) ||
                other.gradeddate == gradeddate) &&
            const DeepCollectionEquality().equals(other._plugins, _plugins));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, grade, gradefordisplay,
      gradeddate, const DeepCollectionEquality().hash(_plugins));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmissionFeedbackModelImplCopyWith<_$SubmissionFeedbackModelImpl>
      get copyWith => __$$SubmissionFeedbackModelImplCopyWithImpl<
          _$SubmissionFeedbackModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubmissionFeedbackModelImplToJson(
      this,
    );
  }
}

abstract class _SubmissionFeedbackModel implements SubmissionFeedbackModel {
  const factory _SubmissionFeedbackModel(
          {final SubmissionGradeModel? grade,
          required final String gradefordisplay,
          required final int gradeddate,
          final List<SubmissionPluginModel>? plugins}) =
      _$SubmissionFeedbackModelImpl;

  factory _SubmissionFeedbackModel.fromJson(Map<String, dynamic> json) =
      _$SubmissionFeedbackModelImpl.fromJson;

  @override

  /// Grade information.
  SubmissionGradeModel? get grade;
  @override

  /// Grade rendered into a format suitable for display.
  String get gradefordisplay;
  @override

  /// The date the user was graded.
  int get gradeddate;
  @override

  /// Plugins info.
  List<SubmissionPluginModel>? get plugins;
  @override
  @JsonKey(ignore: true)
  _$$SubmissionFeedbackModelImplCopyWith<_$SubmissionFeedbackModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SubmissionPreviousAttemptModel _$SubmissionPreviousAttemptModelFromJson(
    Map<String, dynamic> json) {
  return _SubmissionPreviousAttemptModel.fromJson(json);
}

/// @nodoc
mixin _$SubmissionPreviousAttemptModel {
  /// Attempt number.
  int get attemptnumber => throw _privateConstructorUsedError;

  /// Submission info.
  SubmissionModel? get submission => throw _privateConstructorUsedError;

  /// Grade information.
  SubmissionGradeModel? get grade => throw _privateConstructorUsedError;

  /// Feedback info.
  List<SubmissionPluginModel>? get feedbackplugins =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubmissionPreviousAttemptModelCopyWith<SubmissionPreviousAttemptModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmissionPreviousAttemptModelCopyWith<$Res> {
  factory $SubmissionPreviousAttemptModelCopyWith(
          SubmissionPreviousAttemptModel value,
          $Res Function(SubmissionPreviousAttemptModel) then) =
      _$SubmissionPreviousAttemptModelCopyWithImpl<$Res,
          SubmissionPreviousAttemptModel>;
  @useResult
  $Res call(
      {int attemptnumber,
      SubmissionModel? submission,
      SubmissionGradeModel? grade,
      List<SubmissionPluginModel>? feedbackplugins});

  $SubmissionModelCopyWith<$Res>? get submission;
  $SubmissionGradeModelCopyWith<$Res>? get grade;
}

/// @nodoc
class _$SubmissionPreviousAttemptModelCopyWithImpl<$Res,
        $Val extends SubmissionPreviousAttemptModel>
    implements $SubmissionPreviousAttemptModelCopyWith<$Res> {
  _$SubmissionPreviousAttemptModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attemptnumber = null,
    Object? submission = freezed,
    Object? grade = freezed,
    Object? feedbackplugins = freezed,
  }) {
    return _then(_value.copyWith(
      attemptnumber: null == attemptnumber
          ? _value.attemptnumber
          : attemptnumber // ignore: cast_nullable_to_non_nullable
              as int,
      submission: freezed == submission
          ? _value.submission
          : submission // ignore: cast_nullable_to_non_nullable
              as SubmissionModel?,
      grade: freezed == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as SubmissionGradeModel?,
      feedbackplugins: freezed == feedbackplugins
          ? _value.feedbackplugins
          : feedbackplugins // ignore: cast_nullable_to_non_nullable
              as List<SubmissionPluginModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SubmissionModelCopyWith<$Res>? get submission {
    if (_value.submission == null) {
      return null;
    }

    return $SubmissionModelCopyWith<$Res>(_value.submission!, (value) {
      return _then(_value.copyWith(submission: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SubmissionGradeModelCopyWith<$Res>? get grade {
    if (_value.grade == null) {
      return null;
    }

    return $SubmissionGradeModelCopyWith<$Res>(_value.grade!, (value) {
      return _then(_value.copyWith(grade: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubmissionPreviousAttemptModelImplCopyWith<$Res>
    implements $SubmissionPreviousAttemptModelCopyWith<$Res> {
  factory _$$SubmissionPreviousAttemptModelImplCopyWith(
          _$SubmissionPreviousAttemptModelImpl value,
          $Res Function(_$SubmissionPreviousAttemptModelImpl) then) =
      __$$SubmissionPreviousAttemptModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int attemptnumber,
      SubmissionModel? submission,
      SubmissionGradeModel? grade,
      List<SubmissionPluginModel>? feedbackplugins});

  @override
  $SubmissionModelCopyWith<$Res>? get submission;
  @override
  $SubmissionGradeModelCopyWith<$Res>? get grade;
}

/// @nodoc
class __$$SubmissionPreviousAttemptModelImplCopyWithImpl<$Res>
    extends _$SubmissionPreviousAttemptModelCopyWithImpl<$Res,
        _$SubmissionPreviousAttemptModelImpl>
    implements _$$SubmissionPreviousAttemptModelImplCopyWith<$Res> {
  __$$SubmissionPreviousAttemptModelImplCopyWithImpl(
      _$SubmissionPreviousAttemptModelImpl _value,
      $Res Function(_$SubmissionPreviousAttemptModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attemptnumber = null,
    Object? submission = freezed,
    Object? grade = freezed,
    Object? feedbackplugins = freezed,
  }) {
    return _then(_$SubmissionPreviousAttemptModelImpl(
      attemptnumber: null == attemptnumber
          ? _value.attemptnumber
          : attemptnumber // ignore: cast_nullable_to_non_nullable
              as int,
      submission: freezed == submission
          ? _value.submission
          : submission // ignore: cast_nullable_to_non_nullable
              as SubmissionModel?,
      grade: freezed == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as SubmissionGradeModel?,
      feedbackplugins: freezed == feedbackplugins
          ? _value._feedbackplugins
          : feedbackplugins // ignore: cast_nullable_to_non_nullable
              as List<SubmissionPluginModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubmissionPreviousAttemptModelImpl
    implements _SubmissionPreviousAttemptModel {
  const _$SubmissionPreviousAttemptModelImpl(
      {required this.attemptnumber,
      this.submission,
      this.grade,
      final List<SubmissionPluginModel>? feedbackplugins})
      : _feedbackplugins = feedbackplugins;

  factory _$SubmissionPreviousAttemptModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SubmissionPreviousAttemptModelImplFromJson(json);

  /// Attempt number.
  @override
  final int attemptnumber;

  /// Submission info.
  @override
  final SubmissionModel? submission;

  /// Grade information.
  @override
  final SubmissionGradeModel? grade;

  /// Feedback info.
  final List<SubmissionPluginModel>? _feedbackplugins;

  /// Feedback info.
  @override
  List<SubmissionPluginModel>? get feedbackplugins {
    final value = _feedbackplugins;
    if (value == null) return null;
    if (_feedbackplugins is EqualUnmodifiableListView) return _feedbackplugins;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SubmissionPreviousAttemptModel(attemptnumber: $attemptnumber, submission: $submission, grade: $grade, feedbackplugins: $feedbackplugins)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmissionPreviousAttemptModelImpl &&
            (identical(other.attemptnumber, attemptnumber) ||
                other.attemptnumber == attemptnumber) &&
            (identical(other.submission, submission) ||
                other.submission == submission) &&
            (identical(other.grade, grade) || other.grade == grade) &&
            const DeepCollectionEquality()
                .equals(other._feedbackplugins, _feedbackplugins));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, attemptnumber, submission, grade,
      const DeepCollectionEquality().hash(_feedbackplugins));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmissionPreviousAttemptModelImplCopyWith<
          _$SubmissionPreviousAttemptModelImpl>
      get copyWith => __$$SubmissionPreviousAttemptModelImplCopyWithImpl<
          _$SubmissionPreviousAttemptModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubmissionPreviousAttemptModelImplToJson(
      this,
    );
  }
}

abstract class _SubmissionPreviousAttemptModel
    implements SubmissionPreviousAttemptModel {
  const factory _SubmissionPreviousAttemptModel(
          {required final int attemptnumber,
          final SubmissionModel? submission,
          final SubmissionGradeModel? grade,
          final List<SubmissionPluginModel>? feedbackplugins}) =
      _$SubmissionPreviousAttemptModelImpl;

  factory _SubmissionPreviousAttemptModel.fromJson(Map<String, dynamic> json) =
      _$SubmissionPreviousAttemptModelImpl.fromJson;

  @override

  /// Attempt number.
  int get attemptnumber;
  @override

  /// Submission info.
  SubmissionModel? get submission;
  @override

  /// Grade information.
  SubmissionGradeModel? get grade;
  @override

  /// Feedback info.
  List<SubmissionPluginModel>? get feedbackplugins;
  @override
  @JsonKey(ignore: true)
  _$$SubmissionPreviousAttemptModelImplCopyWith<
          _$SubmissionPreviousAttemptModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SubmissionModel _$SubmissionModelFromJson(Map<String, dynamic> json) {
  return _SubmissionModel.fromJson(json);
}

/// @nodoc
mixin _$SubmissionModel {
  /// Submission id.
  int get id => throw _privateConstructorUsedError;

  /// Student id.
  int get userid => throw _privateConstructorUsedError;

  /// Attempt number.
  int get attemptnumber => throw _privateConstructorUsedError;

  /// Submission creation time.
  int get timecreated => throw _privateConstructorUsedError;

  /// Submission last modified time.
  int get timemodified => throw _privateConstructorUsedError;

  /// Submission status.
  SubmissionStatus get status => throw _privateConstructorUsedError;

  /// Group id.
  int get groupid => throw _privateConstructorUsedError;

  /// Assignment id.
  int? get assignment => throw _privateConstructorUsedError;

  /// Latest attempt.
  int? get latest => throw _privateConstructorUsedError;

  /// Plugins.
  List<SubmissionPluginModel>? get plugins =>
      throw _privateConstructorUsedError;

  /// Grading status.
  SubmissionGradingStatus? get gradingstatus =>
      throw _privateConstructorUsedError;

  /// @since 4.0. Submission start time.
  int? get timestarted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubmissionModelCopyWith<SubmissionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmissionModelCopyWith<$Res> {
  factory $SubmissionModelCopyWith(
          SubmissionModel value, $Res Function(SubmissionModel) then) =
      _$SubmissionModelCopyWithImpl<$Res, SubmissionModel>;
  @useResult
  $Res call(
      {int id,
      int userid,
      int attemptnumber,
      int timecreated,
      int timemodified,
      SubmissionStatus status,
      int groupid,
      int? assignment,
      int? latest,
      List<SubmissionPluginModel>? plugins,
      SubmissionGradingStatus? gradingstatus,
      int? timestarted});
}

/// @nodoc
class _$SubmissionModelCopyWithImpl<$Res, $Val extends SubmissionModel>
    implements $SubmissionModelCopyWith<$Res> {
  _$SubmissionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userid = null,
    Object? attemptnumber = null,
    Object? timecreated = null,
    Object? timemodified = null,
    Object? status = null,
    Object? groupid = null,
    Object? assignment = freezed,
    Object? latest = freezed,
    Object? plugins = freezed,
    Object? gradingstatus = freezed,
    Object? timestarted = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userid: null == userid
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as int,
      attemptnumber: null == attemptnumber
          ? _value.attemptnumber
          : attemptnumber // ignore: cast_nullable_to_non_nullable
              as int,
      timecreated: null == timecreated
          ? _value.timecreated
          : timecreated // ignore: cast_nullable_to_non_nullable
              as int,
      timemodified: null == timemodified
          ? _value.timemodified
          : timemodified // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SubmissionStatus,
      groupid: null == groupid
          ? _value.groupid
          : groupid // ignore: cast_nullable_to_non_nullable
              as int,
      assignment: freezed == assignment
          ? _value.assignment
          : assignment // ignore: cast_nullable_to_non_nullable
              as int?,
      latest: freezed == latest
          ? _value.latest
          : latest // ignore: cast_nullable_to_non_nullable
              as int?,
      plugins: freezed == plugins
          ? _value.plugins
          : plugins // ignore: cast_nullable_to_non_nullable
              as List<SubmissionPluginModel>?,
      gradingstatus: freezed == gradingstatus
          ? _value.gradingstatus
          : gradingstatus // ignore: cast_nullable_to_non_nullable
              as SubmissionGradingStatus?,
      timestarted: freezed == timestarted
          ? _value.timestarted
          : timestarted // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubmissionModelImplCopyWith<$Res>
    implements $SubmissionModelCopyWith<$Res> {
  factory _$$SubmissionModelImplCopyWith(_$SubmissionModelImpl value,
          $Res Function(_$SubmissionModelImpl) then) =
      __$$SubmissionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int userid,
      int attemptnumber,
      int timecreated,
      int timemodified,
      SubmissionStatus status,
      int groupid,
      int? assignment,
      int? latest,
      List<SubmissionPluginModel>? plugins,
      SubmissionGradingStatus? gradingstatus,
      int? timestarted});
}

/// @nodoc
class __$$SubmissionModelImplCopyWithImpl<$Res>
    extends _$SubmissionModelCopyWithImpl<$Res, _$SubmissionModelImpl>
    implements _$$SubmissionModelImplCopyWith<$Res> {
  __$$SubmissionModelImplCopyWithImpl(
      _$SubmissionModelImpl _value, $Res Function(_$SubmissionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userid = null,
    Object? attemptnumber = null,
    Object? timecreated = null,
    Object? timemodified = null,
    Object? status = null,
    Object? groupid = null,
    Object? assignment = freezed,
    Object? latest = freezed,
    Object? plugins = freezed,
    Object? gradingstatus = freezed,
    Object? timestarted = freezed,
  }) {
    return _then(_$SubmissionModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userid: null == userid
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as int,
      attemptnumber: null == attemptnumber
          ? _value.attemptnumber
          : attemptnumber // ignore: cast_nullable_to_non_nullable
              as int,
      timecreated: null == timecreated
          ? _value.timecreated
          : timecreated // ignore: cast_nullable_to_non_nullable
              as int,
      timemodified: null == timemodified
          ? _value.timemodified
          : timemodified // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SubmissionStatus,
      groupid: null == groupid
          ? _value.groupid
          : groupid // ignore: cast_nullable_to_non_nullable
              as int,
      assignment: freezed == assignment
          ? _value.assignment
          : assignment // ignore: cast_nullable_to_non_nullable
              as int?,
      latest: freezed == latest
          ? _value.latest
          : latest // ignore: cast_nullable_to_non_nullable
              as int?,
      plugins: freezed == plugins
          ? _value._plugins
          : plugins // ignore: cast_nullable_to_non_nullable
              as List<SubmissionPluginModel>?,
      gradingstatus: freezed == gradingstatus
          ? _value.gradingstatus
          : gradingstatus // ignore: cast_nullable_to_non_nullable
              as SubmissionGradingStatus?,
      timestarted: freezed == timestarted
          ? _value.timestarted
          : timestarted // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubmissionModelImpl implements _SubmissionModel {
  const _$SubmissionModelImpl(
      {required this.id,
      required this.userid,
      required this.attemptnumber,
      required this.timecreated,
      required this.timemodified,
      required this.status,
      required this.groupid,
      this.assignment,
      this.latest,
      final List<SubmissionPluginModel>? plugins,
      this.gradingstatus,
      this.timestarted})
      : _plugins = plugins;

  factory _$SubmissionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubmissionModelImplFromJson(json);

  /// Submission id.
  @override
  final int id;

  /// Student id.
  @override
  final int userid;

  /// Attempt number.
  @override
  final int attemptnumber;

  /// Submission creation time.
  @override
  final int timecreated;

  /// Submission last modified time.
  @override
  final int timemodified;

  /// Submission status.
  @override
  final SubmissionStatus status;

  /// Group id.
  @override
  final int groupid;

  /// Assignment id.
  @override
  final int? assignment;

  /// Latest attempt.
  @override
  final int? latest;

  /// Plugins.
  final List<SubmissionPluginModel>? _plugins;

  /// Plugins.
  @override
  List<SubmissionPluginModel>? get plugins {
    final value = _plugins;
    if (value == null) return null;
    if (_plugins is EqualUnmodifiableListView) return _plugins;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Grading status.
  @override
  final SubmissionGradingStatus? gradingstatus;

  /// @since 4.0. Submission start time.
  @override
  final int? timestarted;

  @override
  String toString() {
    return 'SubmissionModel(id: $id, userid: $userid, attemptnumber: $attemptnumber, timecreated: $timecreated, timemodified: $timemodified, status: $status, groupid: $groupid, assignment: $assignment, latest: $latest, plugins: $plugins, gradingstatus: $gradingstatus, timestarted: $timestarted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmissionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userid, userid) || other.userid == userid) &&
            (identical(other.attemptnumber, attemptnumber) ||
                other.attemptnumber == attemptnumber) &&
            (identical(other.timecreated, timecreated) ||
                other.timecreated == timecreated) &&
            (identical(other.timemodified, timemodified) ||
                other.timemodified == timemodified) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.groupid, groupid) || other.groupid == groupid) &&
            (identical(other.assignment, assignment) ||
                other.assignment == assignment) &&
            (identical(other.latest, latest) || other.latest == latest) &&
            const DeepCollectionEquality().equals(other._plugins, _plugins) &&
            (identical(other.gradingstatus, gradingstatus) ||
                other.gradingstatus == gradingstatus) &&
            (identical(other.timestarted, timestarted) ||
                other.timestarted == timestarted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userid,
      attemptnumber,
      timecreated,
      timemodified,
      status,
      groupid,
      assignment,
      latest,
      const DeepCollectionEquality().hash(_plugins),
      gradingstatus,
      timestarted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmissionModelImplCopyWith<_$SubmissionModelImpl> get copyWith =>
      __$$SubmissionModelImplCopyWithImpl<_$SubmissionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubmissionModelImplToJson(
      this,
    );
  }
}

abstract class _SubmissionModel implements SubmissionModel {
  const factory _SubmissionModel(
      {required final int id,
      required final int userid,
      required final int attemptnumber,
      required final int timecreated,
      required final int timemodified,
      required final SubmissionStatus status,
      required final int groupid,
      final int? assignment,
      final int? latest,
      final List<SubmissionPluginModel>? plugins,
      final SubmissionGradingStatus? gradingstatus,
      final int? timestarted}) = _$SubmissionModelImpl;

  factory _SubmissionModel.fromJson(Map<String, dynamic> json) =
      _$SubmissionModelImpl.fromJson;

  @override

  /// Submission id.
  int get id;
  @override

  /// Student id.
  int get userid;
  @override

  /// Attempt number.
  int get attemptnumber;
  @override

  /// Submission creation time.
  int get timecreated;
  @override

  /// Submission last modified time.
  int get timemodified;
  @override

  /// Submission status.
  SubmissionStatus get status;
  @override

  /// Group id.
  int get groupid;
  @override

  /// Assignment id.
  int? get assignment;
  @override

  /// Latest attempt.
  int? get latest;
  @override

  /// Plugins.
  List<SubmissionPluginModel>? get plugins;
  @override

  /// Grading status.
  SubmissionGradingStatus? get gradingstatus;
  @override

  /// @since 4.0. Submission start time.
  int? get timestarted;
  @override
  @JsonKey(ignore: true)
  _$$SubmissionModelImplCopyWith<_$SubmissionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SubmissionGradeModel _$SubmissionGradeModelFromJson(Map<String, dynamic> json) {
  return _SubmissionGradeModel.fromJson(json);
}

/// @nodoc
mixin _$SubmissionGradeModel {
  /// Grade id.
  int get id => throw _privateConstructorUsedError;

  /// Assignment id.
  int? get assignment => throw _privateConstructorUsedError;

  /// Student id.
  int get userid => throw _privateConstructorUsedError;

  /// Attempt number.
  int get attemptnumber => throw _privateConstructorUsedError;

  /// Grade creation time.
  int get timecreated => throw _privateConstructorUsedError;

  /// Grade last modified time.
  int get timemodified => throw _privateConstructorUsedError;

  /// Grader, -1 if grader is hidden.
  int get grader => throw _privateConstructorUsedError;

  /// Grade.
  String get grade => throw _privateConstructorUsedError;

  /// Grade rendered into a format suitable for display.
  String? get gradefordisplay => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubmissionGradeModelCopyWith<SubmissionGradeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmissionGradeModelCopyWith<$Res> {
  factory $SubmissionGradeModelCopyWith(SubmissionGradeModel value,
          $Res Function(SubmissionGradeModel) then) =
      _$SubmissionGradeModelCopyWithImpl<$Res, SubmissionGradeModel>;
  @useResult
  $Res call(
      {int id,
      int? assignment,
      int userid,
      int attemptnumber,
      int timecreated,
      int timemodified,
      int grader,
      String grade,
      String? gradefordisplay});
}

/// @nodoc
class _$SubmissionGradeModelCopyWithImpl<$Res,
        $Val extends SubmissionGradeModel>
    implements $SubmissionGradeModelCopyWith<$Res> {
  _$SubmissionGradeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? assignment = freezed,
    Object? userid = null,
    Object? attemptnumber = null,
    Object? timecreated = null,
    Object? timemodified = null,
    Object? grader = null,
    Object? grade = null,
    Object? gradefordisplay = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      assignment: freezed == assignment
          ? _value.assignment
          : assignment // ignore: cast_nullable_to_non_nullable
              as int?,
      userid: null == userid
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as int,
      attemptnumber: null == attemptnumber
          ? _value.attemptnumber
          : attemptnumber // ignore: cast_nullable_to_non_nullable
              as int,
      timecreated: null == timecreated
          ? _value.timecreated
          : timecreated // ignore: cast_nullable_to_non_nullable
              as int,
      timemodified: null == timemodified
          ? _value.timemodified
          : timemodified // ignore: cast_nullable_to_non_nullable
              as int,
      grader: null == grader
          ? _value.grader
          : grader // ignore: cast_nullable_to_non_nullable
              as int,
      grade: null == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as String,
      gradefordisplay: freezed == gradefordisplay
          ? _value.gradefordisplay
          : gradefordisplay // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubmissionGradeModelImplCopyWith<$Res>
    implements $SubmissionGradeModelCopyWith<$Res> {
  factory _$$SubmissionGradeModelImplCopyWith(_$SubmissionGradeModelImpl value,
          $Res Function(_$SubmissionGradeModelImpl) then) =
      __$$SubmissionGradeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int? assignment,
      int userid,
      int attemptnumber,
      int timecreated,
      int timemodified,
      int grader,
      String grade,
      String? gradefordisplay});
}

/// @nodoc
class __$$SubmissionGradeModelImplCopyWithImpl<$Res>
    extends _$SubmissionGradeModelCopyWithImpl<$Res, _$SubmissionGradeModelImpl>
    implements _$$SubmissionGradeModelImplCopyWith<$Res> {
  __$$SubmissionGradeModelImplCopyWithImpl(_$SubmissionGradeModelImpl _value,
      $Res Function(_$SubmissionGradeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? assignment = freezed,
    Object? userid = null,
    Object? attemptnumber = null,
    Object? timecreated = null,
    Object? timemodified = null,
    Object? grader = null,
    Object? grade = null,
    Object? gradefordisplay = freezed,
  }) {
    return _then(_$SubmissionGradeModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      assignment: freezed == assignment
          ? _value.assignment
          : assignment // ignore: cast_nullable_to_non_nullable
              as int?,
      userid: null == userid
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as int,
      attemptnumber: null == attemptnumber
          ? _value.attemptnumber
          : attemptnumber // ignore: cast_nullable_to_non_nullable
              as int,
      timecreated: null == timecreated
          ? _value.timecreated
          : timecreated // ignore: cast_nullable_to_non_nullable
              as int,
      timemodified: null == timemodified
          ? _value.timemodified
          : timemodified // ignore: cast_nullable_to_non_nullable
              as int,
      grader: null == grader
          ? _value.grader
          : grader // ignore: cast_nullable_to_non_nullable
              as int,
      grade: null == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as String,
      gradefordisplay: freezed == gradefordisplay
          ? _value.gradefordisplay
          : gradefordisplay // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubmissionGradeModelImpl implements _SubmissionGradeModel {
  const _$SubmissionGradeModelImpl(
      {required this.id,
      this.assignment,
      required this.userid,
      required this.attemptnumber,
      required this.timecreated,
      required this.timemodified,
      required this.grader,
      required this.grade,
      this.gradefordisplay});

  factory _$SubmissionGradeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubmissionGradeModelImplFromJson(json);

  /// Grade id.
  @override
  final int id;

  /// Assignment id.
  @override
  final int? assignment;

  /// Student id.
  @override
  final int userid;

  /// Attempt number.
  @override
  final int attemptnumber;

  /// Grade creation time.
  @override
  final int timecreated;

  /// Grade last modified time.
  @override
  final int timemodified;

  /// Grader, -1 if grader is hidden.
  @override
  final int grader;

  /// Grade.
  @override
  final String grade;

  /// Grade rendered into a format suitable for display.
  @override
  final String? gradefordisplay;

  @override
  String toString() {
    return 'SubmissionGradeModel(id: $id, assignment: $assignment, userid: $userid, attemptnumber: $attemptnumber, timecreated: $timecreated, timemodified: $timemodified, grader: $grader, grade: $grade, gradefordisplay: $gradefordisplay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmissionGradeModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.assignment, assignment) ||
                other.assignment == assignment) &&
            (identical(other.userid, userid) || other.userid == userid) &&
            (identical(other.attemptnumber, attemptnumber) ||
                other.attemptnumber == attemptnumber) &&
            (identical(other.timecreated, timecreated) ||
                other.timecreated == timecreated) &&
            (identical(other.timemodified, timemodified) ||
                other.timemodified == timemodified) &&
            (identical(other.grader, grader) || other.grader == grader) &&
            (identical(other.grade, grade) || other.grade == grade) &&
            (identical(other.gradefordisplay, gradefordisplay) ||
                other.gradefordisplay == gradefordisplay));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, assignment, userid,
      attemptnumber, timecreated, timemodified, grader, grade, gradefordisplay);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmissionGradeModelImplCopyWith<_$SubmissionGradeModelImpl>
      get copyWith =>
          __$$SubmissionGradeModelImplCopyWithImpl<_$SubmissionGradeModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubmissionGradeModelImplToJson(
      this,
    );
  }
}

abstract class _SubmissionGradeModel implements SubmissionGradeModel {
  const factory _SubmissionGradeModel(
      {required final int id,
      final int? assignment,
      required final int userid,
      required final int attemptnumber,
      required final int timecreated,
      required final int timemodified,
      required final int grader,
      required final String grade,
      final String? gradefordisplay}) = _$SubmissionGradeModelImpl;

  factory _SubmissionGradeModel.fromJson(Map<String, dynamic> json) =
      _$SubmissionGradeModelImpl.fromJson;

  @override

  /// Grade id.
  int get id;
  @override

  /// Assignment id.
  int? get assignment;
  @override

  /// Student id.
  int get userid;
  @override

  /// Attempt number.
  int get attemptnumber;
  @override

  /// Grade creation time.
  int get timecreated;
  @override

  /// Grade last modified time.
  int get timemodified;
  @override

  /// Grader, -1 if grader is hidden.
  int get grader;
  @override

  /// Grade.
  String get grade;
  @override

  /// Grade rendered into a format suitable for display.
  String? get gradefordisplay;
  @override
  @JsonKey(ignore: true)
  _$$SubmissionGradeModelImplCopyWith<_$SubmissionGradeModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SubmissionPluginModel _$SubmissionPluginModelFromJson(
    Map<String, dynamic> json) {
  return _SubmissionPluginModel.fromJson(json);
}

/// @nodoc
mixin _$SubmissionPluginModel {
  /// Submission plugin type.
  String get type => throw _privateConstructorUsedError;

  /// Submission plugin name.
  String get name => throw _privateConstructorUsedError;

  /// Fileareas.
  List<SubmissionPluginFileAreaModel>? get fileareas =>
      throw _privateConstructorUsedError;

  /// Editorfields.
  List<SubmissionPluginEditorFieldModel>? get editorfields =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubmissionPluginModelCopyWith<SubmissionPluginModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmissionPluginModelCopyWith<$Res> {
  factory $SubmissionPluginModelCopyWith(SubmissionPluginModel value,
          $Res Function(SubmissionPluginModel) then) =
      _$SubmissionPluginModelCopyWithImpl<$Res, SubmissionPluginModel>;
  @useResult
  $Res call(
      {String type,
      String name,
      List<SubmissionPluginFileAreaModel>? fileareas,
      List<SubmissionPluginEditorFieldModel>? editorfields});
}

/// @nodoc
class _$SubmissionPluginModelCopyWithImpl<$Res,
        $Val extends SubmissionPluginModel>
    implements $SubmissionPluginModelCopyWith<$Res> {
  _$SubmissionPluginModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? name = null,
    Object? fileareas = freezed,
    Object? editorfields = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fileareas: freezed == fileareas
          ? _value.fileareas
          : fileareas // ignore: cast_nullable_to_non_nullable
              as List<SubmissionPluginFileAreaModel>?,
      editorfields: freezed == editorfields
          ? _value.editorfields
          : editorfields // ignore: cast_nullable_to_non_nullable
              as List<SubmissionPluginEditorFieldModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubmissionPluginModelImplCopyWith<$Res>
    implements $SubmissionPluginModelCopyWith<$Res> {
  factory _$$SubmissionPluginModelImplCopyWith(
          _$SubmissionPluginModelImpl value,
          $Res Function(_$SubmissionPluginModelImpl) then) =
      __$$SubmissionPluginModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type,
      String name,
      List<SubmissionPluginFileAreaModel>? fileareas,
      List<SubmissionPluginEditorFieldModel>? editorfields});
}

/// @nodoc
class __$$SubmissionPluginModelImplCopyWithImpl<$Res>
    extends _$SubmissionPluginModelCopyWithImpl<$Res,
        _$SubmissionPluginModelImpl>
    implements _$$SubmissionPluginModelImplCopyWith<$Res> {
  __$$SubmissionPluginModelImplCopyWithImpl(_$SubmissionPluginModelImpl _value,
      $Res Function(_$SubmissionPluginModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? name = null,
    Object? fileareas = freezed,
    Object? editorfields = freezed,
  }) {
    return _then(_$SubmissionPluginModelImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fileareas: freezed == fileareas
          ? _value._fileareas
          : fileareas // ignore: cast_nullable_to_non_nullable
              as List<SubmissionPluginFileAreaModel>?,
      editorfields: freezed == editorfields
          ? _value._editorfields
          : editorfields // ignore: cast_nullable_to_non_nullable
              as List<SubmissionPluginEditorFieldModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubmissionPluginModelImpl implements _SubmissionPluginModel {
  const _$SubmissionPluginModelImpl(
      {required this.type,
      required this.name,
      final List<SubmissionPluginFileAreaModel>? fileareas,
      final List<SubmissionPluginEditorFieldModel>? editorfields})
      : _fileareas = fileareas,
        _editorfields = editorfields;

  factory _$SubmissionPluginModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubmissionPluginModelImplFromJson(json);

  /// Submission plugin type.
  @override
  final String type;

  /// Submission plugin name.
  @override
  final String name;

  /// Fileareas.
  final List<SubmissionPluginFileAreaModel>? _fileareas;

  /// Fileareas.
  @override
  List<SubmissionPluginFileAreaModel>? get fileareas {
    final value = _fileareas;
    if (value == null) return null;
    if (_fileareas is EqualUnmodifiableListView) return _fileareas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Editorfields.
  final List<SubmissionPluginEditorFieldModel>? _editorfields;

  /// Editorfields.
  @override
  List<SubmissionPluginEditorFieldModel>? get editorfields {
    final value = _editorfields;
    if (value == null) return null;
    if (_editorfields is EqualUnmodifiableListView) return _editorfields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SubmissionPluginModel(type: $type, name: $name, fileareas: $fileareas, editorfields: $editorfields)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmissionPluginModelImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._fileareas, _fileareas) &&
            const DeepCollectionEquality()
                .equals(other._editorfields, _editorfields));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      name,
      const DeepCollectionEquality().hash(_fileareas),
      const DeepCollectionEquality().hash(_editorfields));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmissionPluginModelImplCopyWith<_$SubmissionPluginModelImpl>
      get copyWith => __$$SubmissionPluginModelImplCopyWithImpl<
          _$SubmissionPluginModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubmissionPluginModelImplToJson(
      this,
    );
  }
}

abstract class _SubmissionPluginModel implements SubmissionPluginModel {
  const factory _SubmissionPluginModel(
          {required final String type,
          required final String name,
          final List<SubmissionPluginFileAreaModel>? fileareas,
          final List<SubmissionPluginEditorFieldModel>? editorfields}) =
      _$SubmissionPluginModelImpl;

  factory _SubmissionPluginModel.fromJson(Map<String, dynamic> json) =
      _$SubmissionPluginModelImpl.fromJson;

  @override

  /// Submission plugin type.
  String get type;
  @override

  /// Submission plugin name.
  String get name;
  @override

  /// Fileareas.
  List<SubmissionPluginFileAreaModel>? get fileareas;
  @override

  /// Editorfields.
  List<SubmissionPluginEditorFieldModel>? get editorfields;
  @override
  @JsonKey(ignore: true)
  _$$SubmissionPluginModelImplCopyWith<_$SubmissionPluginModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SubmissionPluginFileAreaModel _$SubmissionPluginFileAreaModelFromJson(
    Map<String, dynamic> json) {
  return _SubmissionPluginFileAreaModel.fromJson(json);
}

/// @nodoc
mixin _$SubmissionPluginFileAreaModel {
  /// File area.
  String get area => throw _privateConstructorUsedError;

  /// Files.
  List<FileModel>? get files => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubmissionPluginFileAreaModelCopyWith<SubmissionPluginFileAreaModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmissionPluginFileAreaModelCopyWith<$Res> {
  factory $SubmissionPluginFileAreaModelCopyWith(
          SubmissionPluginFileAreaModel value,
          $Res Function(SubmissionPluginFileAreaModel) then) =
      _$SubmissionPluginFileAreaModelCopyWithImpl<$Res,
          SubmissionPluginFileAreaModel>;
  @useResult
  $Res call({String area, List<FileModel>? files});
}

/// @nodoc
class _$SubmissionPluginFileAreaModelCopyWithImpl<$Res,
        $Val extends SubmissionPluginFileAreaModel>
    implements $SubmissionPluginFileAreaModelCopyWith<$Res> {
  _$SubmissionPluginFileAreaModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? area = null,
    Object? files = freezed,
  }) {
    return _then(_value.copyWith(
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String,
      files: freezed == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<FileModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubmissionPluginFileAreaModelImplCopyWith<$Res>
    implements $SubmissionPluginFileAreaModelCopyWith<$Res> {
  factory _$$SubmissionPluginFileAreaModelImplCopyWith(
          _$SubmissionPluginFileAreaModelImpl value,
          $Res Function(_$SubmissionPluginFileAreaModelImpl) then) =
      __$$SubmissionPluginFileAreaModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String area, List<FileModel>? files});
}

/// @nodoc
class __$$SubmissionPluginFileAreaModelImplCopyWithImpl<$Res>
    extends _$SubmissionPluginFileAreaModelCopyWithImpl<$Res,
        _$SubmissionPluginFileAreaModelImpl>
    implements _$$SubmissionPluginFileAreaModelImplCopyWith<$Res> {
  __$$SubmissionPluginFileAreaModelImplCopyWithImpl(
      _$SubmissionPluginFileAreaModelImpl _value,
      $Res Function(_$SubmissionPluginFileAreaModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? area = null,
    Object? files = freezed,
  }) {
    return _then(_$SubmissionPluginFileAreaModelImpl(
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String,
      files: freezed == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<FileModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubmissionPluginFileAreaModelImpl
    implements _SubmissionPluginFileAreaModel {
  const _$SubmissionPluginFileAreaModelImpl(
      {required this.area, final List<FileModel>? files})
      : _files = files;

  factory _$SubmissionPluginFileAreaModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SubmissionPluginFileAreaModelImplFromJson(json);

  /// File area.
  @override
  final String area;

  /// Files.
  final List<FileModel>? _files;

  /// Files.
  @override
  List<FileModel>? get files {
    final value = _files;
    if (value == null) return null;
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SubmissionPluginFileAreaModel(area: $area, files: $files)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmissionPluginFileAreaModelImpl &&
            (identical(other.area, area) || other.area == area) &&
            const DeepCollectionEquality().equals(other._files, _files));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, area, const DeepCollectionEquality().hash(_files));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmissionPluginFileAreaModelImplCopyWith<
          _$SubmissionPluginFileAreaModelImpl>
      get copyWith => __$$SubmissionPluginFileAreaModelImplCopyWithImpl<
          _$SubmissionPluginFileAreaModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubmissionPluginFileAreaModelImplToJson(
      this,
    );
  }
}

abstract class _SubmissionPluginFileAreaModel
    implements SubmissionPluginFileAreaModel {
  const factory _SubmissionPluginFileAreaModel(
      {required final String area,
      final List<FileModel>? files}) = _$SubmissionPluginFileAreaModelImpl;

  factory _SubmissionPluginFileAreaModel.fromJson(Map<String, dynamic> json) =
      _$SubmissionPluginFileAreaModelImpl.fromJson;

  @override

  /// File area.
  String get area;
  @override

  /// Files.
  List<FileModel>? get files;
  @override
  @JsonKey(ignore: true)
  _$$SubmissionPluginFileAreaModelImplCopyWith<
          _$SubmissionPluginFileAreaModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SubmissionPluginEditorFieldModel _$SubmissionPluginEditorFieldModelFromJson(
    Map<String, dynamic> json) {
  return _SubmissionPluginEditorFieldModel.fromJson(json);
}

/// @nodoc
mixin _$SubmissionPluginEditorFieldModel {
  /// Field name.
  String get name => throw _privateConstructorUsedError;

  /// Field description.
  String get description => throw _privateConstructorUsedError;

  /// Field value.
  String get text => throw _privateConstructorUsedError;

  /// Text format (1 = HTML, 0 = MOODLE, 2 = PLAIN or 4 = MARKDOWN).
  int get format => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubmissionPluginEditorFieldModelCopyWith<SubmissionPluginEditorFieldModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmissionPluginEditorFieldModelCopyWith<$Res> {
  factory $SubmissionPluginEditorFieldModelCopyWith(
          SubmissionPluginEditorFieldModel value,
          $Res Function(SubmissionPluginEditorFieldModel) then) =
      _$SubmissionPluginEditorFieldModelCopyWithImpl<$Res,
          SubmissionPluginEditorFieldModel>;
  @useResult
  $Res call({String name, String description, String text, int format});
}

/// @nodoc
class _$SubmissionPluginEditorFieldModelCopyWithImpl<$Res,
        $Val extends SubmissionPluginEditorFieldModel>
    implements $SubmissionPluginEditorFieldModelCopyWith<$Res> {
  _$SubmissionPluginEditorFieldModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? text = null,
    Object? format = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubmissionPluginEditorFieldModelImplCopyWith<$Res>
    implements $SubmissionPluginEditorFieldModelCopyWith<$Res> {
  factory _$$SubmissionPluginEditorFieldModelImplCopyWith(
          _$SubmissionPluginEditorFieldModelImpl value,
          $Res Function(_$SubmissionPluginEditorFieldModelImpl) then) =
      __$$SubmissionPluginEditorFieldModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String description, String text, int format});
}

/// @nodoc
class __$$SubmissionPluginEditorFieldModelImplCopyWithImpl<$Res>
    extends _$SubmissionPluginEditorFieldModelCopyWithImpl<$Res,
        _$SubmissionPluginEditorFieldModelImpl>
    implements _$$SubmissionPluginEditorFieldModelImplCopyWith<$Res> {
  __$$SubmissionPluginEditorFieldModelImplCopyWithImpl(
      _$SubmissionPluginEditorFieldModelImpl _value,
      $Res Function(_$SubmissionPluginEditorFieldModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? text = null,
    Object? format = null,
  }) {
    return _then(_$SubmissionPluginEditorFieldModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubmissionPluginEditorFieldModelImpl
    implements _SubmissionPluginEditorFieldModel {
  const _$SubmissionPluginEditorFieldModelImpl(
      {required this.name,
      required this.description,
      required this.text,
      required this.format});

  factory _$SubmissionPluginEditorFieldModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SubmissionPluginEditorFieldModelImplFromJson(json);

  /// Field name.
  @override
  final String name;

  /// Field description.
  @override
  final String description;

  /// Field value.
  @override
  final String text;

  /// Text format (1 = HTML, 0 = MOODLE, 2 = PLAIN or 4 = MARKDOWN).
  @override
  final int format;

  @override
  String toString() {
    return 'SubmissionPluginEditorFieldModel(name: $name, description: $description, text: $text, format: $format)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmissionPluginEditorFieldModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.format, format) || other.format == format));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, description, text, format);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmissionPluginEditorFieldModelImplCopyWith<
          _$SubmissionPluginEditorFieldModelImpl>
      get copyWith => __$$SubmissionPluginEditorFieldModelImplCopyWithImpl<
          _$SubmissionPluginEditorFieldModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubmissionPluginEditorFieldModelImplToJson(
      this,
    );
  }
}

abstract class _SubmissionPluginEditorFieldModel
    implements SubmissionPluginEditorFieldModel {
  const factory _SubmissionPluginEditorFieldModel(
      {required final String name,
      required final String description,
      required final String text,
      required final int format}) = _$SubmissionPluginEditorFieldModelImpl;

  factory _SubmissionPluginEditorFieldModel.fromJson(
          Map<String, dynamic> json) =
      _$SubmissionPluginEditorFieldModelImpl.fromJson;

  @override

  /// Field name.
  String get name;
  @override

  /// Field description.
  String get description;
  @override

  /// Field value.
  String get text;
  @override

  /// Text format (1 = HTML, 0 = MOODLE, 2 = PLAIN or 4 = MARKDOWN).
  int get format;
  @override
  @JsonKey(ignore: true)
  _$$SubmissionPluginEditorFieldModelImplCopyWith<
          _$SubmissionPluginEditorFieldModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
