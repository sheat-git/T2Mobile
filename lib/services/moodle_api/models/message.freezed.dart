// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MessageModel _$MessageModelFromJson(Map<String, dynamic> json) {
  return _MessageModel.fromJson(json);
}

/// @nodoc
mixin _$MessageModel {
  /// Message id.
  int get id => throw _privateConstructorUsedError;

  /// User from id.
  int get useridfrom => throw _privateConstructorUsedError;

  /// User to id.
  int get useridto => throw _privateConstructorUsedError;

  /// The message subject.
  String get subject => throw _privateConstructorUsedError;

  /// The message text formatted.
  String get text => throw _privateConstructorUsedError;

  /// The message.
  String get fullmessage => throw _privateConstructorUsedError;

  /// Full message format (1 = HTML, 0 = MOODLE, 2 = PLAIN or 4 = MARKDOWN).
  int get fullmessageformat => throw _privateConstructorUsedError;

  /// The message in HTML.
  String get fullmessagehtml => throw _privateConstructorUsedError;

  /// The shortened message.
  String get smallmessage => throw _privateConstructorUsedError;

  /// Is a notification?
  int get notification => throw _privateConstructorUsedError;

  /// Context URL.
  String? get contexturl => throw _privateConstructorUsedError;

  /// Context URL link name.
  String? get contexturlname => throw _privateConstructorUsedError;

  /// Time created.
  int get timecreated => throw _privateConstructorUsedError;

  /// Time read.
  int get timeread => throw _privateConstructorUsedError;

  /// User to full name.
  String get usertofullname => throw _privateConstructorUsedError;

  /// User from full name.
  String get userfromfullname => throw _privateConstructorUsedError;

  /// @since 3.7. The component that generated the notification.
  String? get component => throw _privateConstructorUsedError;

  /// @since 3.7. The type of notification.
  String? get eventtype => throw _privateConstructorUsedError;

  /// @since 3.7. Custom data to be passed to the message processor.
  String? get customdata => throw _privateConstructorUsedError;

  /// @since 4.0. Icon URL, only for notifications.
  String? get iconurl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageModelCopyWith<MessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageModelCopyWith<$Res> {
  factory $MessageModelCopyWith(
          MessageModel value, $Res Function(MessageModel) then) =
      _$MessageModelCopyWithImpl<$Res, MessageModel>;
  @useResult
  $Res call(
      {int id,
      int useridfrom,
      int useridto,
      String subject,
      String text,
      String fullmessage,
      int fullmessageformat,
      String fullmessagehtml,
      String smallmessage,
      int notification,
      String? contexturl,
      String? contexturlname,
      int timecreated,
      int timeread,
      String usertofullname,
      String userfromfullname,
      String? component,
      String? eventtype,
      String? customdata,
      String? iconurl});
}

/// @nodoc
class _$MessageModelCopyWithImpl<$Res, $Val extends MessageModel>
    implements $MessageModelCopyWith<$Res> {
  _$MessageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? useridfrom = null,
    Object? useridto = null,
    Object? subject = null,
    Object? text = null,
    Object? fullmessage = null,
    Object? fullmessageformat = null,
    Object? fullmessagehtml = null,
    Object? smallmessage = null,
    Object? notification = null,
    Object? contexturl = freezed,
    Object? contexturlname = freezed,
    Object? timecreated = null,
    Object? timeread = null,
    Object? usertofullname = null,
    Object? userfromfullname = null,
    Object? component = freezed,
    Object? eventtype = freezed,
    Object? customdata = freezed,
    Object? iconurl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      useridfrom: null == useridfrom
          ? _value.useridfrom
          : useridfrom // ignore: cast_nullable_to_non_nullable
              as int,
      useridto: null == useridto
          ? _value.useridto
          : useridto // ignore: cast_nullable_to_non_nullable
              as int,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      fullmessage: null == fullmessage
          ? _value.fullmessage
          : fullmessage // ignore: cast_nullable_to_non_nullable
              as String,
      fullmessageformat: null == fullmessageformat
          ? _value.fullmessageformat
          : fullmessageformat // ignore: cast_nullable_to_non_nullable
              as int,
      fullmessagehtml: null == fullmessagehtml
          ? _value.fullmessagehtml
          : fullmessagehtml // ignore: cast_nullable_to_non_nullable
              as String,
      smallmessage: null == smallmessage
          ? _value.smallmessage
          : smallmessage // ignore: cast_nullable_to_non_nullable
              as String,
      notification: null == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as int,
      contexturl: freezed == contexturl
          ? _value.contexturl
          : contexturl // ignore: cast_nullable_to_non_nullable
              as String?,
      contexturlname: freezed == contexturlname
          ? _value.contexturlname
          : contexturlname // ignore: cast_nullable_to_non_nullable
              as String?,
      timecreated: null == timecreated
          ? _value.timecreated
          : timecreated // ignore: cast_nullable_to_non_nullable
              as int,
      timeread: null == timeread
          ? _value.timeread
          : timeread // ignore: cast_nullable_to_non_nullable
              as int,
      usertofullname: null == usertofullname
          ? _value.usertofullname
          : usertofullname // ignore: cast_nullable_to_non_nullable
              as String,
      userfromfullname: null == userfromfullname
          ? _value.userfromfullname
          : userfromfullname // ignore: cast_nullable_to_non_nullable
              as String,
      component: freezed == component
          ? _value.component
          : component // ignore: cast_nullable_to_non_nullable
              as String?,
      eventtype: freezed == eventtype
          ? _value.eventtype
          : eventtype // ignore: cast_nullable_to_non_nullable
              as String?,
      customdata: freezed == customdata
          ? _value.customdata
          : customdata // ignore: cast_nullable_to_non_nullable
              as String?,
      iconurl: freezed == iconurl
          ? _value.iconurl
          : iconurl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageModelImplCopyWith<$Res>
    implements $MessageModelCopyWith<$Res> {
  factory _$$MessageModelImplCopyWith(
          _$MessageModelImpl value, $Res Function(_$MessageModelImpl) then) =
      __$$MessageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int useridfrom,
      int useridto,
      String subject,
      String text,
      String fullmessage,
      int fullmessageformat,
      String fullmessagehtml,
      String smallmessage,
      int notification,
      String? contexturl,
      String? contexturlname,
      int timecreated,
      int timeread,
      String usertofullname,
      String userfromfullname,
      String? component,
      String? eventtype,
      String? customdata,
      String? iconurl});
}

