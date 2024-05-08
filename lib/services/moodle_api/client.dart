import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:t2mobile/services/moodle_api/models/courses.dart';
import 'package:t2mobile/services/moodle_api/models/enrolled_course.dart';
import 'package:t2mobile/services/moodle_api/models/course_category.dart';
import 'package:t2mobile/services/moodle_api/models/course_content.dart';
import 'package:t2mobile/services/moodle_api/models/messages.dart';

part 'client.g.dart';

@RestApi(baseUrl: 'https://t2schola.titech.ac.jp/webservice/rest/server.php')
abstract class MoodleApiClient {
  factory MoodleApiClient(Dio dio, {String baseUrl}) = _MoodleApiClient;

  @POST('/?wsfunction=core_course_get_courses_by_field')
  @FormUrlEncoded()
  Future<CoursesModel> getCourses({
    @Field() required String field,
    @Field('value') required String data,
  });

  /// Get course categories
  @POST('/?wsfunction=core_course_get_categories')
  @FormUrlEncoded()
  Future<List<CourseCategoryModel>> getCourseCategories({
    @Field('criteria[0][key]') String? criteriaKey,
    @Field('criteria[0][value]') String? criteriaValue,
    @Field() int? addsubcategories,
  });

  @POST('/?wsfunction=core_course_get_contents')
  @FormUrlEncoded()
  Future<List<CourseContentModel>> getCourseContents({
    @Field() required int courseid,
  });

  /// Get enrolled courses
  @POST('/?wsfunction=core_enrol_get_users_courses')
  @FormUrlEncoded()
  Future<List<EnrolledCourseModel>> getEnrolledCourses({
    @Field() required int userid,
    @Field() bool? returnusercount,
  });

  /// Get messages
  ///
  /// The [useridto] parameter specifies the user ID who received the message.
  /// The [useridfrom] parameter specifies the user ID who sent the message. Use -10 or -20 for no-reply or support user. Default is 0.
  /// The [type] parameter specifies the type of message to return. Expected values are: 'notifications', 'conversations', and 'both'. Default is 'both'.
  /// The [read] parameter specifies the read status: 1 for read messages, 0 for unread messages, and 2 for both. Default is 1.
  /// The [newestfirst] parameter determines the order of messages: true for newest first, false for oldest first. Default is true.
  /// The [limitfrom] parameter specifies the offset for the messages. Default is 0.
  /// The [limitnum] parameter specifies the number of messages to return. Default is 0.
  @POST('/?wsfunction=core_message_get_messages')
  @FormUrlEncoded()
  Future<MessagesModel> getMessages({
    @Field() required int useridto,
    @Field() int? useridfrom,
    @Field() String? type,
    @Field() int? read,
    @Field() int? newestfirst,
    @Field() int? limitfrom,
    @Field() int? limitnum,
  });
}
