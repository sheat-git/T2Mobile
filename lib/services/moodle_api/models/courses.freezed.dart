// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'courses.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CoursesModel _$CoursesModelFromJson(Map<String, dynamic> json) {
  return _CoursesModel.fromJson(json);
}

/// @nodoc
mixin _$CoursesModel {
  List<SearchedCourseModel> get courses => throw _privateConstructorUsedError;
  List<WarningModel>? get warnings => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoursesModelCopyWith<CoursesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoursesModelCopyWith<$Res> {
  factory $CoursesModelCopyWith(
          CoursesModel value, $Res Function(CoursesModel) then) =
      _$CoursesModelCopyWithImpl<$Res, CoursesModel>;
  @useResult
  $Res call({List<SearchedCourseModel> courses, List<WarningModel>? warnings});
}

/// @nodoc
class _$CoursesModelCopyWithImpl<$Res, $Val extends CoursesModel>
    implements $CoursesModelCopyWith<$Res> {
  _$CoursesModelCopyWithImpl(this._value, this._then);

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
              as List<SearchedCourseModel>,
      warnings: freezed == warnings
          ? _value.warnings
          : warnings // ignore: cast_nullable_to_non_nullable
              as List<WarningModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoursesModelImplCopyWith<$Res>
    implements $CoursesModelCopyWith<$Res> {
  factory _$$CoursesModelImplCopyWith(
          _$CoursesModelImpl value, $Res Function(_$CoursesModelImpl) then) =
      __$$CoursesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SearchedCourseModel> courses, List<WarningModel>? warnings});
}

/// @nodoc
class __$$CoursesModelImplCopyWithImpl<$Res>
    extends _$CoursesModelCopyWithImpl<$Res, _$CoursesModelImpl>
    implements _$$CoursesModelImplCopyWith<$Res> {
  __$$CoursesModelImplCopyWithImpl(
      _$CoursesModelImpl _value, $Res Function(_$CoursesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courses = null,
    Object? warnings = freezed,
  }) {
    return _then(_$CoursesModelImpl(
      courses: null == courses
          ? _value._courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<SearchedCourseModel>,
      warnings: freezed == warnings
          ? _value._warnings
          : warnings // ignore: cast_nullable_to_non_nullable
              as List<WarningModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoursesModelImpl implements _CoursesModel {
  const _$CoursesModelImpl(
      {required final List<SearchedCourseModel> courses,
      final List<WarningModel>? warnings})
      : _courses = courses,
        _warnings = warnings;

  factory _$CoursesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoursesModelImplFromJson(json);

  final List<SearchedCourseModel> _courses;
  @override
  List<SearchedCourseModel> get courses {
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
    return 'CoursesModel(courses: $courses, warnings: $warnings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoursesModelImpl &&
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
  _$$CoursesModelImplCopyWith<_$CoursesModelImpl> get copyWith =>
      __$$CoursesModelImplCopyWithImpl<_$CoursesModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoursesModelImplToJson(
      this,
    );
  }
}

abstract class _CoursesModel implements CoursesModel {
  const factory _CoursesModel(
      {required final List<SearchedCourseModel> courses,
      final List<WarningModel>? warnings}) = _$CoursesModelImpl;

  factory _CoursesModel.fromJson(Map<String, dynamic> json) =
      _$CoursesModelImpl.fromJson;

  @override
  List<SearchedCourseModel> get courses;
  @override
  List<WarningModel>? get warnings;
  @override
  @JsonKey(ignore: true)
  _$$CoursesModelImplCopyWith<_$CoursesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
