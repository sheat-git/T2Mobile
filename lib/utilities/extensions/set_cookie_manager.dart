import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:t2mobile/utilities/extensions/to_options.dart';

extension SetCookieManager on Dio {
  void setCookieJar(CookieJar cookieJar) {
    options.followRedirects = false;
    options.validateStatus =
        (status) => status != null && status >= 200 && status < 400;
    interceptors.add(CookieManager(cookieJar));
    interceptors.add(_RedirectInterceptor(this));
  }
}

class _RedirectInterceptor extends Interceptor {
  final Dio dio;

  _RedirectInterceptor(this.dio);

  @override
  Future<void> onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) async {
    if (response.statusCode == null || !_isRedirect(response.statusCode!)) {
      handler.next(response);
      return;
    }

    final location = response.headers.value('location');
    final requestOptions = response.requestOptions;
    if (location == null) {
      handler.reject(DioException(
        requestOptions: requestOptions,
        response: response,
        error: Exception("Redirect location is null"),
      ));
      return;
    }
    final rawUri = requestOptions.uri.toString();
    final options = requestOptions.toOptions();
    options.headers?.remove('cookie');
    options.headers?.remove('content-length');

    final redirectedResponse = await dio.get(
      _parseHttpLocation(rawUri, location),
      options: options,
    );
    redirectedResponse.isRedirect = true;
    handler.next(redirectedResponse);
  }

  bool _isRedirect(int statusCode) => statusCode >= 300 && statusCode < 400;

  String _parseHttpLocation(final String rawUri, final String location) {
    var location1 = location;
    String uri;
    if (!location1.contains('://')) {
      final schemaEndIndex = rawUri.indexOf('://') + 3;
      var index = location1.startsWith('/')
          ? rawUri.indexOf('/', schemaEndIndex)
          : rawUri.substring(schemaEndIndex).lastIndexOf('/') + schemaEndIndex;
      if (index == -1) index = rawUri.length - 1;
      var baseUrl = rawUri.substring(0, index + 1);
      if (baseUrl.endsWith('/')) {
        baseUrl = baseUrl.substring(0, baseUrl.length - 1);
      }
      if (location1.startsWith('/')) {
        location1 = location1.substring(1);
      }
      uri = '$baseUrl/$location1';
    } else {
      uri = location1;
    }
    return uri;
  }
}
