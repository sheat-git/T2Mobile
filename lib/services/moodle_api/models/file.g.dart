// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FileModelImpl _$$FileModelImplFromJson(Map<String, dynamic> json) =>
    _$FileModelImpl(
      fileurl: json['fileurl'] as String,
      filename: json['filename'] as String?,
      filepath: json['filepath'] as String?,
      filesize: (json['filesize'] as num?)?.toInt(),
      timemodified: (json['timemodified'] as num?)?.toInt(),
      mimetype: json['mimetype'] as String?,
      isexternalfile: (json['isexternalfile'] as num?)?.toInt(),
      repositorytype: json['repositorytype'] as String?,
    );

Map<String, dynamic> _$$FileModelImplToJson(_$FileModelImpl instance) =>
    <String, dynamic>{
      'fileurl': instance.fileurl,
      'filename': instance.filename,
      'filepath': instance.filepath,
      'filesize': instance.filesize,
      'timemodified': instance.timemodified,
      'mimetype': instance.mimetype,
      'isexternalfile': instance.isexternalfile,
      'repositorytype': instance.repositorytype,
    };
