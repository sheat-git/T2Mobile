import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:t2mobile/services/secure_storage.dart';

part 'moodle_cookie.g.dart';

@riverpod
class MoodleCookie extends _$MoodleCookie {
  static const name = 'MoodleSession';
  static const domain = 't2schola.titech.ac.jp';
  static const path = '/';
  static const isSecure = true;

  @override
  Future<String?> build() async {
    ref.listenSelf((previous, next) async {
      final value = next.valueOrNull;
      if (value != null && value != previous?.valueOrNull) {
        await (
          CookieManager.instance().setCookie(
            url: WebUri(domain),
            name: name,
            value: value,
            path: path,
            isSecure: isSecure,
          ),
          ref.read(secureStorageProvider).setMoodleCookie(value),
        ).wait;
      }
    });

    final secureStorage = ref.read(secureStorageProvider);
    return await secureStorage.getMoodleCookie();
  }

  void set(String value) => state = AsyncData(value);
}
