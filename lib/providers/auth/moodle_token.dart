import 'dart:async';
import 'dart:developer';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:t2mobile/services/moodle_web.dart';
import 'package:t2mobile/services/secure_storage.dart';

part 'moodle_token.g.dart';

@riverpod
class MoodleToken extends _$MoodleToken {
  @override
  Future<String> build() async {
    final secureStorage = ref.read(secureStorageProvider);
    final token = await secureStorage.getMoodleToken() ?? await _fetchToken();

    log('Moodle token: $token');

    return token;
  }

  Future<String>? _cache;

  Future<String> login() async {
    final cache = _cache;
    if (cache != null) return await cache;

    final newCache = () async {
      state = const AsyncLoading();
      final value = await AsyncValue.guard(() => _fetchToken());
      state = value;
      final token = value.requireValue;
      return token;
    }();

    _cache = newCache;
    return await newCache.whenComplete(() => _cache = null);
  }

  Future<String> _fetchToken() async {
    final moodleWeb = ref.read(moodleWebProvider);
    final token = await moodleWeb.getToken();
    final secureStorage = ref.read(secureStorageProvider);
    unawaited(secureStorage.setMoodleToken(token));
    return token;
  }
}
