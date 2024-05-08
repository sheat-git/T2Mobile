import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';

extension UseProxyman on Dio {
  void useProxyman() {
    if (kDebugMode) {
      httpClientAdapter = IOHttpClientAdapter(
        createHttpClient: () => HttpClient()
          ..findProxy = ((_) => 'PROXY localhost:9090')
          ..badCertificateCallback =
              (X509Certificate cert, String host, int port) => true,
      );
    }
  }
}
