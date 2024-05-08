import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:t2mobile/providers/base/loadable_notifier.dart';
import 'package:t2mobile/services/shared_preferences.dart';

part 'settings.freezed.dart';
part 'settings.g.dart';

@freezed
class SettingsData with _$SettingsData {
  const factory SettingsData({
    @Default(ThemeMode.system) ThemeMode themeMode,
    @Default(false) bool darkIsTrueBlack,
    @Default(false) bool hideWebBottomBar,
    @Default(T2Locale.system) T2Locale locale,
    @Default(false) bool showStateBanner,
  }) = _SettingsData;
}

enum T2Locale {
  system,
  ja,
  en;

  Locale? toLocale() => switch (this) {
        T2Locale.system => null,
        T2Locale.ja => const Locale('ja'),
        T2Locale.en => const Locale('en'),
      };
}

@Riverpod(keepAlive: true)
class Settings extends _$Settings implements LoadableNotifier {
  @override
  SettingsData build() => const SettingsData();

  @override
  Future<void> load() async {
    final sharedPreferences = ref.read(sharedPreferencesProvider);
    final (
      themeData,
      darkIsTrueBlack,
      hideWebBottomBar,
      locale,
      showStateBanner,
    ) = await (
      sharedPreferences.getThemeMode(),
      sharedPreferences.getDarkIsTrueBlack(),
      sharedPreferences.getHideWebBottomBar(),
      sharedPreferences.getLocale(),
      sharedPreferences.getShowStateBanner(),
    ).wait;
    state = SettingsData(
      themeMode: themeData,
      darkIsTrueBlack: darkIsTrueBlack,
      hideWebBottomBar: hideWebBottomBar,
      locale: locale,
      showStateBanner: showStateBanner,
    );
  }

  Future<void> setThemeMode(ThemeMode themeMode) async {
    state = state.copyWith(themeMode: themeMode);
    await ref.read(sharedPreferencesProvider).setThemeMode(themeMode);
  }

  Future<void> setDarkIsTrueBlack(bool darkIsTrueBlack) async {
    state = state.copyWith(darkIsTrueBlack: darkIsTrueBlack);
    await ref
        .read(sharedPreferencesProvider)
        .setDarkIsTrueBlack(darkIsTrueBlack);
  }

  Future<void> setHideWebBottomBar(bool hideWebBottomBar) async {
    state = state.copyWith(hideWebBottomBar: hideWebBottomBar);
    await ref
        .read(sharedPreferencesProvider)
        .setHideWebBottomBar(hideWebBottomBar);
  }

  Future<void> setLocale(T2Locale locale) async {
    state = state.copyWith(locale: locale);
    await ref.read(sharedPreferencesProvider).setLocale(locale);
  }

  Future<void> setShowStateBanner(bool showStateBanner) async {
    state = state.copyWith(showStateBanner: showStateBanner);
    await ref
        .read(sharedPreferencesProvider)
        .setShowStateBanner(showStateBanner);
  }
}
