import 'package:dio/dio.dart';

extension FollowRedirects<T> on Future<Response<T>> {
  Future<Response<T>> followRedirects({
    Dio? dio,
  }) =>
      catchError((error) {
        if (error is DioException &&
            error.type == DioExceptionType.badResponse) {
          final response = error.response!;
          final statusCode = response.statusCode;
          final location = response.headers.value('location');
          if (statusCode != null &&
              statusCode >= 300 &&
              statusCode < 400 &&
              location != null) {
            return (dio ?? Dio()).get<T>(location);
          }
        }
        return error;
      });
}
