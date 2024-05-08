import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:t2mobile/providers/auth/moodle_token.dart';
import 'package:t2mobile/providers/user_id.dart';
import 'package:t2mobile/services/moodle_api/client.dart';
import 'package:t2mobile/services/moodle_api/models/enrolled_course.dart';
import 'package:t2mobile/services/moodle_api/models/course_category.dart';
import 'package:t2mobile/services/moodle_api/models/course_content.dart';
import 'package:t2mobile/services/moodle_api/models/message.dart';
import 'package:t2mobile/services/moodle_api/models/searched_course.dart';
import 'package:t2mobile/utilities/extensions/to_options.dart';

part 'moodle_api.g.dart';

@riverpod
MoodleApiService moodleApi(MoodleApiRef ref) => MoodleApiService(ref);

class MoodleApiService {
  final MoodleApiRef _ref;
  final MoodleApiClient _client;

  const MoodleApiService._({
    required MoodleApiRef ref,
    required MoodleApiClient client,
  })  : _ref = ref,
        _client = client;

  factory MoodleApiService(MoodleApiRef ref) {
    final dio = Dio();
    dio.interceptors.add(_MoodleApiInterceptor(ref));
    return MoodleApiService._(
      ref: ref,
      client: MoodleApiClient(dio),
    );
  }

  Future<SearchedCourseModel> getCourse(int id) async {
    final result = await _client.getCourses(field: 'id', data: id.toString());
    return result.courses.single;
  }

  Future<CourseCategoryModel> getCourseCategory(int id) async {
    final result = await _client.getCourseCategories(
      criteriaKey: 'id',
      criteriaValue: id.toString(),
      addsubcategories: 0,
    );
    return result.single;
  }

  Future<List<CourseContentModel>> getCourseContents(int courseId) async {
    final result = await _client.getCourseContents(courseid: courseId);
    return result;
  }

  Future<List<EnrolledCourseModel>> getCourses() async {
    final userId = await _ref.read(userIdProvider.future);
    final result = await _client.getEnrolledCourses(userid: userId);
    return result;
  }

  Future<List<MessageModel>> getNotifications() async {
    final userId = await _ref.read(userIdProvider.future);
    final result = await _client.getMessages(
      useridto: userId,
      type: 'notifications',
    );
    return result.messages;
  }
}

class _MoodleApiInterceptor extends Interceptor {
  final MoodleApiRef ref;

  const _MoodleApiInterceptor(this.ref);

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    try {
      final token = await ref.read(moodleTokenProvider.future);
      options.queryParameters['wstoken'] = token;
      options.queryParameters['moodlewsrestformat'] = 'json';
    } catch (error, stackTrace) {
      if (error is DioException) {
        handler.reject(error);
      } else {
        handler.reject(DioException(
          requestOptions: options,
          error: error,
          stackTrace: stackTrace,
        ));
      }
      return;
    }
    handler.next(options);
  }

  @override
  Future<void> onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) async {
    try {
      final dynamic json;
      if (response.data is String) {
        json = jsonDecode(response.data);
      } else {
        json = response.data;
      }
      if (json is Map && json['errorcode'] == 'invalidtoken') {
        final token = await ref.read(moodleTokenProvider.notifier).login();
        final requestOptions = response.requestOptions;
        final uri = requestOptions.uri.replace(queryParameters: {
          ...requestOptions.uri.queryParameters,
          'wstoken': token,
        });
        final dio = Dio();
        response = await dio.requestUri(
          uri,
          options: requestOptions.toOptions(),
        );
      }
    } catch (error, stackTrace) {
      if (error is DioException) {
        handler.reject(error);
      } else {
        handler.reject(DioException(
          requestOptions: response.requestOptions,
          error: error,
          stackTrace: stackTrace,
        ));
      }
      return;
    }
    handler.next(response);
  }
}
