// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageModelImpl _$$MessageModelImplFromJson(Map<String, dynamic> json) =>
    _$MessageModelImpl(
      id: (json['id'] as num).toInt(),
      useridfrom: (json['useridfrom'] as num).toInt(),
      useridto: (json['useridto'] as num).toInt(),
      subject: json['subject'] as String,
      text: json['text'] as String,
      fullmessage: json['fullmessage'] as String,
      fullmessageformat: (json['fullmessageformat'] as num).toInt(),
      fullmessagehtml: json['fullmessagehtml'] as String,
      smallmessage: json['smallmessage'] as String,
      notification: (json['notification'] as num).toInt(),
      contexturl: json['contexturl'] as String?,
      contexturlname: json['contexturlname'] as String?,
      timecreated: (json['timecreated'] as num).toInt(),
      timeread: (json['timeread'] as num).toInt(),
      usertofullname: json['usertofullname'] as String,
      userfromfullname: json['userfromfullname'] as String,
      component: json['component'] as String?,
      eventtype: json['eventtype'] as String?,
      customdata: json['customdata'] as String?,
      iconurl: json['iconurl'] as String?,
    );

Map<String, dynamic> _$$MessageModelImplToJson(_$MessageModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'useridfrom': instance.useridfrom,
      'useridto': instance.useridto,
      'subject': instance.subject,
      'text': instance.text,
      'fullmessage': instance.fullmessage,
      'fullmessageformat': instance.fullmessageformat,
      'fullmessagehtml': instance.fullmessagehtml,
      'smallmessage': instance.smallmessage,
      'notification': instance.notification,
      'contexturl': instance.contexturl,
      'contexturlname': instance.contexturlname,
      'timecreated': instance.timecreated,
      'timeread': instance.timeread,
      'usertofullname': instance.usertofullname,
      'userfromfullname': instance.userfromfullname,
      'component': instance.component,
      'eventtype': instance.eventtype,
      'customdata': instance.customdata,
      'iconurl': instance.iconurl,
    };
