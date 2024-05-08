import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:t2mobile/services/moodle_api/models/message.dart';
import 'package:t2mobile/services/moodle_api/models/warning.dart';

part 'messages.freezed.dart';
part 'messages.g.dart';

/// `AddonMessagesGetMessagesResult`
@freezed
class MessagesModel with _$MessagesModel {
  const factory MessagesModel({
    required List<MessageModel> messages,
    List<WarningModel>? warnings,
  }) = _MessagesModel;

  factory MessagesModel.fromJson(Map<String, dynamic> json) =>
      _$MessagesModelFromJson(json);
}
