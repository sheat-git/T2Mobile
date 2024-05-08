import 'package:collection/collection.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart' as d;
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:html/dom.dart';
import 'package:html/parser.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:t2mobile/providers/account.dart';
import 'package:t2mobile/services/secure_storage.dart';
import 'package:t2mobile/utilities/exceptions/matrix_unavailable.dart';
import 'package:t2mobile/utilities/extensions/follow_redirect.dart';

part 'portal_cookie.g.dart';

@riverpod
class PortalCookie extends _$PortalCookie {
  static const name = 'AUTH_SESSION_ID';
  static const domain = '.titech.ac.jp';
  static const path = '/';
  static const isHttpOnly = true;

  @override
  Future<String> build() async {
    ref.listenSelf((previous, next) async {
      final value = next.valueOrNull;
      if (value != null && value != previous?.valueOrNull) {
        await (
          CookieManager.instance().setCookie(
            url: WebUri(PortalAuthentication.url),
            domain: domain,
            name: name,
            value: value,
            path: path,
            isHttpOnly: isHttpOnly,
          ),
          ref.read(secureStorageProvider).setPortalCookie(value),
        ).wait;
      }
    });

    final secureStorage = ref.read(secureStorageProvider);
    final cookie = await secureStorage.getPortalCookie();
    if (cookie != null) return cookie;

    final account = ref.read(accountProvider)!;
    return await account.authenticatePortal();
  }

  void set(String value) => state = AsyncData(value);

  Future<String>? _cache;

  Future<String> login() async {
    final cache = _cache;
    if (cache != null) return await cache;

    final newCache = () async {
      state = const AsyncLoading();
      final value = await AsyncValue.guard(() async {
        final account = ref.read(accountProvider)!;
        return await account.authenticatePortal();
      });
      state = value;
      return value.requireValue;
    }();

    _cache = newCache;
    return await newCache.whenComplete(() => _cache = null);
  }
}

extension PortalAuthentication on AccountData {
  static const url = 'https://portal.nap.gsic.titech.ac.jp/GetAccess/Login';

  Future<String> authenticatePortal() async {
    final dio = Dio(BaseOptions(headers: {'referer': url}));
    final cookieJar = CookieJar();
    dio.interceptors.add(d.CookieManager(cookieJar));

    final accountResponse = await dio.get(
      url,
      queryParameters: {
        'Template': 'userpass_key',
        'AUTHMETHOD': 'UserPassword',
      },
    );
    final accountDocument = parse(accountResponse.data);
    final accountInputs = _extractInputs(accountDocument);
    accountInputs['usr_name'] = id;
    accountInputs['usr_password'] = password;

    final someResponse = await dio
        .post(
          url,
          data: Uri(queryParameters: accountInputs).query,
          options: Options(contentType: Headers.formUrlEncodedContentType),
        )
        .followRedirects(dio: dio);
    final someDocument = parse(someResponse.data);
    final someDocumentLabel =
        someDocument.querySelector('#authentication')?.innerHtml ?? '';

    final Response matrixResponse;
    final Document matrixDocument;
    final matrixInputs = <String, String>{};

    if (someDocumentLabel.contains('Select Label for OTP') ||
        someDocumentLabel.contains('Token Only')) {
      final optionElement = someDocument
          .querySelectorAll('option')
          .firstWhereOrNull((e) => e.attributes['value'] == 'GridAuthOption');
      if (optionElement == null) throw const MatrixUnavailableException();

      final someInputs = _extractInputs(someDocument);

      for (final selectElement in someDocument.querySelectorAll('select')) {
        final name = selectElement.attributes['name'];
        if (name == null) continue;
        if (selectElement.children.contains(optionElement)) {
          someInputs[name] = 'GridAuthOption';
        } else {
          final value =
              selectElement.querySelector('option')?.attributes['value'];
          if (value != null) someInputs[name] = value;
        }
      }

      matrixResponse = await dio
          .post(
            url,
            data: Uri(queryParameters: someInputs).query,
            options: Options(
              contentType: Headers.formUrlEncodedContentType,
            ),
          )
          .followRedirects(dio: dio);
      matrixDocument = parse(matrixResponse.data);
      matrixInputs['message6'] = 'NoOtherIGAuthOption';
    } else {
      matrixResponse = someResponse;
      matrixDocument = someDocument;
    }

    matrixInputs.addAll(_extractInputs(matrixDocument));
    RegExp(r'\[([A-J]),([0-7])\]')
        .allMatches(matrixResponse.data.toString())
        .forEachIndexed((i, match) {
      matrixInputs['message${i + 3}'] =
          matrix.get(match[1]!, int.parse(match[2]!));
    });
    await dio
        .post(
          url,
          data: Uri(queryParameters: matrixInputs).query,
          options: Options(contentType: Headers.formUrlEncodedContentType),
        )
        .followRedirects();

    final cookies = await cookieJar.loadForRequest(Uri.parse(url));
    return cookies.firstWhere((c) => c.name == PortalCookie.name).value;
  }

  Map<String, String> _extractInputs(Document document) =>
      Map.fromEntries(document.querySelectorAll('input').map((e) {
        final name = e.attributes['name'];
        if (name == null) return null;
        return MapEntry(name, e.attributes['value'] ?? '');
      }).nonNulls);
}
