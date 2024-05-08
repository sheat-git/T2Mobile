// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'web_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WebViewStateData {
  WebUri? get url => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WebViewStateDataCopyWith<WebViewStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebViewStateDataCopyWith<$Res> {
  factory $WebViewStateDataCopyWith(
          WebViewStateData value, $Res Function(WebViewStateData) then) =
      _$WebViewStateDataCopyWithImpl<$Res, WebViewStateData>;
  @useResult
  $Res call({WebUri? url});
}

/// @nodoc
class _$WebViewStateDataCopyWithImpl<$Res, $Val extends WebViewStateData>
    implements $WebViewStateDataCopyWith<$Res> {
  _$WebViewStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as WebUri?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WebViewStateDataImplCopyWith<$Res>
    implements $WebViewStateDataCopyWith<$Res> {
  factory _$$WebViewStateDataImplCopyWith(_$WebViewStateDataImpl value,
          $Res Function(_$WebViewStateDataImpl) then) =
      __$$WebViewStateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WebUri? url});
}

/// @nodoc
class __$$WebViewStateDataImplCopyWithImpl<$Res>
    extends _$WebViewStateDataCopyWithImpl<$Res, _$WebViewStateDataImpl>
    implements _$$WebViewStateDataImplCopyWith<$Res> {
  __$$WebViewStateDataImplCopyWithImpl(_$WebViewStateDataImpl _value,
      $Res Function(_$WebViewStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_$WebViewStateDataImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as WebUri?,
    ));
  }
}

/// @nodoc

class _$WebViewStateDataImpl implements _WebViewStateData {
  const _$WebViewStateDataImpl({this.url});

  @override
  final WebUri? url;

  @override
  String toString() {
    return 'WebViewStateData(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebViewStateDataImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WebViewStateDataImplCopyWith<_$WebViewStateDataImpl> get copyWith =>
      __$$WebViewStateDataImplCopyWithImpl<_$WebViewStateDataImpl>(
          this, _$identity);
}

abstract class _WebViewStateData implements WebViewStateData {
  const factory _WebViewStateData({final WebUri? url}) = _$WebViewStateDataImpl;

  @override
  WebUri? get url;
  @override
  @JsonKey(ignore: true)
  _$$WebViewStateDataImplCopyWith<_$WebViewStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
