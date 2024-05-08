// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ButtonOptions {
  void Function() get onPressed => throw _privateConstructorUsedError;
  IconData? get icon => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ButtonOptionsCopyWith<ButtonOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ButtonOptionsCopyWith<$Res> {
  factory $ButtonOptionsCopyWith(
          ButtonOptions value, $Res Function(ButtonOptions) then) =
      _$ButtonOptionsCopyWithImpl<$Res, ButtonOptions>;
  @useResult
  $Res call({void Function() onPressed, IconData? icon, String? label});
}

/// @nodoc
class _$ButtonOptionsCopyWithImpl<$Res, $Val extends ButtonOptions>
    implements $ButtonOptionsCopyWith<$Res> {
  _$ButtonOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onPressed = null,
    Object? icon = freezed,
    Object? label = freezed,
  }) {
    return _then(_value.copyWith(
      onPressed: null == onPressed
          ? _value.onPressed
          : onPressed // ignore: cast_nullable_to_non_nullable
              as void Function(),
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ButtonOptionsImplCopyWith<$Res>
    implements $ButtonOptionsCopyWith<$Res> {
  factory _$$ButtonOptionsImplCopyWith(
          _$ButtonOptionsImpl value, $Res Function(_$ButtonOptionsImpl) then) =
      __$$ButtonOptionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({void Function() onPressed, IconData? icon, String? label});
}

/// @nodoc
class __$$ButtonOptionsImplCopyWithImpl<$Res>
    extends _$ButtonOptionsCopyWithImpl<$Res, _$ButtonOptionsImpl>
    implements _$$ButtonOptionsImplCopyWith<$Res> {
  __$$ButtonOptionsImplCopyWithImpl(
      _$ButtonOptionsImpl _value, $Res Function(_$ButtonOptionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onPressed = null,
    Object? icon = freezed,
    Object? label = freezed,
  }) {
    return _then(_$ButtonOptionsImpl(
      onPressed: null == onPressed
          ? _value.onPressed
          : onPressed // ignore: cast_nullable_to_non_nullable
              as void Function(),
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ButtonOptionsImpl implements _ButtonOptions {
  const _$ButtonOptionsImpl({required this.onPressed, this.icon, this.label});

  @override
  final void Function() onPressed;
  @override
  final IconData? icon;
  @override
  final String? label;

  @override
  String toString() {
    return 'ButtonOptions(onPressed: $onPressed, icon: $icon, label: $label)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ButtonOptionsImpl &&
            (identical(other.onPressed, onPressed) ||
                other.onPressed == onPressed) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.label, label) || other.label == label));
  }

  @override
  int get hashCode => Object.hash(runtimeType, onPressed, icon, label);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ButtonOptionsImplCopyWith<_$ButtonOptionsImpl> get copyWith =>
      __$$ButtonOptionsImplCopyWithImpl<_$ButtonOptionsImpl>(this, _$identity);
}

abstract class _ButtonOptions implements ButtonOptions {
  const factory _ButtonOptions(
      {required final void Function() onPressed,
      final IconData? icon,
      final String? label}) = _$ButtonOptionsImpl;

  @override
  void Function() get onPressed;
  @override
  IconData? get icon;
  @override
  String? get label;
  @override
  @JsonKey(ignore: true)
  _$$ButtonOptionsImplCopyWith<_$ButtonOptionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