/// @nodoc
class __$$MessageModelImplCopyWithImpl<$Res>
    extends _$MessageModelCopyWithImpl<$Res, _$MessageModelImpl>
    implements _$$MessageModelImplCopyWith<$Res> {
  __$$MessageModelImplCopyWithImpl(
      _$MessageModelImpl _value, $Res Function(_$MessageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? useridfrom = null,
    Object? useridto = null,
    Object? subject = null,
    Object? text = null,
    Object? fullmessage = null,
    Object? fullmessageformat = null,
    Object? fullmessagehtml = null,
    Object? smallmessage = null,
    Object? notification = null,
    Object? contexturl = freezed,
    Object? contexturlname = freezed,
    Object? timecreated = null,
    Object? timeread = null,
    Object? usertofullname = null,
    Object? userfromfullname = null,
    Object? component = freezed,
    Object? eventtype = freezed,
    Object? customdata = freezed,
    Object? iconurl = freezed,
  }) {
    return _then(_$MessageModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      useridfrom: null == useridfrom
          ? _value.useridfrom
          : useridfrom // ignore: cast_nullable_to_non_nullable
              as int,
      useridto: null == useridto
          ? _value.useridto
          : useridto // ignore: cast_nullable_to_non_nullable
              as int,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      fullmessage: null == fullmessage
          ? _value.fullmessage
          : fullmessage // ignore: cast_nullable_to_non_nullable
              as String,
      fullmessageformat: null == fullmessageformat
          ? _value.fullmessageformat
          : fullmessageformat // ignore: cast_nullable_to_non_nullable
              as int,
      fullmessagehtml: null == fullmessagehtml
          ? _value.fullmessagehtml
          : fullmessagehtml // ignore: cast_nullable_to_non_nullable
              as String,
      smallmessage: null == smallmessage
          ? _value.smallmessage
          : smallmessage // ignore: cast_nullable_to_non_nullable
              as String,
      notification: null == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as int,
      contexturl: freezed == contexturl
          ? _value.contexturl
          : contexturl // ignore: cast_nullable_to_non_nullable
              as String?,
      contexturlname: freezed == contexturlname
          ? _value.contexturlname
          : contexturlname // ignore: cast_nullable_to_non_nullable
              as String?,
      timecreated: null == timecreated
          ? _value.timecreated
          : timecreated // ignore: cast_nullable_to_non_nullable
              as int,
      timeread: null == timeread
          ? _value.timeread
          : timeread // ignore: cast_nullable_to_non_nullable
              as int,
      usertofullname: null == usertofullname
          ? _value.usertofullname
          : usertofullname // ignore: cast_nullable_to_non_nullable
              as String,
      userfromfullname: null == userfromfullname
          ? _value.userfromfullname
          : userfromfullname // ignore: cast_nullable_to_non_nullable
              as String,
      component: freezed == component
          ? _value.component
          : component // ignore: cast_nullable_to_non_nullable
              as String?,
      eventtype: freezed == eventtype
          ? _value.eventtype
          : eventtype // ignore: cast_nullable_to_non_nullable
              as String?,
      customdata: freezed == customdata
          ? _value.customdata
          : customdata // ignore: cast_nullable_to_non_nullable
              as String?,
      iconurl: freezed == iconurl
          ? _value.iconurl
          : iconurl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageModelImpl implements _MessageModel {
  const _$MessageModelImpl(
      {required this.id,
      required this.useridfrom,
      required this.useridto,
      required this.subject,
      required this.text,
      required this.fullmessage,
      required this.fullmessageformat,
      required this.fullmessagehtml,
      required this.smallmessage,
      required this.notification,
      this.contexturl,
      this.contexturlname,
      required this.timecreated,
      required this.timeread,
      required this.usertofullname,
      required this.userfromfullname,
      this.component,
      this.eventtype,
      this.customdata,
      this.iconurl});

  factory _$MessageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageModelImplFromJson(json);

  /// Message id.
  @override
  final int id;

  /// User from id.
  @override
  final int useridfrom;

  /// User to id.
  @override
  final int useridto;

  /// The message subject.
  @override
  final String subject;

  /// The message text formatted.
  @override
  final String text;

  /// The message.
  @override
  final String fullmessage;

  /// Full message format (1 = HTML, 0 = MOODLE, 2 = PLAIN or 4 = MARKDOWN).
  @override
  final int fullmessageformat;

  /// The message in HTML.
  @override
  final String fullmessagehtml;

  /// The shortened message.
  @override
  final String smallmessage;

  /// Is a notification?
  @override
  final int notification;

  /// Context URL.
  @override
  final String? contexturl;

  /// Context URL link name.
  @override
  final String? contexturlname;

  /// Time created.
  @override
  final int timecreated;

  /// Time read.
  @override
  final int timeread;

  /// User to full name.
  @override
  final String usertofullname;

  /// User from full name.
  @override
  final String userfromfullname;

  /// @since 3.7. The component that generated the notification.
  @override
  final String? component;

  /// @since 3.7. The type of notification.
  @override
  final String? eventtype;

  /// @since 3.7. Custom data to be passed to the message processor.
  @override
  final String? customdata;

  /// @since 4.0. Icon URL, only for notifications.
  @override
  final String? iconurl;

  @override
  String toString() {
    return 'MessageModel(id: $id, useridfrom: $useridfrom, useridto: $useridto, subject: $subject, text: $text, fullmessage: $fullmessage, fullmessageformat: $fullmessageformat, fullmessagehtml: $fullmessagehtml, smallmessage: $smallmessage, notification: $notification, contexturl: $contexturl, contexturlname: $contexturlname, timecreated: $timecreated, timeread: $timeread, usertofullname: $usertofullname, userfromfullname: $userfromfullname, component: $component, eventtype: $eventtype, customdata: $customdata, iconurl: $iconurl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.useridfrom, useridfrom) ||
                other.useridfrom == useridfrom) &&
            (identical(other.useridto, useridto) ||
                other.useridto == useridto) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.fullmessage, fullmessage) ||
                other.fullmessage == fullmessage) &&
            (identical(other.fullmessageformat, fullmessageformat) ||
                other.fullmessageformat == fullmessageformat) &&
            (identical(other.fullmessagehtml, fullmessagehtml) ||
                other.fullmessagehtml == fullmessagehtml) &&
            (identical(other.smallmessage, smallmessage) ||
                other.smallmessage == smallmessage) &&
            (identical(other.notification, notification) ||
                other.notification == notification) &&
            (identical(other.contexturl, contexturl) ||
                other.contexturl == contexturl) &&
            (identical(other.contexturlname, contexturlname) ||
                other.contexturlname == contexturlname) &&
            (identical(other.timecreated, timecreated) ||
                other.timecreated == timecreated) &&
            (identical(other.timeread, timeread) ||
                other.timeread == timeread) &&
            (identical(other.usertofullname, usertofullname) ||
                other.usertofullname == usertofullname) &&
            (identical(other.userfromfullname, userfromfullname) ||
                other.userfromfullname == userfromfullname) &&
            (identical(other.component, component) ||
                other.component == component) &&
            (identical(other.eventtype, eventtype) ||
                other.eventtype == eventtype) &&
            (identical(other.customdata, customdata) ||
                other.customdata == customdata) &&
            (identical(other.iconurl, iconurl) || other.iconurl == iconurl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        useridfrom,
        useridto,
        subject,
        text,
        fullmessage,
        fullmessageformat,
        fullmessagehtml,
        smallmessage,
        notification,
        contexturl,
        contexturlname,
        timecreated,
        timeread,
        usertofullname,
        userfromfullname,
        component,
        eventtype,
        customdata,
        iconurl
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageModelImplCopyWith<_$MessageModelImpl> get copyWith =>
      __$$MessageModelImplCopyWithImpl<_$MessageModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageModelImplToJson(
      this,
    );
  }
}

abstract class _MessageModel implements MessageModel {
  const factory _MessageModel(
      {required final int id,
      required final int useridfrom,
      required final int useridto,
      required final String subject,
      required final String text,
      required final String fullmessage,
      required final int fullmessageformat,
      required final String fullmessagehtml,
      required final String smallmessage,
      required final int notification,
      final String? contexturl,
      final String? contexturlname,
      required final int timecreated,
      required final int timeread,
      required final String usertofullname,
      required final String userfromfullname,
      final String? component,
      final String? eventtype,
      final String? customdata,
      final String? iconurl}) = _$MessageModelImpl;

  factory _MessageModel.fromJson(Map<String, dynamic> json) =
      _$MessageModelImpl.fromJson;

  @override

  /// Message id.
  int get id;
  @override

  /// User from id.
  int get useridfrom;
  @override

  /// User to id.
  int get useridto;
  @override

  /// The message subject.
  String get subject;
  @override

  /// The message text formatted.
  String get text;
  @override

  /// The message.
  String get fullmessage;
  @override

  /// Full message format (1 = HTML, 0 = MOODLE, 2 = PLAIN or 4 = MARKDOWN).
  int get fullmessageformat;
  @override

  /// The message in HTML.
  String get fullmessagehtml;
  @override

  /// The shortened message.
  String get smallmessage;
  @override

  /// Is a notification?
  int get notification;
  @override

  /// Context URL.
  String? get contexturl;
  @override

  /// Context URL link name.
  String? get contexturlname;
  @override

  /// Time created.
  int get timecreated;
  @override

  /// Time read.
  int get timeread;
  @override

  /// User to full name.
  String get usertofullname;
  @override

  /// User from full name.
  String get userfromfullname;
  @override

  /// @since 3.7. The component that generated the notification.
  String? get component;
  @override

  /// @since 3.7. The type of notification.
  String? get eventtype;
  @override

  /// @since 3.7. Custom data to be passed to the message processor.
  String? get customdata;
  @override

  /// @since 4.0. Icon URL, only for notifications.
  String? get iconurl;
  @override
  @JsonKey(ignore: true)
  _$$MessageModelImplCopyWith<_$MessageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
