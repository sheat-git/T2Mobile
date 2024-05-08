import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.freezed.dart';
part 'message.g.dart';

/// `AddonMessagesGetMessagesMessage`
@freezed
class MessageModel with _$MessageModel {
  const factory MessageModel({
    /// Message id.
    required int id,

    /// User from id.
    required int useridfrom,

    /// User to id.
    required int useridto,

    /// The message subject.
    required String subject,

    /// The message text formatted.
    required String text,

    /// The message.
    required String fullmessage,

    /// Full message format (1 = HTML, 0 = MOODLE, 2 = PLAIN or 4 = MARKDOWN).
    required int fullmessageformat,

    /// The message in HTML.
    required String fullmessagehtml,

    /// The shortened message.
    required String smallmessage,

    /// Is a notification?
    required int notification,

    /// Context URL.
    String? contexturl,

    /// Context URL link name.
    String? contexturlname,

    /// Time created.
    required int timecreated,

    /// Time read.
    required int timeread,

    /// User to full name.
    required String usertofullname,

    /// User from full name.
    required String userfromfullname,

    /// @since 3.7. The component that generated the notification.
    String? component,

    /// @since 3.7. The type of notification.
    String? eventtype,

    /// @since 3.7. Custom data to be passed to the message processor.
    String? customdata,

    /// @since 4.0. Icon URL, only for notifications.
    String? iconurl,
  }) = _MessageModel;

  factory MessageModel.fromJson(Map<String, dynamic> json) =>
      _$MessageModelFromJson(json);
}
