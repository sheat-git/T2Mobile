// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'courses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoursesModelImpl _$$CoursesModelImplFromJson(Map<String, dynamic> json) =>
    _$CoursesModelImpl(
      courses: (json['courses'] as List<dynamic>)
          .map((e) => SearchedCourseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      warnings: (json['warnings'] as List<dynamic>?)
          ?.map((e) => WarningModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CoursesModelImplToJson(_$CoursesModelImpl instance) =>
    <String, dynamic>{
      'courses': instance.courses,
      'warnings': instance.warnings,
    };
