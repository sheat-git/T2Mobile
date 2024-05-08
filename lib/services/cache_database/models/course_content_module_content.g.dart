// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_content_module_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseContentModuleContentImpl _$$CourseContentModuleContentImplFromJson(
        Map<String, dynamic> json) =>
    _$CourseContentModuleContentImpl(
      url: json['url'] as String,
      modifiedAt: DateTime.parse(json['modifiedAt'] as String),
    );

Map<String, dynamic> _$$CourseContentModuleContentImplToJson(
        _$CourseContentModuleContentImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'modifiedAt': instance.modifiedAt.toIso8601String(),
    };
