// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseContentModelImpl _$$CourseContentModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CourseContentModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      visible: (json['visible'] as num?)?.toInt(),
      summary: json['summary'] as String,
      summaryformat: (json['summaryformat'] as num).toInt(),
      section: (json['section'] as num?)?.toInt(),
      hiddenbynumsections: (json['hiddenbynumsections'] as num?)?.toInt(),
      uservisible: json['uservisible'] as bool?,
      availabilityinfo: json['availabilityinfo'] as String?,
      modules: (json['modules'] as List<dynamic>)
          .map((e) =>
              CourseContentModuleModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CourseContentModelImplToJson(
        _$CourseContentModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'visible': instance.visible,
      'summary': instance.summary,
      'summaryformat': instance.summaryformat,
      'section': instance.section,
      'hiddenbynumsections': instance.hiddenbynumsections,
      'uservisible': instance.uservisible,
      'availabilityinfo': instance.availabilityinfo,
      'modules': instance.modules,
    };

_$CourseContentModuleModelImpl _$$CourseContentModuleModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CourseContentModuleModelImpl(
      id: (json['id'] as num).toInt(),
      url: json['url'] as String?,
      name: json['name'] as String,
      instance: (json['instance'] as num).toInt(),
      contextid: (json['contextid'] as num?)?.toInt(),
      description: json['description'] as String?,
      visible: (json['visible'] as num).toInt(),
      uservisible: json['uservisible'] as bool,
      availabilityinfo: json['availabilityinfo'] as String?,
      visibleoncoursepage: (json['visibleoncoursepage'] as num).toInt(),
      modicon: json['modicon'] as String,
      modname: json['modname'] as String,
      purpose: json['purpose'] as String?,
      branded: json['branded'] as bool?,
      modplural: json['modplural'] as String,
      availability: json['availability'] as String?,
      indent: (json['indent'] as num).toInt(),
      onclick: json['onclick'] as String?,
      afterlink: json['afterlink'] as String?,
      customdata: json['customdata'] as String?,
      noviewlink: json['noviewlink'] as bool?,
      completion: $enumDecodeNullable(
          _$CourseContentModuleCompletionTrackingEnumMap, json['completion']),
      completiondata: json['completiondata'] == null
          ? null
          : CourseContentModuleCompletionModel.fromJson(
              json['completiondata'] as Map<String, dynamic>),
      contents: (json['contents'] as List<dynamic>?)
          ?.map((e) =>
              CourseContentModuleFileModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      groupmode: (json['groupmode'] as num?)?.toInt(),
      downloadcontent: (json['downloadcontent'] as num?)?.toInt(),
      dates: (json['dates'] as List<dynamic>?)
          ?.map((e) =>
              CourseContentModuleDateModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      contentsinfo: json['contentsinfo'] == null
          ? null
          : CourseContentModuleContentsInfoModel.fromJson(
              json['contentsinfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CourseContentModuleModelImplToJson(
        _$CourseContentModuleModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'name': instance.name,
      'instance': instance.instance,
      'contextid': instance.contextid,
      'description': instance.description,
      'visible': instance.visible,
      'uservisible': instance.uservisible,
      'availabilityinfo': instance.availabilityinfo,
      'visibleoncoursepage': instance.visibleoncoursepage,
      'modicon': instance.modicon,
      'modname': instance.modname,
      'purpose': instance.purpose,
      'branded': instance.branded,
      'modplural': instance.modplural,
      'availability': instance.availability,
      'indent': instance.indent,
      'onclick': instance.onclick,
      'afterlink': instance.afterlink,
      'customdata': instance.customdata,
      'noviewlink': instance.noviewlink,
      'completion':
          _$CourseContentModuleCompletionTrackingEnumMap[instance.completion],
      'completiondata': instance.completiondata,
      'contents': instance.contents,
      'groupmode': instance.groupmode,
      'downloadcontent': instance.downloadcontent,
      'dates': instance.dates,
      'contentsinfo': instance.contentsinfo,
    };

const _$CourseContentModuleCompletionTrackingEnumMap = {
  CourseContentModuleCompletionTracking.none: 0,
  CourseContentModuleCompletionTracking.manual: 1,
  CourseContentModuleCompletionTracking.automatic: 2,
};

_$CourseContentModuleDateModelImpl _$$CourseContentModuleDateModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CourseContentModuleDateModelImpl(
      label: json['label'] as String,
      timestamp: (json['timestamp'] as num).toInt(),
    );

Map<String, dynamic> _$$CourseContentModuleDateModelImplToJson(
        _$CourseContentModuleDateModelImpl instance) =>
    <String, dynamic>{
      'label': instance.label,
      'timestamp': instance.timestamp,
    };

_$CourseContentModuleContentsInfoModelImpl
    _$$CourseContentModuleContentsInfoModelImplFromJson(
            Map<String, dynamic> json) =>
        _$CourseContentModuleContentsInfoModelImpl(
          filescount: (json['filescount'] as num).toInt(),
          filessize: (json['filessize'] as num).toInt(),
          lastmodified: (json['lastmodified'] as num).toInt(),
          mimetypes: (json['mimetypes'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
        );

Map<String, dynamic> _$$CourseContentModuleContentsInfoModelImplToJson(
        _$CourseContentModuleContentsInfoModelImpl instance) =>
    <String, dynamic>{
      'filescount': instance.filescount,
      'filessize': instance.filessize,
      'lastmodified': instance.lastmodified,
      'mimetypes': instance.mimetypes,
    };

_$CourseContentModuleCompletionModelImpl
    _$$CourseContentModuleCompletionModelImplFromJson(
            Map<String, dynamic> json) =>
        _$CourseContentModuleCompletionModelImpl(
          state: $enumDecode(
              _$CourseContentModuleCompletionStatusEnumMap, json['state']),
          timecompleted: (json['timecompleted'] as num).toInt(),
          overrideby: (json['overrideby'] as num?)?.toInt(),
          valueused: json['valueused'] as bool?,
          hascompletion: json['hascompletion'] as bool?,
          isautomatic: json['isautomatic'] as bool?,
          istrackeduser: json['istrackeduser'] as bool?,
          uservisible: json['uservisible'] as bool?,
          details: (json['details'] as List<dynamic>?)
              ?.map((e) => CourseContentModuleCompletionRuleModel.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          isoverallcomplete: json['isoverallcomplete'] as bool?,
        );

Map<String, dynamic> _$$CourseContentModuleCompletionModelImplToJson(
        _$CourseContentModuleCompletionModelImpl instance) =>
    <String, dynamic>{
      'state': _$CourseContentModuleCompletionStatusEnumMap[instance.state]!,
      'timecompleted': instance.timecompleted,
      'overrideby': instance.overrideby,
      'valueused': instance.valueused,
      'hascompletion': instance.hascompletion,
      'isautomatic': instance.isautomatic,
      'istrackeduser': instance.istrackeduser,
      'uservisible': instance.uservisible,
      'details': instance.details,
      'isoverallcomplete': instance.isoverallcomplete,
    };

const _$CourseContentModuleCompletionStatusEnumMap = {
  CourseContentModuleCompletionStatus.incomplete: 0,
  CourseContentModuleCompletionStatus.complete: 1,
  CourseContentModuleCompletionStatus.completePass: 2,
  CourseContentModuleCompletionStatus.completeFail: 3,
};

_$CourseContentModuleCompletionRuleModelImpl
    _$$CourseContentModuleCompletionRuleModelImplFromJson(
            Map<String, dynamic> json) =>
        _$CourseContentModuleCompletionRuleModelImpl(
          rulename: json['rulename'] as String,
          rulevalue: CourseContentModuleCompletionRuleValueModel.fromJson(
              json['rulevalue'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$CourseContentModuleCompletionRuleModelImplToJson(
        _$CourseContentModuleCompletionRuleModelImpl instance) =>
    <String, dynamic>{
      'rulename': instance.rulename,
      'rulevalue': instance.rulevalue,
    };

_$CourseContentModuleCompletionRuleValueModelImpl
    _$$CourseContentModuleCompletionRuleValueModelImplFromJson(
            Map<String, dynamic> json) =>
        _$CourseContentModuleCompletionRuleValueModelImpl(
          status: (json['status'] as num).toInt(),
          description: json['description'] as String,
        );

Map<String, dynamic> _$$CourseContentModuleCompletionRuleValueModelImplToJson(
        _$CourseContentModuleCompletionRuleValueModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'description': instance.description,
    };

_$CourseContentModuleFileModelImpl _$$CourseContentModuleFileModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CourseContentModuleFileModelImpl(
      filename: json['filename'] as String,
      filepath: json['filepath'] as String?,
      filesize: (json['filesize'] as num).toInt(),
      fileurl: json['fileurl'] as String,
      timemodified: (json['timemodified'] as num).toInt(),
      mimetype: json['mimetype'] as String?,
      isexternalfile: json['isexternalfile'] as bool?,
      repositorytype: json['repositorytype'] as String?,
      type: json['type'] as String,
      content: json['content'] as String?,
      timecreated: (json['timecreated'] as num?)?.toInt(),
      sortorder: (json['sortorder'] as num?)?.toInt(),
      userid: (json['userid'] as num?)?.toInt(),
      author: json['author'] as String?,
      license: json['license'] as String?,
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => TagModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CourseContentModuleFileModelImplToJson(
        _$CourseContentModuleFileModelImpl instance) =>
    <String, dynamic>{
      'filename': instance.filename,
      'filepath': instance.filepath,
      'filesize': instance.filesize,
      'fileurl': instance.fileurl,
      'timemodified': instance.timemodified,
      'mimetype': instance.mimetype,
      'isexternalfile': instance.isexternalfile,
      'repositorytype': instance.repositorytype,
      'type': instance.type,
      'content': instance.content,
      'timecreated': instance.timecreated,
      'sortorder': instance.sortorder,
      'userid': instance.userid,
      'author': instance.author,
      'license': instance.license,
      'tags': instance.tags,
    };
