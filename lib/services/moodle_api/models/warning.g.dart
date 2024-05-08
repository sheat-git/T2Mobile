// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warning.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WarningModelImpl _$$WarningModelImplFromJson(Map<String, dynamic> json) =>
    _$WarningModelImpl(
      item: json['item'] as String?,
      itemid: (json['itemid'] as num?)?.toInt(),
      warningcode: json['warningcode'] as String,
      message: json['message'] as String,
    );

Map<String, dynamic> _$$WarningModelImplToJson(_$WarningModelImpl instance) =>
    <String, dynamic>{
      'item': instance.item,
      'itemid': instance.itemid,
      'warningcode': instance.warningcode,
      'message': instance.message,
    };
