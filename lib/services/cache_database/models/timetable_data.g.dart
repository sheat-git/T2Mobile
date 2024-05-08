// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timetable_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimetableDataImpl _$$TimetableDataImplFromJson(Map<String, dynamic> json) =>
    _$TimetableDataImpl(
      columns: (json['columns'] as List<dynamic>)
          .map((e) => (e as List<dynamic>)
              .map((e) => e == null
                  ? null
                  : TimetableContent.fromJson(e as Map<String, dynamic>))
              .toList())
          .toList(),
      otherCourses: (json['otherCourses'] as List<dynamic>?)
          ?.map((e) => TimetableCourse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TimetableDataImplToJson(_$TimetableDataImpl instance) =>
    <String, dynamic>{
      'columns': instance.columns,
      'otherCourses': instance.otherCourses,
    };

_$TimetableHeaderImpl _$$TimetableHeaderImplFromJson(
        Map<String, dynamic> json) =>
    _$TimetableHeaderImpl(
      text: json['text'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TimetableHeaderImplToJson(
        _$TimetableHeaderImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'runtimeType': instance.$type,
    };

_$TimetableCourseImpl _$$TimetableCourseImplFromJson(
        Map<String, dynamic> json) =>
    _$TimetableCourseImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TimetableCourseImplToJson(
        _$TimetableCourseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'runtimeType': instance.$type,
    };
