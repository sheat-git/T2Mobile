// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enrolled_course.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EnrolledCourseModelImpl _$$EnrolledCourseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EnrolledCourseModelImpl(
      id: (json['id'] as num).toInt(),
      fullname: json['fullname'] as String,
      displayname: json['displayname'] as String?,
      shortname: json['shortname'] as String,
      summary: json['summary'] as String,
      summaryformat: (json['summaryformat'] as num).toInt(),
      categoryid: (json['categoryid'] as num?)?.toInt(),
      idnumber: json['idnumber'] as String?,
      visible: (json['visible'] as num?)?.toInt(),
      format: json['format'] as String?,
      showgrades: json['showgrades'] as bool?,
      lang: json['lang'] as String?,
      enablecompletion: json['enablecompletion'] as bool?,
      startdate: (json['startdate'] as num?)?.toInt(),
      enddate: (json['enddate'] as num?)?.toInt(),
      enrolledusercount: (json['enrolledusercount'] as num?)?.toInt(),
      completionhascriteria: json['completionhascriteria'] as bool?,
      completionusertracked: json['completionusertracked'] as bool?,
      progress: (json['progress'] as num?)?.toInt(),
      completed: json['completed'] as bool?,
      marker: (json['marker'] as num?)?.toInt(),
      lastaccess: (json['lastaccess'] as num?)?.toInt(),
      isfavourite: json['isfavourite'] as bool?,
      hidden: json['hidden'] as bool?,
      overviewfiles: (json['overviewfiles'] as List<dynamic>?)
          ?.map((e) => FileModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      showactivitydates: json['showactivitydates'] as bool?,
      showcompletionconditions: json['showcompletionconditions'] as bool?,
      timemodified: (json['timemodified'] as num?)?.toInt(),
      category: (json['category'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$EnrolledCourseModelImplToJson(
        _$EnrolledCourseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullname': instance.fullname,
      'displayname': instance.displayname,
      'shortname': instance.shortname,
      'summary': instance.summary,
      'summaryformat': instance.summaryformat,
      'categoryid': instance.categoryid,
      'idnumber': instance.idnumber,
      'visible': instance.visible,
      'format': instance.format,
      'showgrades': instance.showgrades,
      'lang': instance.lang,
      'enablecompletion': instance.enablecompletion,
      'startdate': instance.startdate,
      'enddate': instance.enddate,
      'enrolledusercount': instance.enrolledusercount,
      'completionhascriteria': instance.completionhascriteria,
      'completionusertracked': instance.completionusertracked,
      'progress': instance.progress,
      'completed': instance.completed,
      'marker': instance.marker,
      'lastaccess': instance.lastaccess,
      'isfavourite': instance.isfavourite,
      'hidden': instance.hidden,
      'overviewfiles': instance.overviewfiles,
      'showactivitydates': instance.showactivitydates,
      'showcompletionconditions': instance.showcompletionconditions,
      'timemodified': instance.timemodified,
      'category': instance.category,
    };
