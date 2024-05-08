// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TagModelImpl _$$TagModelImplFromJson(Map<String, dynamic> json) =>
    _$TagModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      rawname: json['rawname'] as String,
      isstandard: json['isstandard'] as bool,
      tagcollid: (json['tagcollid'] as num).toInt(),
      taginstanceid: (json['taginstanceid'] as num).toInt(),
      taginstancecontextid: (json['taginstancecontextid'] as num).toInt(),
      itemid: (json['itemid'] as num).toInt(),
      ordering: (json['ordering'] as num).toInt(),
      flag: (json['flag'] as num).toInt(),
    );

Map<String, dynamic> _$$TagModelImplToJson(_$TagModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'rawname': instance.rawname,
      'isstandard': instance.isstandard,
      'tagcollid': instance.tagcollid,
      'taginstanceid': instance.taginstanceid,
      'taginstancecontextid': instance.taginstancecontextid,
      'itemid': instance.itemid,
      'ordering': instance.ordering,
      'flag': instance.flag,
    };
