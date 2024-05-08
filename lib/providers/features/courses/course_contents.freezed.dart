// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_contents.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CourseSectionData {
  CourseContent get content => throw _privateConstructorUsedError;
  List<CourseContentModule> get modules => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CourseSectionDataCopyWith<CourseSectionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseSectionDataCopyWith<$Res> {
  factory $CourseSectionDataCopyWith(
          CourseSectionData value, $Res Function(CourseSectionData) then) =
      _$CourseSectionDataCopyWithImpl<$Res, CourseSectionData>;
  @useResult
  $Res call({CourseContent content, List<CourseContentModule> modules});
}

/// @nodoc
class _$CourseSectionDataCopyWithImpl<$Res, $Val extends CourseSectionData>
    implements $CourseSectionDataCopyWith<$Res> {
  _$CourseSectionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = freezed,
    Object? modules = null,
  }) {
    return _then(_value.copyWith(
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as CourseContent,
      modules: null == modules
          ? _value.modules
          : modules // ignore: cast_nullable_to_non_nullable
              as List<CourseContentModule>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseSectionDataImplCopyWith<$Res>
    implements $CourseSectionDataCopyWith<$Res> {
  factory _$$CourseSectionDataImplCopyWith(_$CourseSectionDataImpl value,
          $Res Function(_$CourseSectionDataImpl) then) =
      __$$CourseSectionDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CourseContent content, List<CourseContentModule> modules});
}

/// @nodoc
class __$$CourseSectionDataImplCopyWithImpl<$Res>
    extends _$CourseSectionDataCopyWithImpl<$Res, _$CourseSectionDataImpl>
    implements _$$CourseSectionDataImplCopyWith<$Res> {
  __$$CourseSectionDataImplCopyWithImpl(_$CourseSectionDataImpl _value,
      $Res Function(_$CourseSectionDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = freezed,
    Object? modules = null,
  }) {
    return _then(_$CourseSectionDataImpl(
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as CourseContent,
      modules: null == modules
          ? _value._modules
          : modules // ignore: cast_nullable_to_non_nullable
              as List<CourseContentModule>,
    ));
  }
}

/// @nodoc

class _$CourseSectionDataImpl implements _CourseSectionData {
  const _$CourseSectionDataImpl(
      {required this.content, required final List<CourseContentModule> modules})
      : _modules = modules;

  @override
  final CourseContent content;
  final List<CourseContentModule> _modules;
  @override
  List<CourseContentModule> get modules {
    if (_modules is EqualUnmodifiableListView) return _modules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_modules);
  }

  @override
  String toString() {
    return 'CourseSectionData(content: $content, modules: $modules)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseSectionDataImpl &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other._modules, _modules));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(_modules));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseSectionDataImplCopyWith<_$CourseSectionDataImpl> get copyWith =>
      __$$CourseSectionDataImplCopyWithImpl<_$CourseSectionDataImpl>(
          this, _$identity);
}

abstract class _CourseSectionData implements CourseSectionData {
  const factory _CourseSectionData(
          {required final CourseContent content,
          required final List<CourseContentModule> modules}) =
      _$CourseSectionDataImpl;

  @override
  CourseContent get content;
  @override
  List<CourseContentModule> get modules;
  @override
  @JsonKey(ignore: true)
  _$$CourseSectionDataImplCopyWith<_$CourseSectionDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CourseSectionsData {
  List<CourseSectionData> get sections => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CourseSectionsDataCopyWith<CourseSectionsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseSectionsDataCopyWith<$Res> {
  factory $CourseSectionsDataCopyWith(
          CourseSectionsData value, $Res Function(CourseSectionsData) then) =
      _$CourseSectionsDataCopyWithImpl<$Res, CourseSectionsData>;
  @useResult
  $Res call({List<CourseSectionData> sections, DateTime updatedAt});
}

/// @nodoc
class _$CourseSectionsDataCopyWithImpl<$Res, $Val extends CourseSectionsData>
    implements $CourseSectionsDataCopyWith<$Res> {
  _$CourseSectionsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sections = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      sections: null == sections
          ? _value.sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<CourseSectionData>,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseSectionsDataImplCopyWith<$Res>
    implements $CourseSectionsDataCopyWith<$Res> {
  factory _$$CourseSectionsDataImplCopyWith(_$CourseSectionsDataImpl value,
          $Res Function(_$CourseSectionsDataImpl) then) =
      __$$CourseSectionsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CourseSectionData> sections, DateTime updatedAt});
}

/// @nodoc
class __$$CourseSectionsDataImplCopyWithImpl<$Res>
    extends _$CourseSectionsDataCopyWithImpl<$Res, _$CourseSectionsDataImpl>
    implements _$$CourseSectionsDataImplCopyWith<$Res> {
  __$$CourseSectionsDataImplCopyWithImpl(_$CourseSectionsDataImpl _value,
      $Res Function(_$CourseSectionsDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sections = null,
    Object? updatedAt = null,
  }) {
    return _then(_$CourseSectionsDataImpl(
      sections: null == sections
          ? _value._sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<CourseSectionData>,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$CourseSectionsDataImpl implements _CourseSectionsData {
  const _$CourseSectionsDataImpl(
      {required final List<CourseSectionData> sections,
      required this.updatedAt})
      : _sections = sections;

  final List<CourseSectionData> _sections;
  @override
  List<CourseSectionData> get sections {
    if (_sections is EqualUnmodifiableListView) return _sections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sections);
  }

  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'CourseSectionsData._(sections: $sections, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseSectionsDataImpl &&
            const DeepCollectionEquality().equals(other._sections, _sections) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_sections), updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseSectionsDataImplCopyWith<_$CourseSectionsDataImpl> get copyWith =>
      __$$CourseSectionsDataImplCopyWithImpl<_$CourseSectionsDataImpl>(
          this, _$identity);
}

abstract class _CourseSectionsData implements CourseSectionsData {
  const factory _CourseSectionsData(
      {required final List<CourseSectionData> sections,
      required final DateTime updatedAt}) = _$CourseSectionsDataImpl;

  @override
  List<CourseSectionData> get sections;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$CourseSectionsDataImplCopyWith<_$CourseSectionsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
