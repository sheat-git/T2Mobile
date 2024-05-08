// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseCategoryModelImpl _$$CourseCategoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CourseCategoryModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      idnumber: json['idnumber'] as String?,
      description: json['description'] as String,
      descriptionformat: (json['descriptionformat'] as num).toInt(),
      parent: (json['parent'] as num).toInt(),
      sortorder: (json['sortorder'] as num).toInt(),
      coursecount: (json['coursecount'] as num).toInt(),
      visible: (json['visible'] as num?)?.toInt(),
      visibleold: (json['visibleold'] as num?)?.toInt(),
      timemodified: (json['timemodified'] as num?)?.toInt(),
      depth: (json['depth'] as num).toInt(),
      path: json['path'] as String,
      theme: json['theme'] as String?,
    );

Map<String, dynamic> _$$CourseCategoryModelImplToJson(
        _$CourseCategoryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'idnumber': instance.idnumber,
      'description': instance.description,
      'descriptionformat': instance.descriptionformat,
      'parent': instance.parent,
      'sortorder': instance.sortorder,
      'coursecount': instance.coursecount,
      'visible': instance.visible,
      'visibleold': instance.visibleold,
      'timemodified': instance.timemodified,
      'depth': instance.depth,
      'path': instance.path,
      'theme': instance.theme,
    };
