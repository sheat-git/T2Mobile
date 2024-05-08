import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:t2mobile/services/moodle_api/models/message.dart';
import 'package:t2mobile/services/moodle_api/moodle_api.dart';

part 'notifications.g.dart';

@riverpod
class Notifications extends _$Notifications {
  @override
  Future<List<MessageModel>> build() async {
    final moodleApi = ref.read(moodleApiProvider);
    final notifications = await moodleApi.getNotifications();
    return notifications;
  }
}
