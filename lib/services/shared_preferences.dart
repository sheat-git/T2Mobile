import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:t2mobile/providers/settings.dart';

part 'shared_preferences.g.dart';

@riverpod
SharedPreferencesService sharedPreferences(SharedPreferencesRef _) =>
    const SharedPreferencesService();

abstract class SharedPreferencesKeys {
  static const themeMode = 'THEME_MODE';
  static const darkIsTrueBlack = 'DARK_IS_TRUE_BLACK';
  static const hideWebBottomBar = 'HIDE_WEB_BOTTOM_BAR';
  static const locale = 'LOCALE';
  static const showStateBanner = 'SHOW_STATE_BANNER';
  static const moodleUserId = 'MOODLE_USER_ID';
}

class SharedPreferencesService {
  const SharedPreferencesService();

  Future<ThemeMode> getThemeMode() async {
    final prefs = await SharedPreferences.getInstance();
    final themeMode = prefs.getString(SharedPreferencesKeys.themeMode);
    switch (themeMode) {
      case 'light':
        return ThemeMode.light;
      case 'dark':
        return ThemeMode.dark;
      case 'system':
        return ThemeMode.system;
      default:
        return const SettingsData().themeMode;
    }
  }

  Future<void> setThemeMode(ThemeMode themeMode) async {
    final prefs = await SharedPreferences.getInstance();
    final value = switch (themeMode) {
      ThemeMode.light => 'light',
      ThemeMode.dark => 'dark',
      ThemeMode.system => 'system',
    };
    await prefs.setString(SharedPreferencesKeys.themeMode, value);
  }

  Future<bool> getDarkIsTrueBlack() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(SharedPreferencesKeys.darkIsTrueBlack) ??
        const SettingsData().darkIsTrueBlack;
  }

  Future<void> setDarkIsTrueBlack(bool darkIsTrueBlack) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(SharedPreferencesKeys.darkIsTrueBlack, darkIsTrueBlack);
  }

  Future<bool> getHideWebBottomBar() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(SharedPreferencesKeys.hideWebBottomBar) ??
        const SettingsData().hideWebBottomBar;
  }

  Future<void> setHideWebBottomBar(bool hideWebBottomBar) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(
        SharedPreferencesKeys.hideWebBottomBar, hideWebBottomBar);
  }

  Future<T2Locale> getLocale() async {
    final prefs = await SharedPreferences.getInstance();
    final locale = prefs.getString(SharedPreferencesKeys.locale);
    switch (locale) {
      case 'ja':
        return T2Locale.ja;
      case 'en':
        return T2Locale.en;
      case 'system':
        return T2Locale.system;
      default:
        return const SettingsData().locale;
    }
  }

  Future<void> setLocale(T2Locale locale) async {
    final prefs = await SharedPreferences.getInstance();
    final value = switch (locale) {
      T2Locale.ja => 'ja',
      T2Locale.en => 'en',
      T2Locale.system => 'system',
    };
    await prefs.setString(SharedPreferencesKeys.locale, value);
  }

  Future<bool> getShowStateBanner() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(SharedPreferencesKeys.showStateBanner) ??
        const SettingsData().showStateBanner;
  }

  Future<void> setShowStateBanner(bool showStateBanner) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(SharedPreferencesKeys.showStateBanner, showStateBanner);
  }

  Future<int?> getMoodleUserId() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(SharedPreferencesKeys.moodleUserId);
  }

  Future<void> setMoodleUserId(int? moodleUserId) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(SharedPreferencesKeys.moodleUserId, moodleUserId ?? 0);
  }
}
