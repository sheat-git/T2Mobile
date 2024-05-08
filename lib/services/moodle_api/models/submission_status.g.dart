// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submission_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubmissionStatusModelImpl _$$SubmissionStatusModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SubmissionStatusModelImpl(
      gradingsummary: json['gradingsummary'] == null
          ? null
          : SubmissionGradingSummaryModel.fromJson(
              json['gradingsummary'] as Map<String, dynamic>),
      lastattempt: json['lastattempt'] == null
          ? null
          : SubmissionAttemptModel.fromJson(
              json['lastattempt'] as Map<String, dynamic>),
      feedback: json['feedback'] == null
          ? null
          : SubmissionFeedbackModel.fromJson(
              json['feedback'] as Map<String, dynamic>),
      previousattempts: (json['previousattempts'] as List<dynamic>?)
          ?.map((e) => SubmissionPreviousAttemptModel.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      assignmentdata: json['assignmentdata'] == null
          ? null
          : SubmissionAssignmentModel.fromJson(
              json['assignmentdata'] as Map<String, dynamic>),
      warnings: (json['warnings'] as List<dynamic>?)
          ?.map((e) => WarningModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SubmissionStatusModelImplToJson(
        _$SubmissionStatusModelImpl instance) =>
    <String, dynamic>{
      'gradingsummary': instance.gradingsummary,
      'lastattempt': instance.lastattempt,
      'feedback': instance.feedback,
      'previousattempts': instance.previousattempts,
      'assignmentdata': instance.assignmentdata,
      'warnings': instance.warnings,
    };

_$SubmissionAssignmentModelImpl _$$SubmissionAssignmentModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SubmissionAssignmentModelImpl(
      attachments: json['attachments'] == null
          ? null
          : SubmissionAssignmentAttachmentsModel.fromJson(
              json['attachments'] as Map<String, dynamic>),
      activity: json['activity'] as String?,
      activityformat: (json['activityformat'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$SubmissionAssignmentModelImplToJson(
        _$SubmissionAssignmentModelImpl instance) =>
    <String, dynamic>{
      'attachments': instance.attachments,
      'activity': instance.activity,
      'activityformat': instance.activityformat,
    };

_$SubmissionAssignmentAttachmentsModelImpl
    _$$SubmissionAssignmentAttachmentsModelImplFromJson(
            Map<String, dynamic> json) =>
        _$SubmissionAssignmentAttachmentsModelImpl(
          intro: (json['intro'] as List<dynamic>?)
              ?.map((e) => FileModel.fromJson(e as Map<String, dynamic>))
              .toList(),
          activity: (json['activity'] as List<dynamic>?)
              ?.map((e) => FileModel.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$SubmissionAssignmentAttachmentsModelImplToJson(
        _$SubmissionAssignmentAttachmentsModelImpl instance) =>
    <String, dynamic>{
      'intro': instance.intro,
      'activity': instance.activity,
    };

_$SubmissionGradingSummaryModelImpl
    _$$SubmissionGradingSummaryModelImplFromJson(Map<String, dynamic> json) =>
        _$SubmissionGradingSummaryModelImpl(
          participantcount: (json['participantcount'] as num).toInt(),
          submissiondraftscount: (json['submissiondraftscount'] as num).toInt(),
          submissionsenabled: json['submissionsenabled'] as bool,
          submissionssubmittedcount:
              (json['submissionssubmittedcount'] as num).toInt(),
          submissionsneedgradingcount:
              (json['submissionsneedgradingcount'] as num).toInt(),
          warnofungroupedusers: json['warnofungroupedusers'],
        );

Map<String, dynamic> _$$SubmissionGradingSummaryModelImplToJson(
        _$SubmissionGradingSummaryModelImpl instance) =>
    <String, dynamic>{
      'participantcount': instance.participantcount,
      'submissiondraftscount': instance.submissiondraftscount,
      'submissionsenabled': instance.submissionsenabled,
      'submissionssubmittedcount': instance.submissionssubmittedcount,
      'submissionsneedgradingcount': instance.submissionsneedgradingcount,
      'warnofungroupedusers': instance.warnofungroupedusers,
    };

_$SubmissionAttemptModelImpl _$$SubmissionAttemptModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SubmissionAttemptModelImpl(
      submission: json['submission'] == null
          ? null
          : SubmissionModel.fromJson(
              json['submission'] as Map<String, dynamic>),
      teamsubmission: json['teamsubmission'] == null
          ? null
          : SubmissionModel.fromJson(
              json['teamsubmission'] as Map<String, dynamic>),
      submissiongroup: (json['submissiongroup'] as num?)?.toInt(),
      submissiongroupmemberswhoneedtosubmit:
          (json['submissiongroupmemberswhoneedtosubmit'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList(),
      submissionsenabled: json['submissionsenabled'] as bool,
      locked: json['locked'] as bool,
      graded: json['graded'] as bool,
      canedit: json['canedit'] as bool,
      caneditowner: json['caneditowner'] as bool?,
      cansubmit: json['cansubmit'] as bool,
      extensionduedate: (json['extensionduedate'] as num).toInt(),
      blindmarking: json['blindmarking'] as bool,
      gradingstatus:
          $enumDecode(_$SubmissionGradingStatusEnumMap, json['gradingstatus']),
      usergroups: (json['usergroups'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      timelimit: (json['timelimit'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$SubmissionAttemptModelImplToJson(
        _$SubmissionAttemptModelImpl instance) =>
    <String, dynamic>{
      'submission': instance.submission,
      'teamsubmission': instance.teamsubmission,
      'submissiongroup': instance.submissiongroup,
      'submissiongroupmemberswhoneedtosubmit':
          instance.submissiongroupmemberswhoneedtosubmit,
      'submissionsenabled': instance.submissionsenabled,
      'locked': instance.locked,
      'graded': instance.graded,
      'canedit': instance.canedit,
      'caneditowner': instance.caneditowner,
      'cansubmit': instance.cansubmit,
      'extensionduedate': instance.extensionduedate,
      'blindmarking': instance.blindmarking,
      'gradingstatus':
          _$SubmissionGradingStatusEnumMap[instance.gradingstatus]!,
      'usergroups': instance.usergroups,
      'timelimit': instance.timelimit,
    };

const _$SubmissionGradingStatusEnumMap = {
  SubmissionGradingStatus.graded: 'graded',
  SubmissionGradingStatus.notgraded: 'notgraded',
  SubmissionGradingStatus.released: 'released',
  SubmissionGradingStatus.gradedfollowupsubmit: 'gradedfollowupsubmit',
};

_$SubmissionFeedbackModelImpl _$$SubmissionFeedbackModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SubmissionFeedbackModelImpl(
      grade: json['grade'] == null
          ? null
          : SubmissionGradeModel.fromJson(
              json['grade'] as Map<String, dynamic>),
      gradefordisplay: json['gradefordisplay'] as String,
      gradeddate: (json['gradeddate'] as num).toInt(),
      plugins: (json['plugins'] as List<dynamic>?)
          ?.map(
              (e) => SubmissionPluginModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SubmissionFeedbackModelImplToJson(
        _$SubmissionFeedbackModelImpl instance) =>
    <String, dynamic>{
      'grade': instance.grade,
      'gradefordisplay': instance.gradefordisplay,
      'gradeddate': instance.gradeddate,
      'plugins': instance.plugins,
    };

_$SubmissionPreviousAttemptModelImpl
    _$$SubmissionPreviousAttemptModelImplFromJson(Map<String, dynamic> json) =>
        _$SubmissionPreviousAttemptModelImpl(
          attemptnumber: (json['attemptnumber'] as num).toInt(),
          submission: json['submission'] == null
              ? null
              : SubmissionModel.fromJson(
                  json['submission'] as Map<String, dynamic>),
          grade: json['grade'] == null
              ? null
              : SubmissionGradeModel.fromJson(
                  json['grade'] as Map<String, dynamic>),
          feedbackplugins: (json['feedbackplugins'] as List<dynamic>?)
              ?.map((e) =>
                  SubmissionPluginModel.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$SubmissionPreviousAttemptModelImplToJson(
        _$SubmissionPreviousAttemptModelImpl instance) =>
    <String, dynamic>{
      'attemptnumber': instance.attemptnumber,
      'submission': instance.submission,
      'grade': instance.grade,
      'feedbackplugins': instance.feedbackplugins,
    };

_$SubmissionModelImpl _$$SubmissionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SubmissionModelImpl(
      id: (json['id'] as num).toInt(),
      userid: (json['userid'] as num).toInt(),
      attemptnumber: (json['attemptnumber'] as num).toInt(),
      timecreated: (json['timecreated'] as num).toInt(),
      timemodified: (json['timemodified'] as num).toInt(),
      status: $enumDecode(_$SubmissionStatusEnumMap, json['status']),
      groupid: (json['groupid'] as num).toInt(),
      assignment: (json['assignment'] as num?)?.toInt(),
      latest: (json['latest'] as num?)?.toInt(),
      plugins: (json['plugins'] as List<dynamic>?)
          ?.map(
              (e) => SubmissionPluginModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      gradingstatus: $enumDecodeNullable(
          _$SubmissionGradingStatusEnumMap, json['gradingstatus']),
      timestarted: (json['timestarted'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$SubmissionModelImplToJson(
        _$SubmissionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userid': instance.userid,
      'attemptnumber': instance.attemptnumber,
      'timecreated': instance.timecreated,
      'timemodified': instance.timemodified,
      'status': _$SubmissionStatusEnumMap[instance.status]!,
      'groupid': instance.groupid,
      'assignment': instance.assignment,
      'latest': instance.latest,
      'plugins': instance.plugins,
      'gradingstatus': _$SubmissionGradingStatusEnumMap[instance.gradingstatus],
      'timestarted': instance.timestarted,
    };

const _$SubmissionStatusEnumMap = {
  SubmissionStatus.submitted: 'submitted',
  SubmissionStatus.draft: 'draft',
  SubmissionStatus.newly: 'new',
  SubmissionStatus.reopened: 'reopened',
  SubmissionStatus.noattempt: 'noattempt',
  SubmissionStatus.noonlinesubmissions: 'noonlinesubmissions',
  SubmissionStatus.nosubmission: 'nosubmission',
  SubmissionStatus.gradedfollowupsubmit: 'gradedfollowupsubmit',
};

_$SubmissionGradeModelImpl _$$SubmissionGradeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SubmissionGradeModelImpl(
      id: (json['id'] as num).toInt(),
      assignment: (json['assignment'] as num?)?.toInt(),
      userid: (json['userid'] as num).toInt(),
      attemptnumber: (json['attemptnumber'] as num).toInt(),
      timecreated: (json['timecreated'] as num).toInt(),
      timemodified: (json['timemodified'] as num).toInt(),
      grader: (json['grader'] as num).toInt(),
      grade: json['grade'] as String,
      gradefordisplay: json['gradefordisplay'] as String?,
    );

Map<String, dynamic> _$$SubmissionGradeModelImplToJson(
        _$SubmissionGradeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'assignment': instance.assignment,
      'userid': instance.userid,
      'attemptnumber': instance.attemptnumber,
      'timecreated': instance.timecreated,
      'timemodified': instance.timemodified,
      'grader': instance.grader,
      'grade': instance.grade,
      'gradefordisplay': instance.gradefordisplay,
    };

_$SubmissionPluginModelImpl _$$SubmissionPluginModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SubmissionPluginModelImpl(
      type: json['type'] as String,
      name: json['name'] as String,
      fileareas: (json['fileareas'] as List<dynamic>?)
          ?.map((e) =>
              SubmissionPluginFileAreaModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      editorfields: (json['editorfields'] as List<dynamic>?)
          ?.map((e) => SubmissionPluginEditorFieldModel.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SubmissionPluginModelImplToJson(
        _$SubmissionPluginModelImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'name': instance.name,
      'fileareas': instance.fileareas,
      'editorfields': instance.editorfields,
    };

_$SubmissionPluginFileAreaModelImpl
    _$$SubmissionPluginFileAreaModelImplFromJson(Map<String, dynamic> json) =>
        _$SubmissionPluginFileAreaModelImpl(
          area: json['area'] as String,
          files: (json['files'] as List<dynamic>?)
              ?.map((e) => FileModel.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$SubmissionPluginFileAreaModelImplToJson(
        _$SubmissionPluginFileAreaModelImpl instance) =>
    <String, dynamic>{
      'area': instance.area,
      'files': instance.files,
    };

_$SubmissionPluginEditorFieldModelImpl
    _$$SubmissionPluginEditorFieldModelImplFromJson(
            Map<String, dynamic> json) =>
        _$SubmissionPluginEditorFieldModelImpl(
          name: json['name'] as String,
          description: json['description'] as String,
          text: json['text'] as String,
          format: (json['format'] as num).toInt(),
        );

Map<String, dynamic> _$$SubmissionPluginEditorFieldModelImplToJson(
        _$SubmissionPluginEditorFieldModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'text': instance.text,
      'format': instance.format,
    };
