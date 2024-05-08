// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assignments.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AssignmentsModelImpl _$$AssignmentsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AssignmentsModelImpl(
      courses: (json['courses'] as List<dynamic>)
          .map((e) => AssignmentCourseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      warnings: (json['warnings'] as List<dynamic>?)
          ?.map((e) => WarningModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AssignmentsModelImplToJson(
        _$AssignmentsModelImpl instance) =>
    <String, dynamic>{
      'courses': instance.courses,
      'warnings': instance.warnings,
    };

_$AssignmentCourseModelImpl _$$AssignmentCourseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AssignmentCourseModelImpl(
      id: (json['id'] as num).toInt(),
      fullname: json['fullname'] as String,
      shortname: json['shortname'] as String,
      timemodified: (json['timemodified'] as num).toInt(),
      assignments: (json['assignments'] as List<dynamic>)
          .map((e) => AssignmentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AssignmentCourseModelImplToJson(
        _$AssignmentCourseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullname': instance.fullname,
      'shortname': instance.shortname,
      'timemodified': instance.timemodified,
      'assignments': instance.assignments,
    };

_$AssignmentModelImpl _$$AssignmentModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AssignmentModelImpl(
      id: (json['id'] as num).toInt(),
      cmid: (json['cmid'] as num).toInt(),
      course: (json['course'] as num).toInt(),
      name: json['name'] as String,
      nosubmissions: (json['nosubmissions'] as num).toInt(),
      submissiondrafts: (json['submissiondrafts'] as num).toInt(),
      sendnotifications: (json['sendnotifications'] as num).toInt(),
      sendlatenotifications: (json['sendlatenotifications'] as num).toInt(),
      sendstudentnotifications:
          (json['sendstudentnotifications'] as num).toInt(),
      duedate: (json['duedate'] as num).toInt(),
      allowsubmissionsfromdate:
          (json['allowsubmissionsfromdate'] as num).toInt(),
      grade: (json['grade'] as num).toInt(),
      timemodified: (json['timemodified'] as num).toInt(),
      completionsubmit: (json['completionsubmit'] as num).toInt(),
      cutoffdate: (json['cutoffdate'] as num).toInt(),
      gradingduedate: (json['gradingduedate'] as num?)?.toInt(),
      teamsubmission: (json['teamsubmission'] as num).toInt(),
      requireallteammemberssubmit:
          (json['requireallteammemberssubmit'] as num).toInt(),
      teamsubmissiongroupingid:
          (json['teamsubmissiongroupingid'] as num).toInt(),
      blindmarking: (json['blindmarking'] as num).toInt(),
      hidegrader: (json['hidegrader'] as num?)?.toInt(),
      revealidentities: (json['revealidentities'] as num).toInt(),
      attemptreopenmethod: $enumDecode(
          _$AssignmentAttemptReopenMethodEnumMap, json['attemptreopenmethod']),
      maxattempts: (json['maxattempts'] as num).toInt(),
      markingworkflow: (json['markingworkflow'] as num).toInt(),
      markingallocation: (json['markingallocation'] as num).toInt(),
      requiresubmissionstatement:
          (json['requiresubmissionstatement'] as num).toInt(),
      preventsubmissionnotingroup:
          (json['preventsubmissionnotingroup'] as num?)?.toInt(),
      submissionstatement: json['submissionstatement'] as String?,
      submissionstatementformat:
          (json['submissionstatementformat'] as num?)?.toInt(),
      configs: (json['configs'] as List<dynamic>)
          .map((e) => AssignmentConfigModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      intro: json['intro'] as String?,
      introformat: (json['introformat'] as num?)?.toInt(),
      introfiles: (json['introfiles'] as List<dynamic>?)
          ?.map((e) => FileModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      introattachments: (json['introattachments'] as List<dynamic>?)
          ?.map((e) => FileModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      activity: json['activity'] as String?,
      activityformat: (json['activityformat'] as num?)?.toInt(),
      activityattachments: (json['activityattachments'] as List<dynamic>?)
          ?.map((e) => FileModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      timelimit: (json['timelimit'] as num?)?.toInt(),
      submissionattachments: (json['submissionattachments'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$AssignmentModelImplToJson(
        _$AssignmentModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cmid': instance.cmid,
      'course': instance.course,
      'name': instance.name,
      'nosubmissions': instance.nosubmissions,
      'submissiondrafts': instance.submissiondrafts,
      'sendnotifications': instance.sendnotifications,
      'sendlatenotifications': instance.sendlatenotifications,
      'sendstudentnotifications': instance.sendstudentnotifications,
      'duedate': instance.duedate,
      'allowsubmissionsfromdate': instance.allowsubmissionsfromdate,
      'grade': instance.grade,
      'timemodified': instance.timemodified,
      'completionsubmit': instance.completionsubmit,
      'cutoffdate': instance.cutoffdate,
      'gradingduedate': instance.gradingduedate,
      'teamsubmission': instance.teamsubmission,
      'requireallteammemberssubmit': instance.requireallteammemberssubmit,
      'teamsubmissiongroupingid': instance.teamsubmissiongroupingid,
      'blindmarking': instance.blindmarking,
      'hidegrader': instance.hidegrader,
      'revealidentities': instance.revealidentities,
      'attemptreopenmethod':
          _$AssignmentAttemptReopenMethodEnumMap[instance.attemptreopenmethod]!,
      'maxattempts': instance.maxattempts,
      'markingworkflow': instance.markingworkflow,
      'markingallocation': instance.markingallocation,
      'requiresubmissionstatement': instance.requiresubmissionstatement,
      'preventsubmissionnotingroup': instance.preventsubmissionnotingroup,
      'submissionstatement': instance.submissionstatement,
      'submissionstatementformat': instance.submissionstatementformat,
      'configs': instance.configs,
      'intro': instance.intro,
      'introformat': instance.introformat,
      'introfiles': instance.introfiles,
      'introattachments': instance.introattachments,
      'activity': instance.activity,
      'activityformat': instance.activityformat,
      'activityattachments': instance.activityattachments,
      'timelimit': instance.timelimit,
      'submissionattachments': instance.submissionattachments,
    };

const _$AssignmentAttemptReopenMethodEnumMap = {
  AssignmentAttemptReopenMethod.none: 'none',
  AssignmentAttemptReopenMethod.manual: 'manual',
  AssignmentAttemptReopenMethod.untilpass: 'untilpass',
};

_$AssignmentConfigModelImpl _$$AssignmentConfigModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AssignmentConfigModelImpl(
      id: (json['id'] as num?)?.toInt(),
      assignment: (json['assignment'] as num?)?.toInt(),
      plugin: json['plugin'] as String,
      subtype: json['subtype'] as String,
      name: json['name'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$$AssignmentConfigModelImplToJson(
        _$AssignmentConfigModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'assignment': instance.assignment,
      'plugin': instance.plugin,
      'subtype': instance.subtype,
      'name': instance.name,
      'value': instance.value,
    };
