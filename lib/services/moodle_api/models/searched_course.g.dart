// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'searched_course.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchedCourseModelImpl _$$SearchedCourseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchedCourseModelImpl(
      id: (json['id'] as num).toInt(),
      fullname: json['fullname'] as String,
      displayname: json['displayname'] as String?,
      shortname: json['shortname'] as String,
      summary: json['summary'] as String,
      summaryformat: (json['summaryformat'] as num).toInt(),
      categoryid: (json['categoryid'] as num?)?.toInt(),
      idnumber: json['idnumber'] as String?,
      format: json['format'] as String?,
      showgrades: (json['showgrades'] as num?)?.toInt(),
      newsitems: (json['newsitems'] as num?)?.toInt(),
      startdate: (json['startdate'] as num?)?.toInt(),
      enddate: (json['enddate'] as num?)?.toInt(),
      maxbytes: (json['maxbytes'] as num?)?.toInt(),
      showreports: (json['showreports'] as num?)?.toInt(),
      visible: (json['visible'] as num?)?.toInt(),
      groupmode: (json['groupmode'] as num?)?.toInt(),
      groupmodeforce: (json['groupmodeforce'] as num?)?.toInt(),
      defaultgroupingid: (json['defaultgroupingid'] as num?)?.toInt(),
      enablecompletion: (json['enablecompletion'] as num?)?.toInt(),
      completionnotify: (json['completionnotify'] as num?)?.toInt(),
      lang: json['lang'] as String?,
      theme: json['theme'] as String?,
      marker: (json['marker'] as num?)?.toInt(),
      legacyfiles: (json['legacyfiles'] as num?)?.toInt(),
      calendartype: json['calendartype'] as String?,
      timecreated: (json['timecreated'] as num?)?.toInt(),
      timemodified: (json['timemodified'] as num?)?.toInt(),
      requested: (json['requested'] as num?)?.toInt(),
      cacherev: (json['cacherev'] as num?)?.toInt(),
      filters: (json['filters'] as List<dynamic>?)
          ?.map((e) =>
              SearchedCourseFilterModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      courseformatoptions: (json['courseformatoptions'] as List<dynamic>?)
          ?.map((e) =>
              CourseFormatOptionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      communicationroomname: json['communicationroomname'] as String?,
      communicationroomurl: json['communicationroomurl'] as String?,
      categoryname: json['categoryname'] as String,
      sortorder: (json['sortorder'] as num?)?.toInt(),
      summaryfiles: (json['summaryfiles'] as List<dynamic>?)
          ?.map((e) => FileModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      overviewfiles: (json['overviewfiles'] as List<dynamic>)
          .map((e) => FileModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      contacts: (json['contacts'] as List<dynamic>)
          .map((e) =>
              SearchedCourseContactModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      enrollmentmethods: (json['enrollmentmethods'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      customfields: (json['customfields'] as List<dynamic>?)
          ?.map(
              (e) => CourseCustomFieldModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      showactivitydates: json['showactivitydates'] as bool?,
      showcompletionconditions: json['showcompletionconditions'] as bool?,
    );

Map<String, dynamic> _$$SearchedCourseModelImplToJson(
        _$SearchedCourseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullname': instance.fullname,
      'displayname': instance.displayname,
      'shortname': instance.shortname,
      'summary': instance.summary,
      'summaryformat': instance.summaryformat,
      'categoryid': instance.categoryid,
      'idnumber': instance.idnumber,
      'format': instance.format,
      'showgrades': instance.showgrades,
      'newsitems': instance.newsitems,
      'startdate': instance.startdate,
      'enddate': instance.enddate,
      'maxbytes': instance.maxbytes,
      'showreports': instance.showreports,
      'visible': instance.visible,
      'groupmode': instance.groupmode,
      'groupmodeforce': instance.groupmodeforce,
      'defaultgroupingid': instance.defaultgroupingid,
      'enablecompletion': instance.enablecompletion,
      'completionnotify': instance.completionnotify,
      'lang': instance.lang,
      'theme': instance.theme,
      'marker': instance.marker,
      'legacyfiles': instance.legacyfiles,
      'calendartype': instance.calendartype,
      'timecreated': instance.timecreated,
      'timemodified': instance.timemodified,
      'requested': instance.requested,
      'cacherev': instance.cacherev,
      'filters': instance.filters,
      'courseformatoptions': instance.courseformatoptions,
      'communicationroomname': instance.communicationroomname,
      'communicationroomurl': instance.communicationroomurl,
      'categoryname': instance.categoryname,
      'sortorder': instance.sortorder,
      'summaryfiles': instance.summaryfiles,
      'overviewfiles': instance.overviewfiles,
      'contacts': instance.contacts,
      'enrollmentmethods': instance.enrollmentmethods,
      'customfields': instance.customfields,
      'showactivitydates': instance.showactivitydates,
      'showcompletionconditions': instance.showcompletionconditions,
    };

_$CourseFormatOptionModelImpl _$$CourseFormatOptionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CourseFormatOptionModelImpl(
      name: json['name'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$$CourseFormatOptionModelImplToJson(
        _$CourseFormatOptionModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
    };

_$CourseCustomFieldModelImpl _$$CourseCustomFieldModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CourseCustomFieldModelImpl(
      name: json['name'] as String,
      shortname: json['shortname'] as String,
      type: json['type'] as String,
      valueraw: json['valueraw'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$$CourseCustomFieldModelImplToJson(
        _$CourseCustomFieldModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'shortname': instance.shortname,
      'type': instance.type,
      'valueraw': instance.valueraw,
      'value': instance.value,
    };

_$SearchedCourseFilterModelImpl _$$SearchedCourseFilterModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchedCourseFilterModelImpl(
      filter: json['filter'] as String,
      localstate: (json['localstate'] as num).toInt(),
      inheritedstate: (json['inheritedstate'] as num).toInt(),
    );

Map<String, dynamic> _$$SearchedCourseFilterModelImplToJson(
        _$SearchedCourseFilterModelImpl instance) =>
    <String, dynamic>{
      'filter': instance.filter,
      'localstate': instance.localstate,
      'inheritedstate': instance.inheritedstate,
    };

_$SearchedCourseContactModelImpl _$$SearchedCourseContactModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchedCourseContactModelImpl(
      id: (json['id'] as num).toInt(),
      fullname: json['fullname'] as String,
    );

Map<String, dynamic> _$$SearchedCourseContactModelImplToJson(
        _$SearchedCourseContactModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullname': instance.fullname,
    };
