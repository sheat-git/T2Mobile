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

/// @nodoc
mixin _$CoursesData {
  Map<int, List<Course>> get courses => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CoursesDataCopyWith<CoursesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoursesDataCopyWith<$Res> {
  factory $CoursesDataCopyWith(
          CoursesData value, $Res Function(CoursesData) then) =
      _$CoursesDataCopyWithImpl<$Res, CoursesData>;
  @useResult
  $Res call({Map<int, List<Course>> courses, DateTime updatedAt});
}

/// @nodoc
class _$CoursesDataCopyWithImpl<$Res, $Val extends CoursesData>
    implements $CoursesDataCopyWith<$Res> {
  _$CoursesDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courses = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      courses: null == courses
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as Map<int, List<Course>>,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoursesDataImplCopyWith<$Res>
    implements $CoursesDataCopyWith<$Res> {
  factory _$$CoursesDataImplCopyWith(
          _$CoursesDataImpl value, $Res Function(_$CoursesDataImpl) then) =
      __$$CoursesDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<int, List<Course>> courses, DateTime updatedAt});
}

/// @nodoc
class __$$CoursesDataImplCopyWithImpl<$Res>
    extends _$CoursesDataCopyWithImpl<$Res, _$CoursesDataImpl>
    implements _$$CoursesDataImplCopyWith<$Res> {
  __$$CoursesDataImplCopyWithImpl(
      _$CoursesDataImpl _value, $Res Function(_$CoursesDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courses = null,
    Object? updatedAt = null,
  }) {
    return _then(_$CoursesDataImpl(
      courses: null == courses
          ? _value._courses
          : courses // ignore: cast_nullable_to_non_nullable
              as Map<int, List<Course>>,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$CoursesDataImpl implements _CoursesData {
  const _$CoursesDataImpl(
      {required final Map<int, List<Course>> courses, required this.updatedAt})
      : _courses = courses;

  final Map<int, List<Course>> _courses;
  @override
  Map<int, List<Course>> get courses {
    if (_courses is EqualUnmodifiableMapView) return _courses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_courses);
  }

  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'CoursesData._(courses: $courses, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoursesDataImpl &&
            const DeepCollectionEquality().equals(other._courses, _courses) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_courses), updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoursesDataImplCopyWith<_$CoursesDataImpl> get copyWith =>
      __$$CoursesDataImplCopyWithImpl<_$CoursesDataImpl>(this, _$identity);
}

abstract class _CoursesData implements CoursesData {
  const factory _CoursesData(
      {required final Map<int, List<Course>> courses,
      required final DateTime updatedAt}) = _$CoursesDataImpl;

  @override
  Map<int, List<Course>> get courses;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$CoursesDataImplCopyWith<_$CoursesDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
