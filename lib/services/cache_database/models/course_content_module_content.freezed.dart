// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_content_module_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CourseContentModuleContent _$CourseContentModuleContentFromJson(
    Map<String, dynamic> json) {
  return _CourseContentModuleContent.fromJson(json);
}

/// @nodoc
mixin _$CourseContentModuleContent {
  String get url => throw _privateConstructorUsedError;
  DateTime get modifiedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseContentModuleContentCopyWith<CourseContentModuleContent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseContentModuleContentCopyWith<$Res> {
  factory $CourseContentModuleContentCopyWith(CourseContentModuleContent value,
          $Res Function(CourseContentModuleContent) then) =
      _$CourseContentModuleContentCopyWithImpl<$Res,
          CourseContentModuleContent>;
  @useResult
  $Res call({String url, DateTime modifiedAt});
}

/// @nodoc
class _$CourseContentModuleContentCopyWithImpl<$Res,
        $Val extends CourseContentModuleContent>
    implements $CourseContentModuleContentCopyWith<$Res> {
  _$CourseContentModuleContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? modifiedAt = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      modifiedAt: null == modifiedAt
          ? _value.modifiedAt
          : modifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseContentModuleContentImplCopyWith<$Res>
    implements $CourseContentModuleContentCopyWith<$Res> {
  factory _$$CourseContentModuleContentImplCopyWith(
          _$CourseContentModuleContentImpl value,
          $Res Function(_$CourseContentModuleContentImpl) then) =
      __$$CourseContentModuleContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, DateTime modifiedAt});
}

/// @nodoc
class __$$CourseContentModuleContentImplCopyWithImpl<$Res>
    extends _$CourseContentModuleContentCopyWithImpl<$Res,
        _$CourseContentModuleContentImpl>
    implements _$$CourseContentModuleContentImplCopyWith<$Res> {
  __$$CourseContentModuleContentImplCopyWithImpl(
      _$CourseContentModuleContentImpl _value,
      $Res Function(_$CourseContentModuleContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? modifiedAt = null,
  }) {
    return _then(_$CourseContentModuleContentImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      modifiedAt: null == modifiedAt
          ? _value.modifiedAt
          : modifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseContentModuleContentImpl implements _CourseContentModuleContent {
  const _$CourseContentModuleContentImpl(
      {required this.url, required this.modifiedAt});

  factory _$CourseContentModuleContentImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CourseContentModuleContentImplFromJson(json);

  @override
  final String url;
  @override
  final DateTime modifiedAt;

  @override
  String toString() {
    return 'CourseContentModuleContent(url: $url, modifiedAt: $modifiedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseContentModuleContentImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.modifiedAt, modifiedAt) ||
                other.modifiedAt == modifiedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, modifiedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseContentModuleContentImplCopyWith<_$CourseContentModuleContentImpl>
      get copyWith => __$$CourseContentModuleContentImplCopyWithImpl<
          _$CourseContentModuleContentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseContentModuleContentImplToJson(
      this,
    );
  }
}

abstract class _CourseContentModuleContent
    implements CourseContentModuleContent {
  const factory _CourseContentModuleContent(
      {required final String url,
      required final DateTime modifiedAt}) = _$CourseContentModuleContentImpl;

  factory _CourseContentModuleContent.fromJson(Map<String, dynamic> json) =
      _$CourseContentModuleContentImpl.fromJson;

  @override
  String get url;
  @override
  DateTime get modifiedAt;
  @override
  @JsonKey(ignore: true)
  _$$CourseContentModuleContentImplCopyWith<_$CourseContentModuleContentImpl>
      get copyWith => throw _privateConstructorUsedError;
}
