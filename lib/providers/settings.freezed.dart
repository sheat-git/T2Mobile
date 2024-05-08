// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SettingsData {
  ThemeMode get themeMode => throw _privateConstructorUsedError;
  bool get darkIsTrueBlack => throw _privateConstructorUsedError;
  bool get hideWebBottomBar => throw _privateConstructorUsedError;
  T2Locale get locale => throw _privateConstructorUsedError;
  bool get showStateBanner => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsDataCopyWith<SettingsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsDataCopyWith<$Res> {
  factory $SettingsDataCopyWith(
          SettingsData value, $Res Function(SettingsData) then) =
      _$SettingsDataCopyWithImpl<$Res, SettingsData>;
  @useResult
  $Res call(
      {ThemeMode themeMode,
      bool darkIsTrueBlack,
      bool hideWebBottomBar,
      T2Locale locale,
      bool showStateBanner});
}

/// @nodoc
class _$SettingsDataCopyWithImpl<$Res, $Val extends SettingsData>
    implements $SettingsDataCopyWith<$Res> {
  _$SettingsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? darkIsTrueBlack = null,
    Object? hideWebBottomBar = null,
    Object? locale = null,
    Object? showStateBanner = null,
  }) {
    return _then(_value.copyWith(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      darkIsTrueBlack: null == darkIsTrueBlack
          ? _value.darkIsTrueBlack
          : darkIsTrueBlack // ignore: cast_nullable_to_non_nullable
              as bool,
      hideWebBottomBar: null == hideWebBottomBar
          ? _value.hideWebBottomBar
          : hideWebBottomBar // ignore: cast_nullable_to_non_nullable
              as bool,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as T2Locale,
      showStateBanner: null == showStateBanner
          ? _value.showStateBanner
          : showStateBanner // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SettingsDataImplCopyWith<$Res>
    implements $SettingsDataCopyWith<$Res> {
  factory _$$SettingsDataImplCopyWith(
          _$SettingsDataImpl value, $Res Function(_$SettingsDataImpl) then) =
      __$$SettingsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ThemeMode themeMode,
      bool darkIsTrueBlack,
      bool hideWebBottomBar,
      T2Locale locale,
      bool showStateBanner});
}

/// @nodoc
class __$$SettingsDataImplCopyWithImpl<$Res>
    extends _$SettingsDataCopyWithImpl<$Res, _$SettingsDataImpl>
    implements _$$SettingsDataImplCopyWith<$Res> {
  __$$SettingsDataImplCopyWithImpl(
      _$SettingsDataImpl _value, $Res Function(_$SettingsDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? darkIsTrueBlack = null,
    Object? hideWebBottomBar = null,
    Object? locale = null,
    Object? showStateBanner = null,
  }) {
    return _then(_$SettingsDataImpl(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      darkIsTrueBlack: null == darkIsTrueBlack
          ? _value.darkIsTrueBlack
          : darkIsTrueBlack // ignore: cast_nullable_to_non_nullable
              as bool,
      hideWebBottomBar: null == hideWebBottomBar
          ? _value.hideWebBottomBar
          : hideWebBottomBar // ignore: cast_nullable_to_non_nullable
              as bool,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as T2Locale,
      showStateBanner: null == showStateBanner
          ? _value.showStateBanner
          : showStateBanner // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SettingsDataImpl implements _SettingsData {
  const _$SettingsDataImpl(
      {this.themeMode = ThemeMode.system,
      this.darkIsTrueBlack = false,
      this.hideWebBottomBar = false,
      this.locale = T2Locale.system,
      this.showStateBanner = false});

  @override
  @JsonKey()
  final ThemeMode themeMode;
  @override
  @JsonKey()
  final bool darkIsTrueBlack;
  @override
  @JsonKey()
  final bool hideWebBottomBar;
  @override
  @JsonKey()
  final T2Locale locale;
  @override
  @JsonKey()
  final bool showStateBanner;

  @override
  String toString() {
    return 'SettingsData(themeMode: $themeMode, darkIsTrueBlack: $darkIsTrueBlack, hideWebBottomBar: $hideWebBottomBar, locale: $locale, showStateBanner: $showStateBanner)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsDataImpl &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode) &&
            (identical(other.darkIsTrueBlack, darkIsTrueBlack) ||
                other.darkIsTrueBlack == darkIsTrueBlack) &&
            (identical(other.hideWebBottomBar, hideWebBottomBar) ||
                other.hideWebBottomBar == hideWebBottomBar) &&
            (identical(other.locale, locale) || other.locale == locale) &&
            (identical(other.showStateBanner, showStateBanner) ||
                other.showStateBanner == showStateBanner));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeMode, darkIsTrueBlack,
      hideWebBottomBar, locale, showStateBanner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsDataImplCopyWith<_$SettingsDataImpl> get copyWith =>
      __$$SettingsDataImplCopyWithImpl<_$SettingsDataImpl>(this, _$identity);
}

abstract class _SettingsData implements SettingsData {
  const factory _SettingsData(
      {final ThemeMode themeMode,
      final bool darkIsTrueBlack,
      final bool hideWebBottomBar,
      final T2Locale locale,
      final bool showStateBanner}) = _$SettingsDataImpl;

  @override
  ThemeMode get themeMode;
  @override
  bool get darkIsTrueBlack;
  @override
  bool get hideWebBottomBar;
  @override
  T2Locale get locale;
  @override
  bool get showStateBanner;
  @override
  @JsonKey(ignore: true)
  _$$SettingsDataImplCopyWith<_$SettingsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
