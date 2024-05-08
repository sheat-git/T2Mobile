import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:collection/collection.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:html/dom.dart';
import 'package:html/parser.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:t2mobile/providers/auth/moodle_cookie.dart';
import 'package:t2mobile/providers/auth/portal_cookie.dart';
import 'package:t2mobile/providers/user_id.dart';
import 'package:t2mobile/utilities/cookies.dart';
import 'package:t2mobile/utilities/extensions/set_cookie_manager.dart';

part 'moodle_web.g.dart';

@Riverpod()
MoodleWebService moodleWeb(MoodleWebRef ref) => MoodleWebService(ref);

class MoodleWebService {
  final MoodleWebRef _ref;

  MoodleWebService(this._ref);

  static const host = "t2schola.titech.ac.jp";
  static const url = 'https://$host';

  late final _cookieJar = CookieJar();

  Future<void> _setPortalCookie(String value) => _cookieJar.saveFromResponse(
        Uri.parse(PortalAuthentication.url),
        [Cookies.portal(value)],
      );

  Future<void> _setMoodleCookie(String value) => _cookieJar.saveFromResponse(
        Uri.https(MoodleCookie.domain),
        [Cookies.moodle(value)],
      );

  Future<void> _saveMoodleCookie() async {
    final cookies = await _cookieJar.loadForRequest(Uri.parse(url));
    final cookie =
        cookies.firstWhereOrNull((cookie) => cookie.name == MoodleCookie.name);
    if (cookie != null) {
      _ref.read(moodleCookieProvider.notifier).set(cookie.value);
    }
  }

  Future<Response> _fetch({
    required String path,
    String? method,
    Map<String, dynamic>? headers,
    String? contentType,
    Map<String, dynamic>? queryParameters,
    Object? data,
  }) async {
    final dio = Dio(BaseOptions(
      baseUrl: url,
      method: method,
      headers: headers,
      contentType: contentType,
      queryParameters: queryParameters,
    ))
      ..setCookieJar(_cookieJar);

    await (
      _ref.read(portalCookieProvider.future).then(_setPortalCookie),
      _ref
          .read(moodleCookieProvider.future)
          .then((value) => value != null ? _setMoodleCookie(value) : null),
    ).wait;

    final response = await dio.request(path, data: data);
    // Moodle Cookieはログアウトにならずに期限切れにされ、更新が必要になることがある
    unawaited(_saveMoodleCookie());
    if (response.realUri.host == host) return response;

    final newPortalCookie =
        await _ref.read(portalCookieProvider.notifier).login();
    await _setPortalCookie(newPortalCookie);

    final response2 = await dio.request(path, data: data);
    unawaited(_saveMoodleCookie());
    return response2;
  }

  Future<Document> getDashboard({
    String? lang,
    String? year,
    String? quarter,
  }) async {
    final data = year != null && quarter != null
        ? {
            'year': year,
            'quota': quarter,
            'search': 1,
          }
        : null;
    final response = await _fetch(
      path: '/my/index.php',
      method: data != null ? 'POST' : 'GET',
      queryParameters: {
        if (lang != null) 'lang': lang,
      },
      contentType: 'application/x-www-form-urlencoded',
      data: data,
    );
    return parse(response.data);
  }

  Future<String> getToken() async {
    final response = await _fetch(
      path:
          '/admin/tool/mobile/launch.php?service=moodle_mobile_app&passport=${(Random().nextDouble() * 1000)}',
      headers: {
        'User-Agent':
            'Mozilla/5.0 (iPhone; CPU iPhone OS 13_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Mobile/15E148 Safari/604.1',
      },
    );
    _saveMoodleUserId(response.data.toString());
    final document = parse(response.data);
    final href = document.querySelector('#launchapp')!.attributes['href']!;
    final base64 = href.split('token=')[1];
    final decoded = utf8.decode(base64Decode(base64));
    return decoded.split(':::')[1];
  }

  void _saveMoodleUserId(String data) {
    final exp =
        RegExp(r'https://t2schola.titech.ac.jp/user/profile.php?id=(\d+)');
    final match = exp.firstMatch(data);
    if (match != null) {
      final id = int.parse(match.group(1)!);
      _ref.read(userIdProvider.notifier).set(id);
    }
  }
}
