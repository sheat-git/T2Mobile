// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cache_database.dart';

// ignore_for_file: type=lint
class $AssignmentsTable extends Assignments
    with TableInfo<$AssignmentsTable, Assignment> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AssignmentsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _courseIdMeta =
      const VerificationMeta('courseId');
  @override
  late final GeneratedColumn<int> courseId = GeneratedColumn<int>(
      'course_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _courseModuleIdMeta =
      const VerificationMeta('courseModuleId');
  @override
  late final GeneratedColumn<int> courseModuleId = GeneratedColumn<int>(
      'course_module_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _introMeta = const VerificationMeta('intro');
  @override
  late final GeneratedColumn<String> intro = GeneratedColumn<String>(
      'intro', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _introFormatMeta =
      const VerificationMeta('introFormat');
  @override
  late final GeneratedColumnWithTypeConverter<Format?, String> introFormat =
      GeneratedColumn<String>('intro_format', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<Format?>($AssignmentsTable.$converterintroFormatn);
  static const VerificationMeta _introFilesMeta =
      const VerificationMeta('introFiles');
  @override
  late final GeneratedColumnWithTypeConverter<List<FileInfo>, String>
      introFiles = GeneratedColumn<String>('intro_files', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<List<FileInfo>>(
              $AssignmentsTable.$converterintroFiles);
  static const VerificationMeta _allowSubmissionsFromDateMeta =
      const VerificationMeta('allowSubmissionsFromDate');
  @override
  late final GeneratedColumn<DateTime> allowSubmissionsFromDate =
      GeneratedColumn<DateTime>(
          'allow_submissions_from_date', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _dueDateMeta =
      const VerificationMeta('dueDate');
  @override
  late final GeneratedColumn<DateTime> dueDate = GeneratedColumn<DateTime>(
      'due_date', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _cutOffDateMeta =
      const VerificationMeta('cutOffDate');
  @override
  late final GeneratedColumn<DateTime> cutOffDate = GeneratedColumn<DateTime>(
      'cut_off_date', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _timeLimitMeta =
      const VerificationMeta('timeLimit');
  @override
  late final GeneratedColumn<int> timeLimit = GeneratedColumn<int>(
      'time_limit', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _isNotRequiredToSubmitMeta =
      const VerificationMeta('isNotRequiredToSubmit');
  @override
  late final GeneratedColumn<bool> isNotRequiredToSubmit =
      GeneratedColumn<bool>('is_not_required_to_submit', aliasedName, false,
          type: DriftSqlType.bool,
          requiredDuringInsert: true,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("is_not_required_to_submit" IN (0, 1))'));
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        courseId,
        courseModuleId,
        name,
        intro,
        introFormat,
        introFiles,
        allowSubmissionsFromDate,
        dueDate,
        cutOffDate,
        timeLimit,
        isNotRequiredToSubmit,
        updatedAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'assignments';
  @override
  VerificationContext validateIntegrity(Insertable<Assignment> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('course_id')) {
      context.handle(_courseIdMeta,
          courseId.isAcceptableOrUnknown(data['course_id']!, _courseIdMeta));
    } else if (isInserting) {
      context.missing(_courseIdMeta);
    }
    if (data.containsKey('course_module_id')) {
      context.handle(
          _courseModuleIdMeta,
          courseModuleId.isAcceptableOrUnknown(
              data['course_module_id']!, _courseModuleIdMeta));
    } else if (isInserting) {
      context.missing(_courseModuleIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('intro')) {
      context.handle(
          _introMeta, intro.isAcceptableOrUnknown(data['intro']!, _introMeta));
    }
    context.handle(_introFormatMeta, const VerificationResult.success());
    context.handle(_introFilesMeta, const VerificationResult.success());
    if (data.containsKey('allow_submissions_from_date')) {
      context.handle(
          _allowSubmissionsFromDateMeta,
          allowSubmissionsFromDate.isAcceptableOrUnknown(
              data['allow_submissions_from_date']!,
              _allowSubmissionsFromDateMeta));
    }
    if (data.containsKey('due_date')) {
      context.handle(_dueDateMeta,
          dueDate.isAcceptableOrUnknown(data['due_date']!, _dueDateMeta));
    }
    if (data.containsKey('cut_off_date')) {
      context.handle(
          _cutOffDateMeta,
          cutOffDate.isAcceptableOrUnknown(
              data['cut_off_date']!, _cutOffDateMeta));
    }
    if (data.containsKey('time_limit')) {
      context.handle(_timeLimitMeta,
          timeLimit.isAcceptableOrUnknown(data['time_limit']!, _timeLimitMeta));
    }
    if (data.containsKey('is_not_required_to_submit')) {
      context.handle(
          _isNotRequiredToSubmitMeta,
          isNotRequiredToSubmit.isAcceptableOrUnknown(
              data['is_not_required_to_submit']!, _isNotRequiredToSubmitMeta));
    } else if (isInserting) {
      context.missing(_isNotRequiredToSubmitMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Assignment map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Assignment(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      courseId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}course_id'])!,
      courseModuleId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}course_module_id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      intro: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}intro']),
      introFormat: $AssignmentsTable.$converterintroFormatn.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}intro_format'])),
      introFiles: $AssignmentsTable.$converterintroFiles.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}intro_files'])!),
      allowSubmissionsFromDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime,
          data['${effectivePrefix}allow_submissions_from_date']),
      dueDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}due_date']),
      cutOffDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}cut_off_date']),
      timeLimit: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}time_limit']),
      isNotRequiredToSubmit: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data['${effectivePrefix}is_not_required_to_submit'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
    );
  }

  @override
  $AssignmentsTable createAlias(String alias) {
    return $AssignmentsTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<Format, String, String> $converterintroFormat =
      const EnumNameConverter<Format>(Format.values);
  static JsonTypeConverter2<Format?, String?, String?> $converterintroFormatn =
      JsonTypeConverter2.asNullable($converterintroFormat);
  static JsonTypeConverter2<List<FileInfo>, String, String>
      $converterintroFiles = FileInfo.listConverter;
}

class Assignment extends DataClass implements Insertable<Assignment> {
  final int id;
  final int courseId;
  final int courseModuleId;
  final String name;
  final String? intro;
  final Format? introFormat;
  final List<FileInfo> introFiles;
  final DateTime? allowSubmissionsFromDate;
  final DateTime? dueDate;
  final DateTime? cutOffDate;
  final int? timeLimit;
  final bool isNotRequiredToSubmit;
  final DateTime updatedAt;
  const Assignment(
      {required this.id,
      required this.courseId,
      required this.courseModuleId,
      required this.name,
      this.intro,
      this.introFormat,
      required this.introFiles,
      this.allowSubmissionsFromDate,
      this.dueDate,
      this.cutOffDate,
      this.timeLimit,
      required this.isNotRequiredToSubmit,
      required this.updatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['course_id'] = Variable<int>(courseId);
    map['course_module_id'] = Variable<int>(courseModuleId);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || intro != null) {
      map['intro'] = Variable<String>(intro);
    }
    if (!nullToAbsent || introFormat != null) {
      map['intro_format'] = Variable<String>(
          $AssignmentsTable.$converterintroFormatn.toSql(introFormat));
    }
    {
      map['intro_files'] = Variable<String>(
          $AssignmentsTable.$converterintroFiles.toSql(introFiles));
    }
    if (!nullToAbsent || allowSubmissionsFromDate != null) {
      map['allow_submissions_from_date'] =
          Variable<DateTime>(allowSubmissionsFromDate);
    }
    if (!nullToAbsent || dueDate != null) {
      map['due_date'] = Variable<DateTime>(dueDate);
    }
    if (!nullToAbsent || cutOffDate != null) {
      map['cut_off_date'] = Variable<DateTime>(cutOffDate);
    }
    if (!nullToAbsent || timeLimit != null) {
      map['time_limit'] = Variable<int>(timeLimit);
    }
    map['is_not_required_to_submit'] = Variable<bool>(isNotRequiredToSubmit);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  AssignmentsCompanion toCompanion(bool nullToAbsent) {
    return AssignmentsCompanion(
      id: Value(id),
      courseId: Value(courseId),
      courseModuleId: Value(courseModuleId),
      name: Value(name),
      intro:
          intro == null && nullToAbsent ? const Value.absent() : Value(intro),
      introFormat: introFormat == null && nullToAbsent
          ? const Value.absent()
          : Value(introFormat),
      introFiles: Value(introFiles),
      allowSubmissionsFromDate: allowSubmissionsFromDate == null && nullToAbsent
          ? const Value.absent()
          : Value(allowSubmissionsFromDate),
      dueDate: dueDate == null && nullToAbsent
          ? const Value.absent()
          : Value(dueDate),
      cutOffDate: cutOffDate == null && nullToAbsent
          ? const Value.absent()
          : Value(cutOffDate),
      timeLimit: timeLimit == null && nullToAbsent
          ? const Value.absent()
          : Value(timeLimit),
      isNotRequiredToSubmit: Value(isNotRequiredToSubmit),
      updatedAt: Value(updatedAt),
    );
  }

  factory Assignment.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Assignment(
      id: serializer.fromJson<int>(json['id']),
      courseId: serializer.fromJson<int>(json['courseId']),
      courseModuleId: serializer.fromJson<int>(json['courseModuleId']),
      name: serializer.fromJson<String>(json['name']),
      intro: serializer.fromJson<String?>(json['intro']),
      introFormat: $AssignmentsTable.$converterintroFormatn
          .fromJson(serializer.fromJson<String?>(json['introFormat'])),
      introFiles: $AssignmentsTable.$converterintroFiles
          .fromJson(serializer.fromJson<String>(json['introFiles'])),
      allowSubmissionsFromDate:
          serializer.fromJson<DateTime?>(json['allowSubmissionsFromDate']),
      dueDate: serializer.fromJson<DateTime?>(json['dueDate']),
      cutOffDate: serializer.fromJson<DateTime?>(json['cutOffDate']),
      timeLimit: serializer.fromJson<int?>(json['timeLimit']),
      isNotRequiredToSubmit:
          serializer.fromJson<bool>(json['isNotRequiredToSubmit']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'courseId': serializer.toJson<int>(courseId),
      'courseModuleId': serializer.toJson<int>(courseModuleId),
      'name': serializer.toJson<String>(name),
      'intro': serializer.toJson<String?>(intro),
      'introFormat': serializer.toJson<String?>(
          $AssignmentsTable.$converterintroFormatn.toJson(introFormat)),
      'introFiles': serializer.toJson<String>(
          $AssignmentsTable.$converterintroFiles.toJson(introFiles)),
      'allowSubmissionsFromDate':
          serializer.toJson<DateTime?>(allowSubmissionsFromDate),
      'dueDate': serializer.toJson<DateTime?>(dueDate),
      'cutOffDate': serializer.toJson<DateTime?>(cutOffDate),
      'timeLimit': serializer.toJson<int?>(timeLimit),
      'isNotRequiredToSubmit': serializer.toJson<bool>(isNotRequiredToSubmit),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  Assignment copyWith(
          {int? id,
          int? courseId,
          int? courseModuleId,
          String? name,
          Value<String?> intro = const Value.absent(),
          Value<Format?> introFormat = const Value.absent(),
          List<FileInfo>? introFiles,
          Value<DateTime?> allowSubmissionsFromDate = const Value.absent(),
          Value<DateTime?> dueDate = const Value.absent(),
          Value<DateTime?> cutOffDate = const Value.absent(),
          Value<int?> timeLimit = const Value.absent(),
          bool? isNotRequiredToSubmit,
          DateTime? updatedAt}) =>
      Assignment(
        id: id ?? this.id,
        courseId: courseId ?? this.courseId,
        courseModuleId: courseModuleId ?? this.courseModuleId,
        name: name ?? this.name,
        intro: intro.present ? intro.value : this.intro,
        introFormat: introFormat.present ? introFormat.value : this.introFormat,
        introFiles: introFiles ?? this.introFiles,
        allowSubmissionsFromDate: allowSubmissionsFromDate.present
            ? allowSubmissionsFromDate.value
            : this.allowSubmissionsFromDate,
        dueDate: dueDate.present ? dueDate.value : this.dueDate,
        cutOffDate: cutOffDate.present ? cutOffDate.value : this.cutOffDate,
        timeLimit: timeLimit.present ? timeLimit.value : this.timeLimit,
        isNotRequiredToSubmit:
            isNotRequiredToSubmit ?? this.isNotRequiredToSubmit,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('Assignment(')
          ..write('id: $id, ')
          ..write('courseId: $courseId, ')
          ..write('courseModuleId: $courseModuleId, ')
          ..write('name: $name, ')
          ..write('intro: $intro, ')
          ..write('introFormat: $introFormat, ')
          ..write('introFiles: $introFiles, ')
          ..write('allowSubmissionsFromDate: $allowSubmissionsFromDate, ')
          ..write('dueDate: $dueDate, ')
          ..write('cutOffDate: $cutOffDate, ')
          ..write('timeLimit: $timeLimit, ')
          ..write('isNotRequiredToSubmit: $isNotRequiredToSubmit, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      courseId,
      courseModuleId,
      name,
      intro,
      introFormat,
      introFiles,
      allowSubmissionsFromDate,
      dueDate,
      cutOffDate,
      timeLimit,
      isNotRequiredToSubmit,
      updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Assignment &&
          other.id == this.id &&
          other.courseId == this.courseId &&
          other.courseModuleId == this.courseModuleId &&
          other.name == this.name &&
          other.intro == this.intro &&
          other.introFormat == this.introFormat &&
          other.introFiles == this.introFiles &&
          other.allowSubmissionsFromDate == this.allowSubmissionsFromDate &&
          other.dueDate == this.dueDate &&
          other.cutOffDate == this.cutOffDate &&
          other.timeLimit == this.timeLimit &&
          other.isNotRequiredToSubmit == this.isNotRequiredToSubmit &&
          other.updatedAt == this.updatedAt);
}

class AssignmentsCompanion extends UpdateCompanion<Assignment> {
  final Value<int> id;
  final Value<int> courseId;
  final Value<int> courseModuleId;
  final Value<String> name;
  final Value<String?> intro;
  final Value<Format?> introFormat;
  final Value<List<FileInfo>> introFiles;
  final Value<DateTime?> allowSubmissionsFromDate;
  final Value<DateTime?> dueDate;
  final Value<DateTime?> cutOffDate;
  final Value<int?> timeLimit;
  final Value<bool> isNotRequiredToSubmit;
  final Value<DateTime> updatedAt;
  const AssignmentsCompanion({
    this.id = const Value.absent(),
    this.courseId = const Value.absent(),
    this.courseModuleId = const Value.absent(),
    this.name = const Value.absent(),
    this.intro = const Value.absent(),
    this.introFormat = const Value.absent(),
    this.introFiles = const Value.absent(),
    this.allowSubmissionsFromDate = const Value.absent(),
    this.dueDate = const Value.absent(),
    this.cutOffDate = const Value.absent(),
    this.timeLimit = const Value.absent(),
    this.isNotRequiredToSubmit = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  AssignmentsCompanion.insert({
    this.id = const Value.absent(),
    required int courseId,
    required int courseModuleId,
    required String name,
    this.intro = const Value.absent(),
    this.introFormat = const Value.absent(),
    required List<FileInfo> introFiles,
    this.allowSubmissionsFromDate = const Value.absent(),
    this.dueDate = const Value.absent(),
    this.cutOffDate = const Value.absent(),
    this.timeLimit = const Value.absent(),
    required bool isNotRequiredToSubmit,
    required DateTime updatedAt,
  })  : courseId = Value(courseId),
        courseModuleId = Value(courseModuleId),
        name = Value(name),
        introFiles = Value(introFiles),
        isNotRequiredToSubmit = Value(isNotRequiredToSubmit),
        updatedAt = Value(updatedAt);
  static Insertable<Assignment> custom({
    Expression<int>? id,
    Expression<int>? courseId,
    Expression<int>? courseModuleId,
    Expression<String>? name,
    Expression<String>? intro,
    Expression<String>? introFormat,
    Expression<String>? introFiles,
    Expression<DateTime>? allowSubmissionsFromDate,
    Expression<DateTime>? dueDate,
    Expression<DateTime>? cutOffDate,
    Expression<int>? timeLimit,
    Expression<bool>? isNotRequiredToSubmit,
    Expression<DateTime>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (courseId != null) 'course_id': courseId,
      if (courseModuleId != null) 'course_module_id': courseModuleId,
      if (name != null) 'name': name,
      if (intro != null) 'intro': intro,
      if (introFormat != null) 'intro_format': introFormat,
      if (introFiles != null) 'intro_files': introFiles,
      if (allowSubmissionsFromDate != null)
        'allow_submissions_from_date': allowSubmissionsFromDate,
      if (dueDate != null) 'due_date': dueDate,
      if (cutOffDate != null) 'cut_off_date': cutOffDate,
      if (timeLimit != null) 'time_limit': timeLimit,
      if (isNotRequiredToSubmit != null)
        'is_not_required_to_submit': isNotRequiredToSubmit,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  AssignmentsCompanion copyWith(
      {Value<int>? id,
      Value<int>? courseId,
      Value<int>? courseModuleId,
      Value<String>? name,
      Value<String?>? intro,
      Value<Format?>? introFormat,
      Value<List<FileInfo>>? introFiles,
      Value<DateTime?>? allowSubmissionsFromDate,
      Value<DateTime?>? dueDate,
      Value<DateTime?>? cutOffDate,
      Value<int?>? timeLimit,
      Value<bool>? isNotRequiredToSubmit,
      Value<DateTime>? updatedAt}) {
    return AssignmentsCompanion(
      id: id ?? this.id,
      courseId: courseId ?? this.courseId,
      courseModuleId: courseModuleId ?? this.courseModuleId,
      name: name ?? this.name,
      intro: intro ?? this.intro,
      introFormat: introFormat ?? this.introFormat,
      introFiles: introFiles ?? this.introFiles,
      allowSubmissionsFromDate:
          allowSubmissionsFromDate ?? this.allowSubmissionsFromDate,
      dueDate: dueDate ?? this.dueDate,
      cutOffDate: cutOffDate ?? this.cutOffDate,
      timeLimit: timeLimit ?? this.timeLimit,
      isNotRequiredToSubmit:
          isNotRequiredToSubmit ?? this.isNotRequiredToSubmit,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (courseId.present) {
      map['course_id'] = Variable<int>(courseId.value);
    }
    if (courseModuleId.present) {
      map['course_module_id'] = Variable<int>(courseModuleId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (intro.present) {
      map['intro'] = Variable<String>(intro.value);
    }
    if (introFormat.present) {
      map['intro_format'] = Variable<String>(
          $AssignmentsTable.$converterintroFormatn.toSql(introFormat.value));
    }
    if (introFiles.present) {
      map['intro_files'] = Variable<String>(
          $AssignmentsTable.$converterintroFiles.toSql(introFiles.value));
    }
    if (allowSubmissionsFromDate.present) {
      map['allow_submissions_from_date'] =
          Variable<DateTime>(allowSubmissionsFromDate.value);
    }
    if (dueDate.present) {
      map['due_date'] = Variable<DateTime>(dueDate.value);
    }
    if (cutOffDate.present) {
      map['cut_off_date'] = Variable<DateTime>(cutOffDate.value);
    }
    if (timeLimit.present) {
      map['time_limit'] = Variable<int>(timeLimit.value);
    }
    if (isNotRequiredToSubmit.present) {
      map['is_not_required_to_submit'] =
          Variable<bool>(isNotRequiredToSubmit.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AssignmentsCompanion(')
          ..write('id: $id, ')
          ..write('courseId: $courseId, ')
          ..write('courseModuleId: $courseModuleId, ')
          ..write('name: $name, ')
          ..write('intro: $intro, ')
          ..write('introFormat: $introFormat, ')
          ..write('introFiles: $introFiles, ')
          ..write('allowSubmissionsFromDate: $allowSubmissionsFromDate, ')
          ..write('dueDate: $dueDate, ')
          ..write('cutOffDate: $cutOffDate, ')
          ..write('timeLimit: $timeLimit, ')
          ..write('isNotRequiredToSubmit: $isNotRequiredToSubmit, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $CourseCategoriesTable extends CourseCategories
    with TableInfo<$CourseCategoriesTable, CourseCategory> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CourseCategoriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _parentIdMeta =
      const VerificationMeta('parentId');
  @override
  late final GeneratedColumn<int> parentId = GeneratedColumn<int>(
      'parent_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, name, parentId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'course_categories';
  @override
  VerificationContext validateIntegrity(Insertable<CourseCategory> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('parent_id')) {
      context.handle(_parentIdMeta,
          parentId.isAcceptableOrUnknown(data['parent_id']!, _parentIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CourseCategory map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CourseCategory(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      parentId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}parent_id']),
    );
  }

  @override
  $CourseCategoriesTable createAlias(String alias) {
    return $CourseCategoriesTable(attachedDatabase, alias);
  }
}

class CourseCategory extends DataClass implements Insertable<CourseCategory> {
  final int id;
  final String name;
  final int? parentId;
  const CourseCategory({required this.id, required this.name, this.parentId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || parentId != null) {
      map['parent_id'] = Variable<int>(parentId);
    }
    return map;
  }

  CourseCategoriesCompanion toCompanion(bool nullToAbsent) {
    return CourseCategoriesCompanion(
      id: Value(id),
      name: Value(name),
      parentId: parentId == null && nullToAbsent
          ? const Value.absent()
          : Value(parentId),
    );
  }

  factory CourseCategory.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CourseCategory(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      parentId: serializer.fromJson<int?>(json['parentId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'parentId': serializer.toJson<int?>(parentId),
    };
  }

  CourseCategory copyWith(
          {int? id,
          String? name,
          Value<int?> parentId = const Value.absent()}) =>
      CourseCategory(
        id: id ?? this.id,
        name: name ?? this.name,
        parentId: parentId.present ? parentId.value : this.parentId,
      );
  @override
  String toString() {
    return (StringBuffer('CourseCategory(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('parentId: $parentId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, parentId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CourseCategory &&
          other.id == this.id &&
          other.name == this.name &&
          other.parentId == this.parentId);
}

class CourseCategoriesCompanion extends UpdateCompanion<CourseCategory> {
  final Value<int> id;
  final Value<String> name;
  final Value<int?> parentId;
  const CourseCategoriesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.parentId = const Value.absent(),
  });
  CourseCategoriesCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    this.parentId = const Value.absent(),
  }) : name = Value(name);
  static Insertable<CourseCategory> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<int>? parentId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (parentId != null) 'parent_id': parentId,
    });
  }

  CourseCategoriesCompanion copyWith(
      {Value<int>? id, Value<String>? name, Value<int?>? parentId}) {
    return CourseCategoriesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      parentId: parentId ?? this.parentId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (parentId.present) {
      map['parent_id'] = Variable<int>(parentId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CourseCategoriesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('parentId: $parentId')
          ..write(')'))
        .toString();
  }
}

class $CourseContentModulesTable extends CourseContentModules
    with TableInfo<$CourseContentModulesTable, CourseContentModule> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CourseContentModulesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _courseContentIdMeta =
      const VerificationMeta('courseContentId');
  @override
  late final GeneratedColumn<int> courseContentId = GeneratedColumn<int>(
      'course_content_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumnWithTypeConverter<CourseContentModuleType?, String>
      type = GeneratedColumn<String>('type', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<CourseContentModuleType?>(
              $CourseContentModulesTable.$convertertypen);
  static const VerificationMeta _modNameMeta =
      const VerificationMeta('modName');
  @override
  late final GeneratedColumn<String> modName = GeneratedColumn<String>(
      'mod_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _urlMeta = const VerificationMeta('url');
  @override
  late final GeneratedColumn<String> url = GeneratedColumn<String>(
      'url', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _contentsMeta =
      const VerificationMeta('contents');
  @override
  late final GeneratedColumnWithTypeConverter<List<CourseContentModuleContent>,
      String> contents = GeneratedColumn<String>('contents', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true)
      .withConverter<List<CourseContentModuleContent>>(
          $CourseContentModulesTable.$convertercontents);
  @override
  List<GeneratedColumn> get $columns =>
      [courseContentId, id, type, modName, name, description, url, contents];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'course_content_modules';
  @override
  VerificationContext validateIntegrity(
      Insertable<CourseContentModule> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('course_content_id')) {
      context.handle(
          _courseContentIdMeta,
          courseContentId.isAcceptableOrUnknown(
              data['course_content_id']!, _courseContentIdMeta));
    } else if (isInserting) {
      context.missing(_courseContentIdMeta);
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    context.handle(_typeMeta, const VerificationResult.success());
    if (data.containsKey('mod_name')) {
      context.handle(_modNameMeta,
          modName.isAcceptableOrUnknown(data['mod_name']!, _modNameMeta));
    } else if (isInserting) {
      context.missing(_modNameMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    if (data.containsKey('url')) {
      context.handle(
          _urlMeta, url.isAcceptableOrUnknown(data['url']!, _urlMeta));
    }
    context.handle(_contentsMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {courseContentId, id};
  @override
  CourseContentModule map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CourseContentModule(
      courseContentId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}course_content_id'])!,
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      type: $CourseContentModulesTable.$convertertypen.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type'])),
      modName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}mod_name'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
      url: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}url']),
      contents: $CourseContentModulesTable.$convertercontents.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.string, data['${effectivePrefix}contents'])!),
    );
  }

  @override
  $CourseContentModulesTable createAlias(String alias) {
    return $CourseContentModulesTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<CourseContentModuleType, String, String>
      $convertertype = const EnumNameConverter<CourseContentModuleType>(
          CourseContentModuleType.values);
  static JsonTypeConverter2<CourseContentModuleType?, String?, String?>
      $convertertypen = JsonTypeConverter2.asNullable($convertertype);
  static JsonTypeConverter2<List<CourseContentModuleContent>, String, String>
      $convertercontents = CourseContentModules.contentsConverter;
}

class CourseContentModule extends DataClass
    implements Insertable<CourseContentModule> {
  final int courseContentId;
  final int id;
  final CourseContentModuleType? type;
  final String modName;
  final String name;
  final String? description;
  final String? url;
  final List<CourseContentModuleContent> contents;
  const CourseContentModule(
      {required this.courseContentId,
      required this.id,
      this.type,
      required this.modName,
      required this.name,
      this.description,
      this.url,
      required this.contents});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['course_content_id'] = Variable<int>(courseContentId);
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || type != null) {
      map['type'] = Variable<String>(
          $CourseContentModulesTable.$convertertypen.toSql(type));
    }
    map['mod_name'] = Variable<String>(modName);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || url != null) {
      map['url'] = Variable<String>(url);
    }
    {
      map['contents'] = Variable<String>(
          $CourseContentModulesTable.$convertercontents.toSql(contents));
    }
    return map;
  }

  CourseContentModulesCompanion toCompanion(bool nullToAbsent) {
    return CourseContentModulesCompanion(
      courseContentId: Value(courseContentId),
      id: Value(id),
      type: type == null && nullToAbsent ? const Value.absent() : Value(type),
      modName: Value(modName),
      name: Value(name),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      url: url == null && nullToAbsent ? const Value.absent() : Value(url),
      contents: Value(contents),
    );
  }

  factory CourseContentModule.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CourseContentModule(
      courseContentId: serializer.fromJson<int>(json['courseContentId']),
      id: serializer.fromJson<int>(json['id']),
      type: $CourseContentModulesTable.$convertertypen
          .fromJson(serializer.fromJson<String?>(json['type'])),
      modName: serializer.fromJson<String>(json['modName']),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String?>(json['description']),
      url: serializer.fromJson<String?>(json['url']),
      contents: $CourseContentModulesTable.$convertercontents
          .fromJson(serializer.fromJson<String>(json['contents'])),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'courseContentId': serializer.toJson<int>(courseContentId),
      'id': serializer.toJson<int>(id),
      'type': serializer.toJson<String?>(
          $CourseContentModulesTable.$convertertypen.toJson(type)),
      'modName': serializer.toJson<String>(modName),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String?>(description),
      'url': serializer.toJson<String?>(url),
      'contents': serializer.toJson<String>(
          $CourseContentModulesTable.$convertercontents.toJson(contents)),
    };
  }

  CourseContentModule copyWith(
          {int? courseContentId,
          int? id,
          Value<CourseContentModuleType?> type = const Value.absent(),
          String? modName,
          String? name,
          Value<String?> description = const Value.absent(),
          Value<String?> url = const Value.absent(),
          List<CourseContentModuleContent>? contents}) =>
      CourseContentModule(
        courseContentId: courseContentId ?? this.courseContentId,
        id: id ?? this.id,
        type: type.present ? type.value : this.type,
        modName: modName ?? this.modName,
        name: name ?? this.name,
        description: description.present ? description.value : this.description,
        url: url.present ? url.value : this.url,
        contents: contents ?? this.contents,
      );
  @override
  String toString() {
    return (StringBuffer('CourseContentModule(')
          ..write('courseContentId: $courseContentId, ')
          ..write('id: $id, ')
          ..write('type: $type, ')
          ..write('modName: $modName, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('url: $url, ')
          ..write('contents: $contents')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      courseContentId, id, type, modName, name, description, url, contents);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CourseContentModule &&
          other.courseContentId == this.courseContentId &&
          other.id == this.id &&
          other.type == this.type &&
          other.modName == this.modName &&
          other.name == this.name &&
          other.description == this.description &&
          other.url == this.url &&
          other.contents == this.contents);
}

class CourseContentModulesCompanion
    extends UpdateCompanion<CourseContentModule> {
  final Value<int> courseContentId;
  final Value<int> id;
  final Value<CourseContentModuleType?> type;
  final Value<String> modName;
  final Value<String> name;
  final Value<String?> description;
  final Value<String?> url;
  final Value<List<CourseContentModuleContent>> contents;
  final Value<int> rowid;
  const CourseContentModulesCompanion({
    this.courseContentId = const Value.absent(),
    this.id = const Value.absent(),
    this.type = const Value.absent(),
    this.modName = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.url = const Value.absent(),
    this.contents = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CourseContentModulesCompanion.insert({
    required int courseContentId,
    required int id,
    this.type = const Value.absent(),
    required String modName,
    required String name,
    this.description = const Value.absent(),
    this.url = const Value.absent(),
    required List<CourseContentModuleContent> contents,
    this.rowid = const Value.absent(),
  })  : courseContentId = Value(courseContentId),
        id = Value(id),
        modName = Value(modName),
        name = Value(name),
        contents = Value(contents);
  static Insertable<CourseContentModule> custom({
    Expression<int>? courseContentId,
    Expression<int>? id,
    Expression<String>? type,
    Expression<String>? modName,
    Expression<String>? name,
    Expression<String>? description,
    Expression<String>? url,
    Expression<String>? contents,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (courseContentId != null) 'course_content_id': courseContentId,
      if (id != null) 'id': id,
      if (type != null) 'type': type,
      if (modName != null) 'mod_name': modName,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (url != null) 'url': url,
      if (contents != null) 'contents': contents,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CourseContentModulesCompanion copyWith(
      {Value<int>? courseContentId,
      Value<int>? id,
      Value<CourseContentModuleType?>? type,
      Value<String>? modName,
      Value<String>? name,
      Value<String?>? description,
      Value<String?>? url,
      Value<List<CourseContentModuleContent>>? contents,
      Value<int>? rowid}) {
    return CourseContentModulesCompanion(
      courseContentId: courseContentId ?? this.courseContentId,
      id: id ?? this.id,
      type: type ?? this.type,
      modName: modName ?? this.modName,
      name: name ?? this.name,
      description: description ?? this.description,
      url: url ?? this.url,
      contents: contents ?? this.contents,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (courseContentId.present) {
      map['course_content_id'] = Variable<int>(courseContentId.value);
    }
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(
          $CourseContentModulesTable.$convertertypen.toSql(type.value));
    }
    if (modName.present) {
      map['mod_name'] = Variable<String>(modName.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (url.present) {
      map['url'] = Variable<String>(url.value);
    }
    if (contents.present) {
      map['contents'] = Variable<String>(
          $CourseContentModulesTable.$convertercontents.toSql(contents.value));
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CourseContentModulesCompanion(')
          ..write('courseContentId: $courseContentId, ')
          ..write('id: $id, ')
          ..write('type: $type, ')
          ..write('modName: $modName, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('url: $url, ')
          ..write('contents: $contents, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $CourseContentsTable extends CourseContents
    with TableInfo<$CourseContentsTable, CourseContent> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CourseContentsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _courseIdMeta =
      const VerificationMeta('courseId');
  @override
  late final GeneratedColumn<int> courseId = GeneratedColumn<int>(
      'course_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _summaryMeta =
      const VerificationMeta('summary');
  @override
  late final GeneratedColumn<String> summary = GeneratedColumn<String>(
      'summary', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _summaryFormatMeta =
      const VerificationMeta('summaryFormat');
  @override
  late final GeneratedColumnWithTypeConverter<Format?, String> summaryFormat =
      GeneratedColumn<String>('summary_format', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<Format?>(
              $CourseContentsTable.$convertersummaryFormatn);
  @override
  List<GeneratedColumn> get $columns =>
      [courseId, id, name, summary, summaryFormat];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'course_contents';
  @override
  VerificationContext validateIntegrity(Insertable<CourseContent> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('course_id')) {
      context.handle(_courseIdMeta,
          courseId.isAcceptableOrUnknown(data['course_id']!, _courseIdMeta));
    } else if (isInserting) {
      context.missing(_courseIdMeta);
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('summary')) {
      context.handle(_summaryMeta,
          summary.isAcceptableOrUnknown(data['summary']!, _summaryMeta));
    } else if (isInserting) {
      context.missing(_summaryMeta);
    }
    context.handle(_summaryFormatMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {courseId, id};
  @override
  CourseContent map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CourseContent(
      courseId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}course_id'])!,
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      summary: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}summary'])!,
      summaryFormat: $CourseContentsTable.$convertersummaryFormatn.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}summary_format'])),
    );
  }

  @override
  $CourseContentsTable createAlias(String alias) {
    return $CourseContentsTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<Format, String, String> $convertersummaryFormat =
      const EnumNameConverter<Format>(Format.values);
  static JsonTypeConverter2<Format?, String?, String?>
      $convertersummaryFormatn =
      JsonTypeConverter2.asNullable($convertersummaryFormat);
}

class CourseContent extends DataClass implements Insertable<CourseContent> {
  final int courseId;
  final int id;
  final String name;
  final String summary;
  final Format? summaryFormat;
  const CourseContent(
      {required this.courseId,
      required this.id,
      required this.name,
      required this.summary,
      this.summaryFormat});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['course_id'] = Variable<int>(courseId);
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['summary'] = Variable<String>(summary);
    if (!nullToAbsent || summaryFormat != null) {
      map['summary_format'] = Variable<String>(
          $CourseContentsTable.$convertersummaryFormatn.toSql(summaryFormat));
    }
    return map;
  }

  CourseContentsCompanion toCompanion(bool nullToAbsent) {
    return CourseContentsCompanion(
      courseId: Value(courseId),
      id: Value(id),
      name: Value(name),
      summary: Value(summary),
      summaryFormat: summaryFormat == null && nullToAbsent
          ? const Value.absent()
          : Value(summaryFormat),
    );
  }

  factory CourseContent.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CourseContent(
      courseId: serializer.fromJson<int>(json['courseId']),
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      summary: serializer.fromJson<String>(json['summary']),
      summaryFormat: $CourseContentsTable.$convertersummaryFormatn
          .fromJson(serializer.fromJson<String?>(json['summaryFormat'])),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'courseId': serializer.toJson<int>(courseId),
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'summary': serializer.toJson<String>(summary),
      'summaryFormat': serializer.toJson<String?>(
          $CourseContentsTable.$convertersummaryFormatn.toJson(summaryFormat)),
    };
  }

  CourseContent copyWith(
          {int? courseId,
          int? id,
          String? name,
          String? summary,
          Value<Format?> summaryFormat = const Value.absent()}) =>
      CourseContent(
        courseId: courseId ?? this.courseId,
        id: id ?? this.id,
        name: name ?? this.name,
        summary: summary ?? this.summary,
        summaryFormat:
            summaryFormat.present ? summaryFormat.value : this.summaryFormat,
      );
  @override
  String toString() {
    return (StringBuffer('CourseContent(')
          ..write('courseId: $courseId, ')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('summary: $summary, ')
          ..write('summaryFormat: $summaryFormat')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(courseId, id, name, summary, summaryFormat);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CourseContent &&
          other.courseId == this.courseId &&
          other.id == this.id &&
          other.name == this.name &&
          other.summary == this.summary &&
          other.summaryFormat == this.summaryFormat);
}

class CourseContentsCompanion extends UpdateCompanion<CourseContent> {
  final Value<int> courseId;
  final Value<int> id;
  final Value<String> name;
  final Value<String> summary;
  final Value<Format?> summaryFormat;
  final Value<int> rowid;
  const CourseContentsCompanion({
    this.courseId = const Value.absent(),
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.summary = const Value.absent(),
    this.summaryFormat = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CourseContentsCompanion.insert({
    required int courseId,
    required int id,
    required String name,
    required String summary,
    this.summaryFormat = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : courseId = Value(courseId),
        id = Value(id),
        name = Value(name),
        summary = Value(summary);
  static Insertable<CourseContent> custom({
    Expression<int>? courseId,
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? summary,
    Expression<String>? summaryFormat,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (courseId != null) 'course_id': courseId,
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (summary != null) 'summary': summary,
      if (summaryFormat != null) 'summary_format': summaryFormat,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CourseContentsCompanion copyWith(
      {Value<int>? courseId,
      Value<int>? id,
      Value<String>? name,
      Value<String>? summary,
      Value<Format?>? summaryFormat,
      Value<int>? rowid}) {
    return CourseContentsCompanion(
      courseId: courseId ?? this.courseId,
      id: id ?? this.id,
      name: name ?? this.name,
      summary: summary ?? this.summary,
      summaryFormat: summaryFormat ?? this.summaryFormat,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (courseId.present) {
      map['course_id'] = Variable<int>(courseId.value);
    }
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (summary.present) {
      map['summary'] = Variable<String>(summary.value);
    }
    if (summaryFormat.present) {
      map['summary_format'] = Variable<String>($CourseContentsTable
          .$convertersummaryFormatn
          .toSql(summaryFormat.value));
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CourseContentsCompanion(')
          ..write('courseId: $courseId, ')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('summary: $summary, ')
          ..write('summaryFormat: $summaryFormat, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $CoursesTable extends Courses with TableInfo<$CoursesTable, Course> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CoursesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _nameJaMeta = const VerificationMeta('nameJa');
  @override
  late final GeneratedColumn<String> nameJa = GeneratedColumn<String>(
      'name_ja', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameEnMeta = const VerificationMeta('nameEn');
  @override
  late final GeneratedColumn<String> nameEn = GeneratedColumn<String>(
      'name_en', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _categoryIdMeta =
      const VerificationMeta('categoryId');
  @override
  late final GeneratedColumn<int> categoryId = GeneratedColumn<int>(
      'category_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _isEnrolledMeta =
      const VerificationMeta('isEnrolled');
  @override
  late final GeneratedColumn<bool> isEnrolled = GeneratedColumn<bool>(
      'is_enrolled', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_enrolled" IN (0, 1))'));
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, nameJa, nameEn, categoryId, isEnrolled, updatedAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'courses';
  @override
  VerificationContext validateIntegrity(Insertable<Course> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name_ja')) {
      context.handle(_nameJaMeta,
          nameJa.isAcceptableOrUnknown(data['name_ja']!, _nameJaMeta));
    } else if (isInserting) {
      context.missing(_nameJaMeta);
    }
    if (data.containsKey('name_en')) {
      context.handle(_nameEnMeta,
          nameEn.isAcceptableOrUnknown(data['name_en']!, _nameEnMeta));
    } else if (isInserting) {
      context.missing(_nameEnMeta);
    }
    if (data.containsKey('category_id')) {
      context.handle(
          _categoryIdMeta,
          categoryId.isAcceptableOrUnknown(
              data['category_id']!, _categoryIdMeta));
    }
    if (data.containsKey('is_enrolled')) {
      context.handle(
          _isEnrolledMeta,
          isEnrolled.isAcceptableOrUnknown(
              data['is_enrolled']!, _isEnrolledMeta));
    } else if (isInserting) {
      context.missing(_isEnrolledMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Course map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Course(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      nameJa: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name_ja'])!,
      nameEn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name_en'])!,
      categoryId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}category_id']),
      isEnrolled: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_enrolled'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
    );
  }

  @override
  $CoursesTable createAlias(String alias) {
    return $CoursesTable(attachedDatabase, alias);
  }
}

class Course extends DataClass implements Insertable<Course> {
  final int id;
  final String nameJa;
  final String nameEn;
  final int? categoryId;
  final bool isEnrolled;
  final DateTime updatedAt;
  const Course(
      {required this.id,
      required this.nameJa,
      required this.nameEn,
      this.categoryId,
      required this.isEnrolled,
      required this.updatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name_ja'] = Variable<String>(nameJa);
    map['name_en'] = Variable<String>(nameEn);
    if (!nullToAbsent || categoryId != null) {
      map['category_id'] = Variable<int>(categoryId);
    }
    map['is_enrolled'] = Variable<bool>(isEnrolled);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  CoursesCompanion toCompanion(bool nullToAbsent) {
    return CoursesCompanion(
      id: Value(id),
      nameJa: Value(nameJa),
      nameEn: Value(nameEn),
      categoryId: categoryId == null && nullToAbsent
          ? const Value.absent()
          : Value(categoryId),
      isEnrolled: Value(isEnrolled),
      updatedAt: Value(updatedAt),
    );
  }

  factory Course.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Course(
      id: serializer.fromJson<int>(json['id']),
      nameJa: serializer.fromJson<String>(json['nameJa']),
      nameEn: serializer.fromJson<String>(json['nameEn']),
      categoryId: serializer.fromJson<int?>(json['categoryId']),
      isEnrolled: serializer.fromJson<bool>(json['isEnrolled']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'nameJa': serializer.toJson<String>(nameJa),
      'nameEn': serializer.toJson<String>(nameEn),
      'categoryId': serializer.toJson<int?>(categoryId),
      'isEnrolled': serializer.toJson<bool>(isEnrolled),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  Course copyWith(
          {int? id,
          String? nameJa,
          String? nameEn,
          Value<int?> categoryId = const Value.absent(),
          bool? isEnrolled,
          DateTime? updatedAt}) =>
      Course(
        id: id ?? this.id,
        nameJa: nameJa ?? this.nameJa,
        nameEn: nameEn ?? this.nameEn,
        categoryId: categoryId.present ? categoryId.value : this.categoryId,
        isEnrolled: isEnrolled ?? this.isEnrolled,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('Course(')
          ..write('id: $id, ')
          ..write('nameJa: $nameJa, ')
          ..write('nameEn: $nameEn, ')
          ..write('categoryId: $categoryId, ')
          ..write('isEnrolled: $isEnrolled, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, nameJa, nameEn, categoryId, isEnrolled, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Course &&
          other.id == this.id &&
          other.nameJa == this.nameJa &&
          other.nameEn == this.nameEn &&
          other.categoryId == this.categoryId &&
          other.isEnrolled == this.isEnrolled &&
          other.updatedAt == this.updatedAt);
}

class CoursesCompanion extends UpdateCompanion<Course> {
  final Value<int> id;
  final Value<String> nameJa;
  final Value<String> nameEn;
  final Value<int?> categoryId;
  final Value<bool> isEnrolled;
  final Value<DateTime> updatedAt;
  const CoursesCompanion({
    this.id = const Value.absent(),
    this.nameJa = const Value.absent(),
    this.nameEn = const Value.absent(),
    this.categoryId = const Value.absent(),
    this.isEnrolled = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  CoursesCompanion.insert({
    this.id = const Value.absent(),
    required String nameJa,
    required String nameEn,
    this.categoryId = const Value.absent(),
    required bool isEnrolled,
    required DateTime updatedAt,
  })  : nameJa = Value(nameJa),
        nameEn = Value(nameEn),
        isEnrolled = Value(isEnrolled),
        updatedAt = Value(updatedAt);
  static Insertable<Course> custom({
    Expression<int>? id,
    Expression<String>? nameJa,
    Expression<String>? nameEn,
    Expression<int>? categoryId,
    Expression<bool>? isEnrolled,
    Expression<DateTime>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (nameJa != null) 'name_ja': nameJa,
      if (nameEn != null) 'name_en': nameEn,
      if (categoryId != null) 'category_id': categoryId,
      if (isEnrolled != null) 'is_enrolled': isEnrolled,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  CoursesCompanion copyWith(
      {Value<int>? id,
      Value<String>? nameJa,
      Value<String>? nameEn,
      Value<int?>? categoryId,
      Value<bool>? isEnrolled,
      Value<DateTime>? updatedAt}) {
    return CoursesCompanion(
      id: id ?? this.id,
      nameJa: nameJa ?? this.nameJa,
      nameEn: nameEn ?? this.nameEn,
      categoryId: categoryId ?? this.categoryId,
      isEnrolled: isEnrolled ?? this.isEnrolled,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (nameJa.present) {
      map['name_ja'] = Variable<String>(nameJa.value);
    }
    if (nameEn.present) {
      map['name_en'] = Variable<String>(nameEn.value);
    }
    if (categoryId.present) {
      map['category_id'] = Variable<int>(categoryId.value);
    }
    if (isEnrolled.present) {
      map['is_enrolled'] = Variable<bool>(isEnrolled.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CoursesCompanion(')
          ..write('id: $id, ')
          ..write('nameJa: $nameJa, ')
          ..write('nameEn: $nameEn, ')
          ..write('categoryId: $categoryId, ')
          ..write('isEnrolled: $isEnrolled, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $NotificationsTable extends Notifications
    with TableInfo<$NotificationsTable, Notification> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $NotificationsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'notifications';
  @override
  VerificationContext validateIntegrity(Insertable<Notification> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Notification map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Notification(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
    );
  }

  @override
  $NotificationsTable createAlias(String alias) {
    return $NotificationsTable(attachedDatabase, alias);
  }
}

class Notification extends DataClass implements Insertable<Notification> {
  final int id;
  const Notification({required this.id});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    return map;
  }

  NotificationsCompanion toCompanion(bool nullToAbsent) {
    return NotificationsCompanion(
      id: Value(id),
    );
  }

  factory Notification.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Notification(
      id: serializer.fromJson<int>(json['id']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
    };
  }

  Notification copyWith({int? id}) => Notification(
        id: id ?? this.id,
      );
  @override
  String toString() {
    return (StringBuffer('Notification(')
          ..write('id: $id')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => id.hashCode;
  @override
  bool operator ==(Object other) =>
      identical(this, other) || (other is Notification && other.id == this.id);
}

class NotificationsCompanion extends UpdateCompanion<Notification> {
  final Value<int> id;
  const NotificationsCompanion({
    this.id = const Value.absent(),
  });
  NotificationsCompanion.insert({
    this.id = const Value.absent(),
  });
  static Insertable<Notification> custom({
    Expression<int>? id,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
    });
  }

  NotificationsCompanion copyWith({Value<int>? id}) {
    return NotificationsCompanion(
      id: id ?? this.id,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NotificationsCompanion(')
          ..write('id: $id')
          ..write(')'))
        .toString();
  }
}

class $SubmissionsTable extends Submissions
    with TableInfo<$SubmissionsTable, Submission> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SubmissionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _assignmentIdMeta =
      const VerificationMeta('assignmentId');
  @override
  late final GeneratedColumn<int> assignmentId = GeneratedColumn<int>(
      'assignment_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _canEditMeta =
      const VerificationMeta('canEdit');
  @override
  late final GeneratedColumn<bool> canEdit = GeneratedColumn<bool>(
      'can_edit', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("can_edit" IN (0, 1))'));
  static const VerificationMeta _isSubmittedMeta =
      const VerificationMeta('isSubmitted');
  @override
  late final GeneratedColumn<bool> isSubmitted = GeneratedColumn<bool>(
      'is_submitted', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_submitted" IN (0, 1))'));
  static const VerificationMeta _modifiedAtMeta =
      const VerificationMeta('modifiedAt');
  @override
  late final GeneratedColumn<DateTime> modifiedAt = GeneratedColumn<DateTime>(
      'modified_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _onlineTextMeta =
      const VerificationMeta('onlineText');
  @override
  late final GeneratedColumn<String> onlineText = GeneratedColumn<String>(
      'online_text', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _onlineTextFormatMeta =
      const VerificationMeta('onlineTextFormat');
  @override
  late final GeneratedColumnWithTypeConverter<Format?, String>
      onlineTextFormat = GeneratedColumn<String>(
              'online_text_format', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<Format?>(
              $SubmissionsTable.$converteronlineTextFormatn);
  static const VerificationMeta _filesMeta = const VerificationMeta('files');
  @override
  late final GeneratedColumnWithTypeConverter<List<FileInfo>, String> files =
      GeneratedColumn<String>('files', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<List<FileInfo>>($SubmissionsTable.$converterfiles);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        assignmentId,
        id,
        canEdit,
        isSubmitted,
        modifiedAt,
        onlineText,
        onlineTextFormat,
        files,
        updatedAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'submissions';
  @override
  VerificationContext validateIntegrity(Insertable<Submission> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('assignment_id')) {
      context.handle(
          _assignmentIdMeta,
          assignmentId.isAcceptableOrUnknown(
              data['assignment_id']!, _assignmentIdMeta));
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('can_edit')) {
      context.handle(_canEditMeta,
          canEdit.isAcceptableOrUnknown(data['can_edit']!, _canEditMeta));
    } else if (isInserting) {
      context.missing(_canEditMeta);
    }
    if (data.containsKey('is_submitted')) {
      context.handle(
          _isSubmittedMeta,
          isSubmitted.isAcceptableOrUnknown(
              data['is_submitted']!, _isSubmittedMeta));
    } else if (isInserting) {
      context.missing(_isSubmittedMeta);
    }
    if (data.containsKey('modified_at')) {
      context.handle(
          _modifiedAtMeta,
          modifiedAt.isAcceptableOrUnknown(
              data['modified_at']!, _modifiedAtMeta));
    }
    if (data.containsKey('online_text')) {
      context.handle(
          _onlineTextMeta,
          onlineText.isAcceptableOrUnknown(
              data['online_text']!, _onlineTextMeta));
    }
    context.handle(_onlineTextFormatMeta, const VerificationResult.success());
    context.handle(_filesMeta, const VerificationResult.success());
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {assignmentId};
  @override
  Submission map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Submission(
      assignmentId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}assignment_id'])!,
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id']),
      canEdit: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}can_edit'])!,
      isSubmitted: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_submitted'])!,
      modifiedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}modified_at']),
      onlineText: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}online_text']),
      onlineTextFormat: $SubmissionsTable.$converteronlineTextFormatn.fromSql(
          attachedDatabase.typeMapping.read(DriftSqlType.string,
              data['${effectivePrefix}online_text_format'])),
      files: $SubmissionsTable.$converterfiles.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}files'])!),
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
    );
  }

  @override
  $SubmissionsTable createAlias(String alias) {
    return $SubmissionsTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<Format, String, String> $converteronlineTextFormat =
      const EnumNameConverter<Format>(Format.values);
  static JsonTypeConverter2<Format?, String?, String?>
      $converteronlineTextFormatn =
      JsonTypeConverter2.asNullable($converteronlineTextFormat);
  static JsonTypeConverter2<List<FileInfo>, String, String> $converterfiles =
      FileInfo.listConverter;
}

class Submission extends DataClass implements Insertable<Submission> {
  final int assignmentId;
  final int? id;
  final bool canEdit;
  final bool isSubmitted;
  final DateTime? modifiedAt;
  final String? onlineText;
  final Format? onlineTextFormat;
  final List<FileInfo> files;
  final DateTime updatedAt;
  const Submission(
      {required this.assignmentId,
      this.id,
      required this.canEdit,
      required this.isSubmitted,
      this.modifiedAt,
      this.onlineText,
      this.onlineTextFormat,
      required this.files,
      required this.updatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['assignment_id'] = Variable<int>(assignmentId);
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    map['can_edit'] = Variable<bool>(canEdit);
    map['is_submitted'] = Variable<bool>(isSubmitted);
    if (!nullToAbsent || modifiedAt != null) {
      map['modified_at'] = Variable<DateTime>(modifiedAt);
    }
    if (!nullToAbsent || onlineText != null) {
      map['online_text'] = Variable<String>(onlineText);
    }
    if (!nullToAbsent || onlineTextFormat != null) {
      map['online_text_format'] = Variable<String>($SubmissionsTable
          .$converteronlineTextFormatn
          .toSql(onlineTextFormat));
    }
    {
      map['files'] =
          Variable<String>($SubmissionsTable.$converterfiles.toSql(files));
    }
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  SubmissionsCompanion toCompanion(bool nullToAbsent) {
    return SubmissionsCompanion(
      assignmentId: Value(assignmentId),
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      canEdit: Value(canEdit),
      isSubmitted: Value(isSubmitted),
      modifiedAt: modifiedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(modifiedAt),
      onlineText: onlineText == null && nullToAbsent
          ? const Value.absent()
          : Value(onlineText),
      onlineTextFormat: onlineTextFormat == null && nullToAbsent
          ? const Value.absent()
          : Value(onlineTextFormat),
      files: Value(files),
      updatedAt: Value(updatedAt),
    );
  }

  factory Submission.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Submission(
      assignmentId: serializer.fromJson<int>(json['assignmentId']),
      id: serializer.fromJson<int?>(json['id']),
      canEdit: serializer.fromJson<bool>(json['canEdit']),
      isSubmitted: serializer.fromJson<bool>(json['isSubmitted']),
      modifiedAt: serializer.fromJson<DateTime?>(json['modifiedAt']),
      onlineText: serializer.fromJson<String?>(json['onlineText']),
      onlineTextFormat: $SubmissionsTable.$converteronlineTextFormatn
          .fromJson(serializer.fromJson<String?>(json['onlineTextFormat'])),
      files: $SubmissionsTable.$converterfiles
          .fromJson(serializer.fromJson<String>(json['files'])),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'assignmentId': serializer.toJson<int>(assignmentId),
      'id': serializer.toJson<int?>(id),
      'canEdit': serializer.toJson<bool>(canEdit),
      'isSubmitted': serializer.toJson<bool>(isSubmitted),
      'modifiedAt': serializer.toJson<DateTime?>(modifiedAt),
      'onlineText': serializer.toJson<String?>(onlineText),
      'onlineTextFormat': serializer.toJson<String?>($SubmissionsTable
          .$converteronlineTextFormatn
          .toJson(onlineTextFormat)),
      'files': serializer
          .toJson<String>($SubmissionsTable.$converterfiles.toJson(files)),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  Submission copyWith(
          {int? assignmentId,
          Value<int?> id = const Value.absent(),
          bool? canEdit,
          bool? isSubmitted,
          Value<DateTime?> modifiedAt = const Value.absent(),
          Value<String?> onlineText = const Value.absent(),
          Value<Format?> onlineTextFormat = const Value.absent(),
          List<FileInfo>? files,
          DateTime? updatedAt}) =>
      Submission(
        assignmentId: assignmentId ?? this.assignmentId,
        id: id.present ? id.value : this.id,
        canEdit: canEdit ?? this.canEdit,
        isSubmitted: isSubmitted ?? this.isSubmitted,
        modifiedAt: modifiedAt.present ? modifiedAt.value : this.modifiedAt,
        onlineText: onlineText.present ? onlineText.value : this.onlineText,
        onlineTextFormat: onlineTextFormat.present
            ? onlineTextFormat.value
            : this.onlineTextFormat,
        files: files ?? this.files,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('Submission(')
          ..write('assignmentId: $assignmentId, ')
          ..write('id: $id, ')
          ..write('canEdit: $canEdit, ')
          ..write('isSubmitted: $isSubmitted, ')
          ..write('modifiedAt: $modifiedAt, ')
          ..write('onlineText: $onlineText, ')
          ..write('onlineTextFormat: $onlineTextFormat, ')
          ..write('files: $files, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(assignmentId, id, canEdit, isSubmitted,
      modifiedAt, onlineText, onlineTextFormat, files, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Submission &&
          other.assignmentId == this.assignmentId &&
          other.id == this.id &&
          other.canEdit == this.canEdit &&
          other.isSubmitted == this.isSubmitted &&
          other.modifiedAt == this.modifiedAt &&
          other.onlineText == this.onlineText &&
          other.onlineTextFormat == this.onlineTextFormat &&
          other.files == this.files &&
          other.updatedAt == this.updatedAt);
}

class SubmissionsCompanion extends UpdateCompanion<Submission> {
  final Value<int> assignmentId;
  final Value<int?> id;
  final Value<bool> canEdit;
  final Value<bool> isSubmitted;
  final Value<DateTime?> modifiedAt;
  final Value<String?> onlineText;
  final Value<Format?> onlineTextFormat;
  final Value<List<FileInfo>> files;
  final Value<DateTime> updatedAt;
  const SubmissionsCompanion({
    this.assignmentId = const Value.absent(),
    this.id = const Value.absent(),
    this.canEdit = const Value.absent(),
    this.isSubmitted = const Value.absent(),
    this.modifiedAt = const Value.absent(),
    this.onlineText = const Value.absent(),
    this.onlineTextFormat = const Value.absent(),
    this.files = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  SubmissionsCompanion.insert({
    this.assignmentId = const Value.absent(),
    this.id = const Value.absent(),
    required bool canEdit,
    required bool isSubmitted,
    this.modifiedAt = const Value.absent(),
    this.onlineText = const Value.absent(),
    this.onlineTextFormat = const Value.absent(),
    required List<FileInfo> files,
    required DateTime updatedAt,
  })  : canEdit = Value(canEdit),
        isSubmitted = Value(isSubmitted),
        files = Value(files),
        updatedAt = Value(updatedAt);
  static Insertable<Submission> custom({
    Expression<int>? assignmentId,
    Expression<int>? id,
    Expression<bool>? canEdit,
    Expression<bool>? isSubmitted,
    Expression<DateTime>? modifiedAt,
    Expression<String>? onlineText,
    Expression<String>? onlineTextFormat,
    Expression<String>? files,
    Expression<DateTime>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (assignmentId != null) 'assignment_id': assignmentId,
      if (id != null) 'id': id,
      if (canEdit != null) 'can_edit': canEdit,
      if (isSubmitted != null) 'is_submitted': isSubmitted,
      if (modifiedAt != null) 'modified_at': modifiedAt,
      if (onlineText != null) 'online_text': onlineText,
      if (onlineTextFormat != null) 'online_text_format': onlineTextFormat,
      if (files != null) 'files': files,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  SubmissionsCompanion copyWith(
      {Value<int>? assignmentId,
      Value<int?>? id,
      Value<bool>? canEdit,
      Value<bool>? isSubmitted,
      Value<DateTime?>? modifiedAt,
      Value<String?>? onlineText,
      Value<Format?>? onlineTextFormat,
      Value<List<FileInfo>>? files,
      Value<DateTime>? updatedAt}) {
    return SubmissionsCompanion(
      assignmentId: assignmentId ?? this.assignmentId,
      id: id ?? this.id,
      canEdit: canEdit ?? this.canEdit,
      isSubmitted: isSubmitted ?? this.isSubmitted,
      modifiedAt: modifiedAt ?? this.modifiedAt,
      onlineText: onlineText ?? this.onlineText,
      onlineTextFormat: onlineTextFormat ?? this.onlineTextFormat,
      files: files ?? this.files,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (assignmentId.present) {
      map['assignment_id'] = Variable<int>(assignmentId.value);
    }
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (canEdit.present) {
      map['can_edit'] = Variable<bool>(canEdit.value);
    }
    if (isSubmitted.present) {
      map['is_submitted'] = Variable<bool>(isSubmitted.value);
    }
    if (modifiedAt.present) {
      map['modified_at'] = Variable<DateTime>(modifiedAt.value);
    }
    if (onlineText.present) {
      map['online_text'] = Variable<String>(onlineText.value);
    }
    if (onlineTextFormat.present) {
      map['online_text_format'] = Variable<String>($SubmissionsTable
          .$converteronlineTextFormatn
          .toSql(onlineTextFormat.value));
    }
    if (files.present) {
      map['files'] = Variable<String>(
          $SubmissionsTable.$converterfiles.toSql(files.value));
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SubmissionsCompanion(')
          ..write('assignmentId: $assignmentId, ')
          ..write('id: $id, ')
          ..write('canEdit: $canEdit, ')
          ..write('isSubmitted: $isSubmitted, ')
          ..write('modifiedAt: $modifiedAt, ')
          ..write('onlineText: $onlineText, ')
          ..write('onlineTextFormat: $onlineTextFormat, ')
          ..write('files: $files, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $TimestampsTable extends Timestamps
    with TableInfo<$TimestampsTable, Timestamp> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TimestampsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _atMeta = const VerificationMeta('at');
  @override
  late final GeneratedColumn<DateTime> at = GeneratedColumn<DateTime>(
      'at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, at];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'timestamps';
  @override
  VerificationContext validateIntegrity(Insertable<Timestamp> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('at')) {
      context.handle(_atMeta, at.isAcceptableOrUnknown(data['at']!, _atMeta));
    } else if (isInserting) {
      context.missing(_atMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Timestamp map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Timestamp(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      at: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}at'])!,
    );
  }

  @override
  $TimestampsTable createAlias(String alias) {
    return $TimestampsTable(attachedDatabase, alias);
  }
}

class Timestamp extends DataClass implements Insertable<Timestamp> {
  final String id;
  final DateTime at;
  const Timestamp({required this.id, required this.at});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['at'] = Variable<DateTime>(at);
    return map;
  }

  TimestampsCompanion toCompanion(bool nullToAbsent) {
    return TimestampsCompanion(
      id: Value(id),
      at: Value(at),
    );
  }

  factory Timestamp.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Timestamp(
      id: serializer.fromJson<String>(json['id']),
      at: serializer.fromJson<DateTime>(json['at']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'at': serializer.toJson<DateTime>(at),
    };
  }

  Timestamp copyWith({String? id, DateTime? at}) => Timestamp(
        id: id ?? this.id,
        at: at ?? this.at,
      );
  @override
  String toString() {
    return (StringBuffer('Timestamp(')
          ..write('id: $id, ')
          ..write('at: $at')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, at);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Timestamp && other.id == this.id && other.at == this.at);
}

class TimestampsCompanion extends UpdateCompanion<Timestamp> {
  final Value<String> id;
  final Value<DateTime> at;
  final Value<int> rowid;
  const TimestampsCompanion({
    this.id = const Value.absent(),
    this.at = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  TimestampsCompanion.insert({
    required String id,
    required DateTime at,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        at = Value(at);
  static Insertable<Timestamp> custom({
    Expression<String>? id,
    Expression<DateTime>? at,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (at != null) 'at': at,
      if (rowid != null) 'rowid': rowid,
    });
  }

  TimestampsCompanion copyWith(
      {Value<String>? id, Value<DateTime>? at, Value<int>? rowid}) {
    return TimestampsCompanion(
      id: id ?? this.id,
      at: at ?? this.at,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (at.present) {
      map['at'] = Variable<DateTime>(at.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TimestampsCompanion(')
          ..write('id: $id, ')
          ..write('at: $at, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $TimetableQuartersTable extends TimetableQuarters
    with TableInfo<$TimetableQuartersTable, TimetableQuarter> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TimetableQuartersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _langMeta = const VerificationMeta('lang');
  @override
  late final GeneratedColumn<String> lang = GeneratedColumn<String>(
      'lang', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<String> value = GeneratedColumn<String>(
      'value', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _labelMeta = const VerificationMeta('label');
  @override
  late final GeneratedColumn<String> label = GeneratedColumn<String>(
      'label', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [lang, value, label];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'timetable_quarters';
  @override
  VerificationContext validateIntegrity(Insertable<TimetableQuarter> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('lang')) {
      context.handle(
          _langMeta, lang.isAcceptableOrUnknown(data['lang']!, _langMeta));
    } else if (isInserting) {
      context.missing(_langMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    if (data.containsKey('label')) {
      context.handle(
          _labelMeta, label.isAcceptableOrUnknown(data['label']!, _labelMeta));
    } else if (isInserting) {
      context.missing(_labelMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {lang, value};
  @override
  TimetableQuarter map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TimetableQuarter(
      lang: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}lang'])!,
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}value'])!,
      label: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}label'])!,
    );
  }

  @override
  $TimetableQuartersTable createAlias(String alias) {
    return $TimetableQuartersTable(attachedDatabase, alias);
  }
}

class TimetableQuarter extends DataClass
    implements Insertable<TimetableQuarter> {
  final String lang;
  final String value;
  final String label;
  const TimetableQuarter(
      {required this.lang, required this.value, required this.label});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['lang'] = Variable<String>(lang);
    map['value'] = Variable<String>(value);
    map['label'] = Variable<String>(label);
    return map;
  }

  TimetableQuartersCompanion toCompanion(bool nullToAbsent) {
    return TimetableQuartersCompanion(
      lang: Value(lang),
      value: Value(value),
      label: Value(label),
    );
  }

  factory TimetableQuarter.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TimetableQuarter(
      lang: serializer.fromJson<String>(json['lang']),
      value: serializer.fromJson<String>(json['value']),
      label: serializer.fromJson<String>(json['label']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'lang': serializer.toJson<String>(lang),
      'value': serializer.toJson<String>(value),
      'label': serializer.toJson<String>(label),
    };
  }

  TimetableQuarter copyWith({String? lang, String? value, String? label}) =>
      TimetableQuarter(
        lang: lang ?? this.lang,
        value: value ?? this.value,
        label: label ?? this.label,
      );
  @override
  String toString() {
    return (StringBuffer('TimetableQuarter(')
          ..write('lang: $lang, ')
          ..write('value: $value, ')
          ..write('label: $label')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(lang, value, label);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TimetableQuarter &&
          other.lang == this.lang &&
          other.value == this.value &&
          other.label == this.label);
}

class TimetableQuartersCompanion extends UpdateCompanion<TimetableQuarter> {
  final Value<String> lang;
  final Value<String> value;
  final Value<String> label;
  final Value<int> rowid;
  const TimetableQuartersCompanion({
    this.lang = const Value.absent(),
    this.value = const Value.absent(),
    this.label = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  TimetableQuartersCompanion.insert({
    required String lang,
    required String value,
    required String label,
    this.rowid = const Value.absent(),
  })  : lang = Value(lang),
        value = Value(value),
        label = Value(label);
  static Insertable<TimetableQuarter> custom({
    Expression<String>? lang,
    Expression<String>? value,
    Expression<String>? label,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (lang != null) 'lang': lang,
      if (value != null) 'value': value,
      if (label != null) 'label': label,
      if (rowid != null) 'rowid': rowid,
    });
  }

  TimetableQuartersCompanion copyWith(
      {Value<String>? lang,
      Value<String>? value,
      Value<String>? label,
      Value<int>? rowid}) {
    return TimetableQuartersCompanion(
      lang: lang ?? this.lang,
      value: value ?? this.value,
      label: label ?? this.label,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (lang.present) {
      map['lang'] = Variable<String>(lang.value);
    }
    if (value.present) {
      map['value'] = Variable<String>(value.value);
    }
    if (label.present) {
      map['label'] = Variable<String>(label.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TimetableQuartersCompanion(')
          ..write('lang: $lang, ')
          ..write('value: $value, ')
          ..write('label: $label, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $TimetableYearsTable extends TimetableYears
    with TableInfo<$TimetableYearsTable, TimetableYear> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TimetableYearsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _langMeta = const VerificationMeta('lang');
  @override
  late final GeneratedColumn<String> lang = GeneratedColumn<String>(
      'lang', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<String> value = GeneratedColumn<String>(
      'value', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _labelMeta = const VerificationMeta('label');
  @override
  late final GeneratedColumn<String> label = GeneratedColumn<String>(
      'label', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [lang, value, label];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'timetable_years';
  @override
  VerificationContext validateIntegrity(Insertable<TimetableYear> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('lang')) {
      context.handle(
          _langMeta, lang.isAcceptableOrUnknown(data['lang']!, _langMeta));
    } else if (isInserting) {
      context.missing(_langMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    if (data.containsKey('label')) {
      context.handle(
          _labelMeta, label.isAcceptableOrUnknown(data['label']!, _labelMeta));
    } else if (isInserting) {
      context.missing(_labelMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {lang, value};
  @override
  TimetableYear map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TimetableYear(
      lang: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}lang'])!,
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}value'])!,
      label: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}label'])!,
    );
  }

  @override
  $TimetableYearsTable createAlias(String alias) {
    return $TimetableYearsTable(attachedDatabase, alias);
  }
}

class TimetableYear extends DataClass implements Insertable<TimetableYear> {
  final String lang;
  final String value;
  final String label;
  const TimetableYear(
      {required this.lang, required this.value, required this.label});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['lang'] = Variable<String>(lang);
    map['value'] = Variable<String>(value);
    map['label'] = Variable<String>(label);
    return map;
  }

  TimetableYearsCompanion toCompanion(bool nullToAbsent) {
    return TimetableYearsCompanion(
      lang: Value(lang),
      value: Value(value),
      label: Value(label),
    );
  }

  factory TimetableYear.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TimetableYear(
      lang: serializer.fromJson<String>(json['lang']),
      value: serializer.fromJson<String>(json['value']),
      label: serializer.fromJson<String>(json['label']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'lang': serializer.toJson<String>(lang),
      'value': serializer.toJson<String>(value),
      'label': serializer.toJson<String>(label),
    };
  }

  TimetableYear copyWith({String? lang, String? value, String? label}) =>
      TimetableYear(
        lang: lang ?? this.lang,
        value: value ?? this.value,
        label: label ?? this.label,
      );
  @override
  String toString() {
    return (StringBuffer('TimetableYear(')
          ..write('lang: $lang, ')
          ..write('value: $value, ')
          ..write('label: $label')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(lang, value, label);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TimetableYear &&
          other.lang == this.lang &&
          other.value == this.value &&
          other.label == this.label);
}

class TimetableYearsCompanion extends UpdateCompanion<TimetableYear> {
  final Value<String> lang;
  final Value<String> value;
  final Value<String> label;
  final Value<int> rowid;
  const TimetableYearsCompanion({
    this.lang = const Value.absent(),
    this.value = const Value.absent(),
    this.label = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  TimetableYearsCompanion.insert({
    required String lang,
    required String value,
    required String label,
    this.rowid = const Value.absent(),
  })  : lang = Value(lang),
        value = Value(value),
        label = Value(label);
  static Insertable<TimetableYear> custom({
    Expression<String>? lang,
    Expression<String>? value,
    Expression<String>? label,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (lang != null) 'lang': lang,
      if (value != null) 'value': value,
      if (label != null) 'label': label,
      if (rowid != null) 'rowid': rowid,
    });
  }

  TimetableYearsCompanion copyWith(
      {Value<String>? lang,
      Value<String>? value,
      Value<String>? label,
      Value<int>? rowid}) {
    return TimetableYearsCompanion(
      lang: lang ?? this.lang,
      value: value ?? this.value,
      label: label ?? this.label,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (lang.present) {
      map['lang'] = Variable<String>(lang.value);
    }
    if (value.present) {
      map['value'] = Variable<String>(value.value);
    }
    if (label.present) {
      map['label'] = Variable<String>(label.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TimetableYearsCompanion(')
          ..write('lang: $lang, ')
          ..write('value: $value, ')
          ..write('label: $label, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $TimetablesTable extends Timetables
    with TableInfo<$TimetablesTable, Timetable> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TimetablesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _langMeta = const VerificationMeta('lang');
  @override
  late final GeneratedColumn<String> lang = GeneratedColumn<String>(
      'lang', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _yearMeta = const VerificationMeta('year');
  @override
  late final GeneratedColumn<String> year = GeneratedColumn<String>(
      'year', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _quarterMeta =
      const VerificationMeta('quarter');
  @override
  late final GeneratedColumn<String> quarter = GeneratedColumn<String>(
      'quarter', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _yearLabelMeta =
      const VerificationMeta('yearLabel');
  @override
  late final GeneratedColumn<String> yearLabel = GeneratedColumn<String>(
      'year_label', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _quarterLabelMeta =
      const VerificationMeta('quarterLabel');
  @override
  late final GeneratedColumn<String> quarterLabel = GeneratedColumn<String>(
      'quarter_label', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _dataMeta = const VerificationMeta('data');
  @override
  late final GeneratedColumnWithTypeConverter<TimetableData, String> data =
      GeneratedColumn<String>('data', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<TimetableData>($TimetablesTable.$converterdata);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [lang, year, quarter, yearLabel, quarterLabel, data, updatedAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'timetables';
  @override
  VerificationContext validateIntegrity(Insertable<Timetable> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('lang')) {
      context.handle(
          _langMeta, lang.isAcceptableOrUnknown(data['lang']!, _langMeta));
    } else if (isInserting) {
      context.missing(_langMeta);
    }
    if (data.containsKey('year')) {
      context.handle(
          _yearMeta, year.isAcceptableOrUnknown(data['year']!, _yearMeta));
    } else if (isInserting) {
      context.missing(_yearMeta);
    }
    if (data.containsKey('quarter')) {
      context.handle(_quarterMeta,
          quarter.isAcceptableOrUnknown(data['quarter']!, _quarterMeta));
    } else if (isInserting) {
      context.missing(_quarterMeta);
    }
    if (data.containsKey('year_label')) {
      context.handle(_yearLabelMeta,
          yearLabel.isAcceptableOrUnknown(data['year_label']!, _yearLabelMeta));
    } else if (isInserting) {
      context.missing(_yearLabelMeta);
    }
    if (data.containsKey('quarter_label')) {
      context.handle(
          _quarterLabelMeta,
          quarterLabel.isAcceptableOrUnknown(
              data['quarter_label']!, _quarterLabelMeta));
    } else if (isInserting) {
      context.missing(_quarterLabelMeta);
    }
    context.handle(_dataMeta, const VerificationResult.success());
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {lang, year, quarter};
  @override
  Timetable map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Timetable(
      lang: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}lang'])!,
      year: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}year'])!,
      quarter: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}quarter'])!,
      yearLabel: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}year_label'])!,
      quarterLabel: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}quarter_label'])!,
      data: $TimetablesTable.$converterdata.fromSql(attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}data'])!),
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
    );
  }

  @override
  $TimetablesTable createAlias(String alias) {
    return $TimetablesTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<TimetableData, String, String> $converterdata =
      TypeConverter.json(
          fromJson: (json) => TimetableData.fromJson(json),
          toJson: (data) => data.toJson());
}

class Timetable extends DataClass implements Insertable<Timetable> {
  final String lang;
  final String year;
  final String quarter;
  final String yearLabel;
  final String quarterLabel;
  final TimetableData data;
  final DateTime updatedAt;
  const Timetable(
      {required this.lang,
      required this.year,
      required this.quarter,
      required this.yearLabel,
      required this.quarterLabel,
      required this.data,
      required this.updatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['lang'] = Variable<String>(lang);
    map['year'] = Variable<String>(year);
    map['quarter'] = Variable<String>(quarter);
    map['year_label'] = Variable<String>(yearLabel);
    map['quarter_label'] = Variable<String>(quarterLabel);
    {
      map['data'] =
          Variable<String>($TimetablesTable.$converterdata.toSql(data));
    }
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  TimetablesCompanion toCompanion(bool nullToAbsent) {
    return TimetablesCompanion(
      lang: Value(lang),
      year: Value(year),
      quarter: Value(quarter),
      yearLabel: Value(yearLabel),
      quarterLabel: Value(quarterLabel),
      data: Value(data),
      updatedAt: Value(updatedAt),
    );
  }

  factory Timetable.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Timetable(
      lang: serializer.fromJson<String>(json['lang']),
      year: serializer.fromJson<String>(json['year']),
      quarter: serializer.fromJson<String>(json['quarter']),
      yearLabel: serializer.fromJson<String>(json['yearLabel']),
      quarterLabel: serializer.fromJson<String>(json['quarterLabel']),
      data: $TimetablesTable.$converterdata
          .fromJson(serializer.fromJson<String>(json['data'])),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'lang': serializer.toJson<String>(lang),
      'year': serializer.toJson<String>(year),
      'quarter': serializer.toJson<String>(quarter),
      'yearLabel': serializer.toJson<String>(yearLabel),
      'quarterLabel': serializer.toJson<String>(quarterLabel),
      'data': serializer
          .toJson<String>($TimetablesTable.$converterdata.toJson(data)),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  Timetable copyWith(
          {String? lang,
          String? year,
          String? quarter,
          String? yearLabel,
          String? quarterLabel,
          TimetableData? data,
          DateTime? updatedAt}) =>
      Timetable(
        lang: lang ?? this.lang,
        year: year ?? this.year,
        quarter: quarter ?? this.quarter,
        yearLabel: yearLabel ?? this.yearLabel,
        quarterLabel: quarterLabel ?? this.quarterLabel,
        data: data ?? this.data,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('Timetable(')
          ..write('lang: $lang, ')
          ..write('year: $year, ')
          ..write('quarter: $quarter, ')
          ..write('yearLabel: $yearLabel, ')
          ..write('quarterLabel: $quarterLabel, ')
          ..write('data: $data, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      lang, year, quarter, yearLabel, quarterLabel, data, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Timetable &&
          other.lang == this.lang &&
          other.year == this.year &&
          other.quarter == this.quarter &&
          other.yearLabel == this.yearLabel &&
          other.quarterLabel == this.quarterLabel &&
          other.data == this.data &&
          other.updatedAt == this.updatedAt);
}

class TimetablesCompanion extends UpdateCompanion<Timetable> {
  final Value<String> lang;
  final Value<String> year;
  final Value<String> quarter;
  final Value<String> yearLabel;
  final Value<String> quarterLabel;
  final Value<TimetableData> data;
  final Value<DateTime> updatedAt;
  final Value<int> rowid;
  const TimetablesCompanion({
    this.lang = const Value.absent(),
    this.year = const Value.absent(),
    this.quarter = const Value.absent(),
    this.yearLabel = const Value.absent(),
    this.quarterLabel = const Value.absent(),
    this.data = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  TimetablesCompanion.insert({
    required String lang,
    required String year,
    required String quarter,
    required String yearLabel,
    required String quarterLabel,
    required TimetableData data,
    required DateTime updatedAt,
    this.rowid = const Value.absent(),
  })  : lang = Value(lang),
        year = Value(year),
        quarter = Value(quarter),
        yearLabel = Value(yearLabel),
        quarterLabel = Value(quarterLabel),
        data = Value(data),
        updatedAt = Value(updatedAt);
  static Insertable<Timetable> custom({
    Expression<String>? lang,
    Expression<String>? year,
    Expression<String>? quarter,
    Expression<String>? yearLabel,
    Expression<String>? quarterLabel,
    Expression<String>? data,
    Expression<DateTime>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (lang != null) 'lang': lang,
      if (year != null) 'year': year,
      if (quarter != null) 'quarter': quarter,
      if (yearLabel != null) 'year_label': yearLabel,
      if (quarterLabel != null) 'quarter_label': quarterLabel,
      if (data != null) 'data': data,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  TimetablesCompanion copyWith(
      {Value<String>? lang,
      Value<String>? year,
      Value<String>? quarter,
      Value<String>? yearLabel,
      Value<String>? quarterLabel,
      Value<TimetableData>? data,
      Value<DateTime>? updatedAt,
      Value<int>? rowid}) {
    return TimetablesCompanion(
      lang: lang ?? this.lang,
      year: year ?? this.year,
      quarter: quarter ?? this.quarter,
      yearLabel: yearLabel ?? this.yearLabel,
      quarterLabel: quarterLabel ?? this.quarterLabel,
      data: data ?? this.data,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (lang.present) {
      map['lang'] = Variable<String>(lang.value);
    }
    if (year.present) {
      map['year'] = Variable<String>(year.value);
    }
    if (quarter.present) {
      map['quarter'] = Variable<String>(quarter.value);
    }
    if (yearLabel.present) {
      map['year_label'] = Variable<String>(yearLabel.value);
    }
    if (quarterLabel.present) {
      map['quarter_label'] = Variable<String>(quarterLabel.value);
    }
    if (data.present) {
      map['data'] =
          Variable<String>($TimetablesTable.$converterdata.toSql(data.value));
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TimetablesCompanion(')
          ..write('lang: $lang, ')
          ..write('year: $year, ')
          ..write('quarter: $quarter, ')
          ..write('yearLabel: $yearLabel, ')
          ..write('quarterLabel: $quarterLabel, ')
          ..write('data: $data, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$CacheDatabase extends GeneratedDatabase {
  _$CacheDatabase(QueryExecutor e) : super(e);
  _$CacheDatabaseManager get managers => _$CacheDatabaseManager(this);
  late final $AssignmentsTable assignments = $AssignmentsTable(this);
  late final $CourseCategoriesTable courseCategories =
      $CourseCategoriesTable(this);
  late final $CourseContentModulesTable courseContentModules =
      $CourseContentModulesTable(this);
  late final $CourseContentsTable courseContents = $CourseContentsTable(this);
  late final $CoursesTable courses = $CoursesTable(this);
  late final $NotificationsTable notifications = $NotificationsTable(this);
  late final $SubmissionsTable submissions = $SubmissionsTable(this);
  late final $TimestampsTable timestamps = $TimestampsTable(this);
  late final $TimetableQuartersTable timetableQuarters =
      $TimetableQuartersTable(this);
  late final $TimetableYearsTable timetableYears = $TimetableYearsTable(this);
  late final $TimetablesTable timetables = $TimetablesTable(this);
  late final Index courseContentModuleId = Index('course_content_module_id',
      'CREATE INDEX course_content_module_id ON course_content_modules (id)');
  late final Index courseContentId = Index('course_content_id',
      'CREATE INDEX course_content_id ON course_contents (id)');
  late final AssignmentsDao assignmentsDao =
      AssignmentsDao(this as CacheDatabase);
  late final CourseCategoriesDao courseCategoriesDao =
      CourseCategoriesDao(this as CacheDatabase);
  late final CourseContentModulesDao courseContentModulesDao =
      CourseContentModulesDao(this as CacheDatabase);
  late final CourseContentsDao courseContentsDao =
      CourseContentsDao(this as CacheDatabase);
  late final CoursesDao coursesDao = CoursesDao(this as CacheDatabase);
  late final SubmissionsDao submissionsDao =
      SubmissionsDao(this as CacheDatabase);
  late final TimestampsDao timestampsDao = TimestampsDao(this as CacheDatabase);
  late final TimetableQuartersDao timetableQuartersDao =
      TimetableQuartersDao(this as CacheDatabase);
  late final TimetableYearsDao timetableYearsDao =
      TimetableYearsDao(this as CacheDatabase);
  late final TimetablesDao timetablesDao = TimetablesDao(this as CacheDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        assignments,
        courseCategories,
        courseContentModules,
        courseContents,
        courses,
        notifications,
        submissions,
        timestamps,
        timetableQuarters,
        timetableYears,
        timetables,
        courseContentModuleId,
        courseContentId
      ];
}

typedef $$AssignmentsTableInsertCompanionBuilder = AssignmentsCompanion
    Function({
  Value<int> id,
  required int courseId,
  required int courseModuleId,
  required String name,
  Value<String?> intro,
  Value<Format?> introFormat,
  required List<FileInfo> introFiles,
  Value<DateTime?> allowSubmissionsFromDate,
  Value<DateTime?> dueDate,
  Value<DateTime?> cutOffDate,
  Value<int?> timeLimit,
  required bool isNotRequiredToSubmit,
  required DateTime updatedAt,
});
typedef $$AssignmentsTableUpdateCompanionBuilder = AssignmentsCompanion
    Function({
  Value<int> id,
  Value<int> courseId,
  Value<int> courseModuleId,
  Value<String> name,
  Value<String?> intro,
  Value<Format?> introFormat,
  Value<List<FileInfo>> introFiles,
  Value<DateTime?> allowSubmissionsFromDate,
  Value<DateTime?> dueDate,
  Value<DateTime?> cutOffDate,
  Value<int?> timeLimit,
  Value<bool> isNotRequiredToSubmit,
  Value<DateTime> updatedAt,
});

class $$AssignmentsTableTableManager extends RootTableManager<
    _$CacheDatabase,
    $AssignmentsTable,
    Assignment,
    $$AssignmentsTableFilterComposer,
    $$AssignmentsTableOrderingComposer,
    $$AssignmentsTableProcessedTableManager,
    $$AssignmentsTableInsertCompanionBuilder,
    $$AssignmentsTableUpdateCompanionBuilder> {
  $$AssignmentsTableTableManager(_$CacheDatabase db, $AssignmentsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$AssignmentsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$AssignmentsTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$AssignmentsTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            Value<int> courseId = const Value.absent(),
            Value<int> courseModuleId = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String?> intro = const Value.absent(),
            Value<Format?> introFormat = const Value.absent(),
            Value<List<FileInfo>> introFiles = const Value.absent(),
            Value<DateTime?> allowSubmissionsFromDate = const Value.absent(),
            Value<DateTime?> dueDate = const Value.absent(),
            Value<DateTime?> cutOffDate = const Value.absent(),
            Value<int?> timeLimit = const Value.absent(),
            Value<bool> isNotRequiredToSubmit = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
          }) =>
              AssignmentsCompanion(
            id: id,
            courseId: courseId,
            courseModuleId: courseModuleId,
            name: name,
            intro: intro,
            introFormat: introFormat,
            introFiles: introFiles,
            allowSubmissionsFromDate: allowSubmissionsFromDate,
            dueDate: dueDate,
            cutOffDate: cutOffDate,
            timeLimit: timeLimit,
            isNotRequiredToSubmit: isNotRequiredToSubmit,
            updatedAt: updatedAt,
          ),
          getInsertCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            required int courseId,
            required int courseModuleId,
            required String name,
            Value<String?> intro = const Value.absent(),
            Value<Format?> introFormat = const Value.absent(),
            required List<FileInfo> introFiles,
            Value<DateTime?> allowSubmissionsFromDate = const Value.absent(),
            Value<DateTime?> dueDate = const Value.absent(),
            Value<DateTime?> cutOffDate = const Value.absent(),
            Value<int?> timeLimit = const Value.absent(),
            required bool isNotRequiredToSubmit,
            required DateTime updatedAt,
          }) =>
              AssignmentsCompanion.insert(
            id: id,
            courseId: courseId,
            courseModuleId: courseModuleId,
            name: name,
            intro: intro,
            introFormat: introFormat,
            introFiles: introFiles,
            allowSubmissionsFromDate: allowSubmissionsFromDate,
            dueDate: dueDate,
            cutOffDate: cutOffDate,
            timeLimit: timeLimit,
            isNotRequiredToSubmit: isNotRequiredToSubmit,
            updatedAt: updatedAt,
          ),
        ));
}

class $$AssignmentsTableProcessedTableManager extends ProcessedTableManager<
    _$CacheDatabase,
    $AssignmentsTable,
    Assignment,
    $$AssignmentsTableFilterComposer,
    $$AssignmentsTableOrderingComposer,
    $$AssignmentsTableProcessedTableManager,
    $$AssignmentsTableInsertCompanionBuilder,
    $$AssignmentsTableUpdateCompanionBuilder> {
  $$AssignmentsTableProcessedTableManager(super.$state);
}

class $$AssignmentsTableFilterComposer
    extends FilterComposer<_$CacheDatabase, $AssignmentsTable> {
  $$AssignmentsTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get courseId => $state.composableBuilder(
      column: $state.table.courseId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get courseModuleId => $state.composableBuilder(
      column: $state.table.courseModuleId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get intro => $state.composableBuilder(
      column: $state.table.intro,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<Format?, Format, String> get introFormat =>
      $state.composableBuilder(
          column: $state.table.introFormat,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<List<FileInfo>, List<FileInfo>, String>
      get introFiles => $state.composableBuilder(
          column: $state.table.introFiles,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get allowSubmissionsFromDate =>
      $state.composableBuilder(
          column: $state.table.allowSubmissionsFromDate,
          builder: (column, joinBuilders) =>
              ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get dueDate => $state.composableBuilder(
      column: $state.table.dueDate,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get cutOffDate => $state.composableBuilder(
      column: $state.table.cutOffDate,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get timeLimit => $state.composableBuilder(
      column: $state.table.timeLimit,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get isNotRequiredToSubmit => $state.composableBuilder(
      column: $state.table.isNotRequiredToSubmit,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get updatedAt => $state.composableBuilder(
      column: $state.table.updatedAt,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$AssignmentsTableOrderingComposer
    extends OrderingComposer<_$CacheDatabase, $AssignmentsTable> {
  $$AssignmentsTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get courseId => $state.composableBuilder(
      column: $state.table.courseId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get courseModuleId => $state.composableBuilder(
      column: $state.table.courseModuleId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get intro => $state.composableBuilder(
      column: $state.table.intro,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get introFormat => $state.composableBuilder(
      column: $state.table.introFormat,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get introFiles => $state.composableBuilder(
      column: $state.table.introFiles,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get allowSubmissionsFromDate =>
      $state.composableBuilder(
          column: $state.table.allowSubmissionsFromDate,
          builder: (column, joinBuilders) =>
              ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get dueDate => $state.composableBuilder(
      column: $state.table.dueDate,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get cutOffDate => $state.composableBuilder(
      column: $state.table.cutOffDate,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get timeLimit => $state.composableBuilder(
      column: $state.table.timeLimit,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get isNotRequiredToSubmit => $state.composableBuilder(
      column: $state.table.isNotRequiredToSubmit,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get updatedAt => $state.composableBuilder(
      column: $state.table.updatedAt,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$CourseCategoriesTableInsertCompanionBuilder
    = CourseCategoriesCompanion Function({
  Value<int> id,
  required String name,
  Value<int?> parentId,
});
typedef $$CourseCategoriesTableUpdateCompanionBuilder
    = CourseCategoriesCompanion Function({
  Value<int> id,
  Value<String> name,
  Value<int?> parentId,
});

class $$CourseCategoriesTableTableManager extends RootTableManager<
    _$CacheDatabase,
    $CourseCategoriesTable,
    CourseCategory,
    $$CourseCategoriesTableFilterComposer,
    $$CourseCategoriesTableOrderingComposer,
    $$CourseCategoriesTableProcessedTableManager,
    $$CourseCategoriesTableInsertCompanionBuilder,
    $$CourseCategoriesTableUpdateCompanionBuilder> {
  $$CourseCategoriesTableTableManager(
      _$CacheDatabase db, $CourseCategoriesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$CourseCategoriesTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$CourseCategoriesTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$CourseCategoriesTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<int?> parentId = const Value.absent(),
          }) =>
              CourseCategoriesCompanion(
            id: id,
            name: name,
            parentId: parentId,
          ),
          getInsertCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            required String name,
            Value<int?> parentId = const Value.absent(),
          }) =>
              CourseCategoriesCompanion.insert(
            id: id,
            name: name,
            parentId: parentId,
          ),
        ));
}

class $$CourseCategoriesTableProcessedTableManager
    extends ProcessedTableManager<
        _$CacheDatabase,
        $CourseCategoriesTable,
        CourseCategory,
        $$CourseCategoriesTableFilterComposer,
        $$CourseCategoriesTableOrderingComposer,
        $$CourseCategoriesTableProcessedTableManager,
        $$CourseCategoriesTableInsertCompanionBuilder,
        $$CourseCategoriesTableUpdateCompanionBuilder> {
  $$CourseCategoriesTableProcessedTableManager(super.$state);
}

class $$CourseCategoriesTableFilterComposer
    extends FilterComposer<_$CacheDatabase, $CourseCategoriesTable> {
  $$CourseCategoriesTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get parentId => $state.composableBuilder(
      column: $state.table.parentId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$CourseCategoriesTableOrderingComposer
    extends OrderingComposer<_$CacheDatabase, $CourseCategoriesTable> {
  $$CourseCategoriesTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get parentId => $state.composableBuilder(
      column: $state.table.parentId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$CourseContentModulesTableInsertCompanionBuilder
    = CourseContentModulesCompanion Function({
  required int courseContentId,
  required int id,
  Value<CourseContentModuleType?> type,
  required String modName,
  required String name,
  Value<String?> description,
  Value<String?> url,
  required List<CourseContentModuleContent> contents,
  Value<int> rowid,
});
typedef $$CourseContentModulesTableUpdateCompanionBuilder
    = CourseContentModulesCompanion Function({
  Value<int> courseContentId,
  Value<int> id,
  Value<CourseContentModuleType?> type,
  Value<String> modName,
  Value<String> name,
  Value<String?> description,
  Value<String?> url,
  Value<List<CourseContentModuleContent>> contents,
  Value<int> rowid,
});

class $$CourseContentModulesTableTableManager extends RootTableManager<
    _$CacheDatabase,
    $CourseContentModulesTable,
    CourseContentModule,
    $$CourseContentModulesTableFilterComposer,
    $$CourseContentModulesTableOrderingComposer,
    $$CourseContentModulesTableProcessedTableManager,
    $$CourseContentModulesTableInsertCompanionBuilder,
    $$CourseContentModulesTableUpdateCompanionBuilder> {
  $$CourseContentModulesTableTableManager(
      _$CacheDatabase db, $CourseContentModulesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer: $$CourseContentModulesTableFilterComposer(
              ComposerState(db, table)),
          orderingComposer: $$CourseContentModulesTableOrderingComposer(
              ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$CourseContentModulesTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<int> courseContentId = const Value.absent(),
            Value<int> id = const Value.absent(),
            Value<CourseContentModuleType?> type = const Value.absent(),
            Value<String> modName = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String?> description = const Value.absent(),
            Value<String?> url = const Value.absent(),
            Value<List<CourseContentModuleContent>> contents =
                const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              CourseContentModulesCompanion(
            courseContentId: courseContentId,
            id: id,
            type: type,
            modName: modName,
            name: name,
            description: description,
            url: url,
            contents: contents,
            rowid: rowid,
          ),
          getInsertCompanionBuilder: ({
            required int courseContentId,
            required int id,
            Value<CourseContentModuleType?> type = const Value.absent(),
            required String modName,
            required String name,
            Value<String?> description = const Value.absent(),
            Value<String?> url = const Value.absent(),
            required List<CourseContentModuleContent> contents,
            Value<int> rowid = const Value.absent(),
          }) =>
              CourseContentModulesCompanion.insert(
            courseContentId: courseContentId,
            id: id,
            type: type,
            modName: modName,
            name: name,
            description: description,
            url: url,
            contents: contents,
            rowid: rowid,
          ),
        ));
}

class $$CourseContentModulesTableProcessedTableManager
    extends ProcessedTableManager<
        _$CacheDatabase,
        $CourseContentModulesTable,
        CourseContentModule,
        $$CourseContentModulesTableFilterComposer,
        $$CourseContentModulesTableOrderingComposer,
        $$CourseContentModulesTableProcessedTableManager,
        $$CourseContentModulesTableInsertCompanionBuilder,
        $$CourseContentModulesTableUpdateCompanionBuilder> {
  $$CourseContentModulesTableProcessedTableManager(super.$state);
}

class $$CourseContentModulesTableFilterComposer
    extends FilterComposer<_$CacheDatabase, $CourseContentModulesTable> {
  $$CourseContentModulesTableFilterComposer(super.$state);
  ColumnFilters<int> get courseContentId => $state.composableBuilder(
      column: $state.table.courseContentId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<CourseContentModuleType?,
          CourseContentModuleType, String>
      get type => $state.composableBuilder(
          column: $state.table.type,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));

  ColumnFilters<String> get modName => $state.composableBuilder(
      column: $state.table.modName,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get description => $state.composableBuilder(
      column: $state.table.description,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get url => $state.composableBuilder(
      column: $state.table.url,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<List<CourseContentModuleContent>,
          List<CourseContentModuleContent>, String>
      get contents => $state.composableBuilder(
          column: $state.table.contents,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));
}

class $$CourseContentModulesTableOrderingComposer
    extends OrderingComposer<_$CacheDatabase, $CourseContentModulesTable> {
  $$CourseContentModulesTableOrderingComposer(super.$state);
  ColumnOrderings<int> get courseContentId => $state.composableBuilder(
      column: $state.table.courseContentId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get type => $state.composableBuilder(
      column: $state.table.type,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get modName => $state.composableBuilder(
      column: $state.table.modName,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get description => $state.composableBuilder(
      column: $state.table.description,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get url => $state.composableBuilder(
      column: $state.table.url,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get contents => $state.composableBuilder(
      column: $state.table.contents,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$CourseContentsTableInsertCompanionBuilder = CourseContentsCompanion
    Function({
  required int courseId,
  required int id,
  required String name,
  required String summary,
  Value<Format?> summaryFormat,
  Value<int> rowid,
});
typedef $$CourseContentsTableUpdateCompanionBuilder = CourseContentsCompanion
    Function({
  Value<int> courseId,
  Value<int> id,
  Value<String> name,
  Value<String> summary,
  Value<Format?> summaryFormat,
  Value<int> rowid,
});

class $$CourseContentsTableTableManager extends RootTableManager<
    _$CacheDatabase,
    $CourseContentsTable,
    CourseContent,
    $$CourseContentsTableFilterComposer,
    $$CourseContentsTableOrderingComposer,
    $$CourseContentsTableProcessedTableManager,
    $$CourseContentsTableInsertCompanionBuilder,
    $$CourseContentsTableUpdateCompanionBuilder> {
  $$CourseContentsTableTableManager(
      _$CacheDatabase db, $CourseContentsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$CourseContentsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$CourseContentsTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$CourseContentsTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<int> courseId = const Value.absent(),
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> summary = const Value.absent(),
            Value<Format?> summaryFormat = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              CourseContentsCompanion(
            courseId: courseId,
            id: id,
            name: name,
            summary: summary,
            summaryFormat: summaryFormat,
            rowid: rowid,
          ),
          getInsertCompanionBuilder: ({
            required int courseId,
            required int id,
            required String name,
            required String summary,
            Value<Format?> summaryFormat = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              CourseContentsCompanion.insert(
            courseId: courseId,
            id: id,
            name: name,
            summary: summary,
            summaryFormat: summaryFormat,
            rowid: rowid,
          ),
        ));
}

class $$CourseContentsTableProcessedTableManager extends ProcessedTableManager<
    _$CacheDatabase,
    $CourseContentsTable,
    CourseContent,
    $$CourseContentsTableFilterComposer,
    $$CourseContentsTableOrderingComposer,
    $$CourseContentsTableProcessedTableManager,
    $$CourseContentsTableInsertCompanionBuilder,
    $$CourseContentsTableUpdateCompanionBuilder> {
  $$CourseContentsTableProcessedTableManager(super.$state);
}

class $$CourseContentsTableFilterComposer
    extends FilterComposer<_$CacheDatabase, $CourseContentsTable> {
  $$CourseContentsTableFilterComposer(super.$state);
  ColumnFilters<int> get courseId => $state.composableBuilder(
      column: $state.table.courseId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get summary => $state.composableBuilder(
      column: $state.table.summary,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<Format?, Format, String> get summaryFormat =>
      $state.composableBuilder(
          column: $state.table.summaryFormat,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));
}

class $$CourseContentsTableOrderingComposer
    extends OrderingComposer<_$CacheDatabase, $CourseContentsTable> {
  $$CourseContentsTableOrderingComposer(super.$state);
  ColumnOrderings<int> get courseId => $state.composableBuilder(
      column: $state.table.courseId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get summary => $state.composableBuilder(
      column: $state.table.summary,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get summaryFormat => $state.composableBuilder(
      column: $state.table.summaryFormat,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$CoursesTableInsertCompanionBuilder = CoursesCompanion Function({
  Value<int> id,
  required String nameJa,
  required String nameEn,
  Value<int?> categoryId,
  required bool isEnrolled,
  required DateTime updatedAt,
});
typedef $$CoursesTableUpdateCompanionBuilder = CoursesCompanion Function({
  Value<int> id,
  Value<String> nameJa,
  Value<String> nameEn,
  Value<int?> categoryId,
  Value<bool> isEnrolled,
  Value<DateTime> updatedAt,
});

class $$CoursesTableTableManager extends RootTableManager<
    _$CacheDatabase,
    $CoursesTable,
    Course,
    $$CoursesTableFilterComposer,
    $$CoursesTableOrderingComposer,
    $$CoursesTableProcessedTableManager,
    $$CoursesTableInsertCompanionBuilder,
    $$CoursesTableUpdateCompanionBuilder> {
  $$CoursesTableTableManager(_$CacheDatabase db, $CoursesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$CoursesTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$CoursesTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) => $$CoursesTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            Value<String> nameJa = const Value.absent(),
            Value<String> nameEn = const Value.absent(),
            Value<int?> categoryId = const Value.absent(),
            Value<bool> isEnrolled = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
          }) =>
              CoursesCompanion(
            id: id,
            nameJa: nameJa,
            nameEn: nameEn,
            categoryId: categoryId,
            isEnrolled: isEnrolled,
            updatedAt: updatedAt,
          ),
          getInsertCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            required String nameJa,
            required String nameEn,
            Value<int?> categoryId = const Value.absent(),
            required bool isEnrolled,
            required DateTime updatedAt,
          }) =>
              CoursesCompanion.insert(
            id: id,
            nameJa: nameJa,
            nameEn: nameEn,
            categoryId: categoryId,
            isEnrolled: isEnrolled,
            updatedAt: updatedAt,
          ),
        ));
}

class $$CoursesTableProcessedTableManager extends ProcessedTableManager<
    _$CacheDatabase,
    $CoursesTable,
    Course,
    $$CoursesTableFilterComposer,
    $$CoursesTableOrderingComposer,
    $$CoursesTableProcessedTableManager,
    $$CoursesTableInsertCompanionBuilder,
    $$CoursesTableUpdateCompanionBuilder> {
  $$CoursesTableProcessedTableManager(super.$state);
}

class $$CoursesTableFilterComposer
    extends FilterComposer<_$CacheDatabase, $CoursesTable> {
  $$CoursesTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get nameJa => $state.composableBuilder(
      column: $state.table.nameJa,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get nameEn => $state.composableBuilder(
      column: $state.table.nameEn,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get categoryId => $state.composableBuilder(
      column: $state.table.categoryId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get isEnrolled => $state.composableBuilder(
      column: $state.table.isEnrolled,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get updatedAt => $state.composableBuilder(
      column: $state.table.updatedAt,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$CoursesTableOrderingComposer
    extends OrderingComposer<_$CacheDatabase, $CoursesTable> {
  $$CoursesTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get nameJa => $state.composableBuilder(
      column: $state.table.nameJa,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get nameEn => $state.composableBuilder(
      column: $state.table.nameEn,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get categoryId => $state.composableBuilder(
      column: $state.table.categoryId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get isEnrolled => $state.composableBuilder(
      column: $state.table.isEnrolled,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get updatedAt => $state.composableBuilder(
      column: $state.table.updatedAt,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$NotificationsTableInsertCompanionBuilder = NotificationsCompanion
    Function({
  Value<int> id,
});
typedef $$NotificationsTableUpdateCompanionBuilder = NotificationsCompanion
    Function({
  Value<int> id,
});

class $$NotificationsTableTableManager extends RootTableManager<
    _$CacheDatabase,
    $NotificationsTable,
    Notification,
    $$NotificationsTableFilterComposer,
    $$NotificationsTableOrderingComposer,
    $$NotificationsTableProcessedTableManager,
    $$NotificationsTableInsertCompanionBuilder,
    $$NotificationsTableUpdateCompanionBuilder> {
  $$NotificationsTableTableManager(
      _$CacheDatabase db, $NotificationsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$NotificationsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$NotificationsTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$NotificationsTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<int> id = const Value.absent(),
          }) =>
              NotificationsCompanion(
            id: id,
          ),
          getInsertCompanionBuilder: ({
            Value<int> id = const Value.absent(),
          }) =>
              NotificationsCompanion.insert(
            id: id,
          ),
        ));
}

class $$NotificationsTableProcessedTableManager extends ProcessedTableManager<
    _$CacheDatabase,
    $NotificationsTable,
    Notification,
    $$NotificationsTableFilterComposer,
    $$NotificationsTableOrderingComposer,
    $$NotificationsTableProcessedTableManager,
    $$NotificationsTableInsertCompanionBuilder,
    $$NotificationsTableUpdateCompanionBuilder> {
  $$NotificationsTableProcessedTableManager(super.$state);
}

class $$NotificationsTableFilterComposer
    extends FilterComposer<_$CacheDatabase, $NotificationsTable> {
  $$NotificationsTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$NotificationsTableOrderingComposer
    extends OrderingComposer<_$CacheDatabase, $NotificationsTable> {
  $$NotificationsTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$SubmissionsTableInsertCompanionBuilder = SubmissionsCompanion
    Function({
  Value<int> assignmentId,
  Value<int?> id,
  required bool canEdit,
  required bool isSubmitted,
  Value<DateTime?> modifiedAt,
  Value<String?> onlineText,
  Value<Format?> onlineTextFormat,
  required List<FileInfo> files,
  required DateTime updatedAt,
});
typedef $$SubmissionsTableUpdateCompanionBuilder = SubmissionsCompanion
    Function({
  Value<int> assignmentId,
  Value<int?> id,
  Value<bool> canEdit,
  Value<bool> isSubmitted,
  Value<DateTime?> modifiedAt,
  Value<String?> onlineText,
  Value<Format?> onlineTextFormat,
  Value<List<FileInfo>> files,
  Value<DateTime> updatedAt,
});

class $$SubmissionsTableTableManager extends RootTableManager<
    _$CacheDatabase,
    $SubmissionsTable,
    Submission,
    $$SubmissionsTableFilterComposer,
    $$SubmissionsTableOrderingComposer,
    $$SubmissionsTableProcessedTableManager,
    $$SubmissionsTableInsertCompanionBuilder,
    $$SubmissionsTableUpdateCompanionBuilder> {
  $$SubmissionsTableTableManager(_$CacheDatabase db, $SubmissionsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$SubmissionsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$SubmissionsTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$SubmissionsTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<int> assignmentId = const Value.absent(),
            Value<int?> id = const Value.absent(),
            Value<bool> canEdit = const Value.absent(),
            Value<bool> isSubmitted = const Value.absent(),
            Value<DateTime?> modifiedAt = const Value.absent(),
            Value<String?> onlineText = const Value.absent(),
            Value<Format?> onlineTextFormat = const Value.absent(),
            Value<List<FileInfo>> files = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
          }) =>
              SubmissionsCompanion(
            assignmentId: assignmentId,
            id: id,
            canEdit: canEdit,
            isSubmitted: isSubmitted,
            modifiedAt: modifiedAt,
            onlineText: onlineText,
            onlineTextFormat: onlineTextFormat,
            files: files,
            updatedAt: updatedAt,
          ),
          getInsertCompanionBuilder: ({
            Value<int> assignmentId = const Value.absent(),
            Value<int?> id = const Value.absent(),
            required bool canEdit,
            required bool isSubmitted,
            Value<DateTime?> modifiedAt = const Value.absent(),
            Value<String?> onlineText = const Value.absent(),
            Value<Format?> onlineTextFormat = const Value.absent(),
            required List<FileInfo> files,
            required DateTime updatedAt,
          }) =>
              SubmissionsCompanion.insert(
            assignmentId: assignmentId,
            id: id,
            canEdit: canEdit,
            isSubmitted: isSubmitted,
            modifiedAt: modifiedAt,
            onlineText: onlineText,
            onlineTextFormat: onlineTextFormat,
            files: files,
            updatedAt: updatedAt,
          ),
        ));
}

class $$SubmissionsTableProcessedTableManager extends ProcessedTableManager<
    _$CacheDatabase,
    $SubmissionsTable,
    Submission,
    $$SubmissionsTableFilterComposer,
    $$SubmissionsTableOrderingComposer,
    $$SubmissionsTableProcessedTableManager,
    $$SubmissionsTableInsertCompanionBuilder,
    $$SubmissionsTableUpdateCompanionBuilder> {
  $$SubmissionsTableProcessedTableManager(super.$state);
}

class $$SubmissionsTableFilterComposer
    extends FilterComposer<_$CacheDatabase, $SubmissionsTable> {
  $$SubmissionsTableFilterComposer(super.$state);
  ColumnFilters<int> get assignmentId => $state.composableBuilder(
      column: $state.table.assignmentId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get canEdit => $state.composableBuilder(
      column: $state.table.canEdit,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get isSubmitted => $state.composableBuilder(
      column: $state.table.isSubmitted,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get modifiedAt => $state.composableBuilder(
      column: $state.table.modifiedAt,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get onlineText => $state.composableBuilder(
      column: $state.table.onlineText,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<Format?, Format, String>
      get onlineTextFormat => $state.composableBuilder(
          column: $state.table.onlineTextFormat,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<List<FileInfo>, List<FileInfo>, String>
      get files => $state.composableBuilder(
          column: $state.table.files,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get updatedAt => $state.composableBuilder(
      column: $state.table.updatedAt,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$SubmissionsTableOrderingComposer
    extends OrderingComposer<_$CacheDatabase, $SubmissionsTable> {
  $$SubmissionsTableOrderingComposer(super.$state);
  ColumnOrderings<int> get assignmentId => $state.composableBuilder(
      column: $state.table.assignmentId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get canEdit => $state.composableBuilder(
      column: $state.table.canEdit,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get isSubmitted => $state.composableBuilder(
      column: $state.table.isSubmitted,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get modifiedAt => $state.composableBuilder(
      column: $state.table.modifiedAt,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get onlineText => $state.composableBuilder(
      column: $state.table.onlineText,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get onlineTextFormat => $state.composableBuilder(
      column: $state.table.onlineTextFormat,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get files => $state.composableBuilder(
      column: $state.table.files,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get updatedAt => $state.composableBuilder(
      column: $state.table.updatedAt,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$TimestampsTableInsertCompanionBuilder = TimestampsCompanion Function({
  required String id,
  required DateTime at,
  Value<int> rowid,
});
typedef $$TimestampsTableUpdateCompanionBuilder = TimestampsCompanion Function({
  Value<String> id,
  Value<DateTime> at,
  Value<int> rowid,
});

class $$TimestampsTableTableManager extends RootTableManager<
    _$CacheDatabase,
    $TimestampsTable,
    Timestamp,
    $$TimestampsTableFilterComposer,
    $$TimestampsTableOrderingComposer,
    $$TimestampsTableProcessedTableManager,
    $$TimestampsTableInsertCompanionBuilder,
    $$TimestampsTableUpdateCompanionBuilder> {
  $$TimestampsTableTableManager(_$CacheDatabase db, $TimestampsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$TimestampsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$TimestampsTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$TimestampsTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<String> id = const Value.absent(),
            Value<DateTime> at = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              TimestampsCompanion(
            id: id,
            at: at,
            rowid: rowid,
          ),
          getInsertCompanionBuilder: ({
            required String id,
            required DateTime at,
            Value<int> rowid = const Value.absent(),
          }) =>
              TimestampsCompanion.insert(
            id: id,
            at: at,
            rowid: rowid,
          ),
        ));
}

class $$TimestampsTableProcessedTableManager extends ProcessedTableManager<
    _$CacheDatabase,
    $TimestampsTable,
    Timestamp,
    $$TimestampsTableFilterComposer,
    $$TimestampsTableOrderingComposer,
    $$TimestampsTableProcessedTableManager,
    $$TimestampsTableInsertCompanionBuilder,
    $$TimestampsTableUpdateCompanionBuilder> {
  $$TimestampsTableProcessedTableManager(super.$state);
}

class $$TimestampsTableFilterComposer
    extends FilterComposer<_$CacheDatabase, $TimestampsTable> {
  $$TimestampsTableFilterComposer(super.$state);
  ColumnFilters<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get at => $state.composableBuilder(
      column: $state.table.at,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$TimestampsTableOrderingComposer
    extends OrderingComposer<_$CacheDatabase, $TimestampsTable> {
  $$TimestampsTableOrderingComposer(super.$state);
  ColumnOrderings<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get at => $state.composableBuilder(
      column: $state.table.at,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$TimetableQuartersTableInsertCompanionBuilder
    = TimetableQuartersCompanion Function({
  required String lang,
  required String value,
  required String label,
  Value<int> rowid,
});
typedef $$TimetableQuartersTableUpdateCompanionBuilder
    = TimetableQuartersCompanion Function({
  Value<String> lang,
  Value<String> value,
  Value<String> label,
  Value<int> rowid,
});

class $$TimetableQuartersTableTableManager extends RootTableManager<
    _$CacheDatabase,
    $TimetableQuartersTable,
    TimetableQuarter,
    $$TimetableQuartersTableFilterComposer,
    $$TimetableQuartersTableOrderingComposer,
    $$TimetableQuartersTableProcessedTableManager,
    $$TimetableQuartersTableInsertCompanionBuilder,
    $$TimetableQuartersTableUpdateCompanionBuilder> {
  $$TimetableQuartersTableTableManager(
      _$CacheDatabase db, $TimetableQuartersTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$TimetableQuartersTableFilterComposer(ComposerState(db, table)),
          orderingComposer: $$TimetableQuartersTableOrderingComposer(
              ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$TimetableQuartersTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<String> lang = const Value.absent(),
            Value<String> value = const Value.absent(),
            Value<String> label = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              TimetableQuartersCompanion(
            lang: lang,
            value: value,
            label: label,
            rowid: rowid,
          ),
          getInsertCompanionBuilder: ({
            required String lang,
            required String value,
            required String label,
            Value<int> rowid = const Value.absent(),
          }) =>
              TimetableQuartersCompanion.insert(
            lang: lang,
            value: value,
            label: label,
            rowid: rowid,
          ),
        ));
}

class $$TimetableQuartersTableProcessedTableManager
    extends ProcessedTableManager<
        _$CacheDatabase,
        $TimetableQuartersTable,
        TimetableQuarter,
        $$TimetableQuartersTableFilterComposer,
        $$TimetableQuartersTableOrderingComposer,
        $$TimetableQuartersTableProcessedTableManager,
        $$TimetableQuartersTableInsertCompanionBuilder,
        $$TimetableQuartersTableUpdateCompanionBuilder> {
  $$TimetableQuartersTableProcessedTableManager(super.$state);
}

class $$TimetableQuartersTableFilterComposer
    extends FilterComposer<_$CacheDatabase, $TimetableQuartersTable> {
  $$TimetableQuartersTableFilterComposer(super.$state);
  ColumnFilters<String> get lang => $state.composableBuilder(
      column: $state.table.lang,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get value => $state.composableBuilder(
      column: $state.table.value,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get label => $state.composableBuilder(
      column: $state.table.label,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$TimetableQuartersTableOrderingComposer
    extends OrderingComposer<_$CacheDatabase, $TimetableQuartersTable> {
  $$TimetableQuartersTableOrderingComposer(super.$state);
  ColumnOrderings<String> get lang => $state.composableBuilder(
      column: $state.table.lang,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get value => $state.composableBuilder(
      column: $state.table.value,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get label => $state.composableBuilder(
      column: $state.table.label,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$TimetableYearsTableInsertCompanionBuilder = TimetableYearsCompanion
    Function({
  required String lang,
  required String value,
  required String label,
  Value<int> rowid,
});
typedef $$TimetableYearsTableUpdateCompanionBuilder = TimetableYearsCompanion
    Function({
  Value<String> lang,
  Value<String> value,
  Value<String> label,
  Value<int> rowid,
});

class $$TimetableYearsTableTableManager extends RootTableManager<
    _$CacheDatabase,
    $TimetableYearsTable,
    TimetableYear,
    $$TimetableYearsTableFilterComposer,
    $$TimetableYearsTableOrderingComposer,
    $$TimetableYearsTableProcessedTableManager,
    $$TimetableYearsTableInsertCompanionBuilder,
    $$TimetableYearsTableUpdateCompanionBuilder> {
  $$TimetableYearsTableTableManager(
      _$CacheDatabase db, $TimetableYearsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$TimetableYearsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$TimetableYearsTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$TimetableYearsTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<String> lang = const Value.absent(),
            Value<String> value = const Value.absent(),
            Value<String> label = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              TimetableYearsCompanion(
            lang: lang,
            value: value,
            label: label,
            rowid: rowid,
          ),
          getInsertCompanionBuilder: ({
            required String lang,
            required String value,
            required String label,
            Value<int> rowid = const Value.absent(),
          }) =>
              TimetableYearsCompanion.insert(
            lang: lang,
            value: value,
            label: label,
            rowid: rowid,
          ),
        ));
}

class $$TimetableYearsTableProcessedTableManager extends ProcessedTableManager<
    _$CacheDatabase,
    $TimetableYearsTable,
    TimetableYear,
    $$TimetableYearsTableFilterComposer,
    $$TimetableYearsTableOrderingComposer,
    $$TimetableYearsTableProcessedTableManager,
    $$TimetableYearsTableInsertCompanionBuilder,
    $$TimetableYearsTableUpdateCompanionBuilder> {
  $$TimetableYearsTableProcessedTableManager(super.$state);
}

class $$TimetableYearsTableFilterComposer
    extends FilterComposer<_$CacheDatabase, $TimetableYearsTable> {
  $$TimetableYearsTableFilterComposer(super.$state);
  ColumnFilters<String> get lang => $state.composableBuilder(
      column: $state.table.lang,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get value => $state.composableBuilder(
      column: $state.table.value,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get label => $state.composableBuilder(
      column: $state.table.label,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$TimetableYearsTableOrderingComposer
    extends OrderingComposer<_$CacheDatabase, $TimetableYearsTable> {
  $$TimetableYearsTableOrderingComposer(super.$state);
  ColumnOrderings<String> get lang => $state.composableBuilder(
      column: $state.table.lang,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get value => $state.composableBuilder(
      column: $state.table.value,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get label => $state.composableBuilder(
      column: $state.table.label,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$TimetablesTableInsertCompanionBuilder = TimetablesCompanion Function({
  required String lang,
  required String year,
  required String quarter,
  required String yearLabel,
  required String quarterLabel,
  required TimetableData data,
  required DateTime updatedAt,
  Value<int> rowid,
});
typedef $$TimetablesTableUpdateCompanionBuilder = TimetablesCompanion Function({
  Value<String> lang,
  Value<String> year,
  Value<String> quarter,
  Value<String> yearLabel,
  Value<String> quarterLabel,
  Value<TimetableData> data,
  Value<DateTime> updatedAt,
  Value<int> rowid,
});

class $$TimetablesTableTableManager extends RootTableManager<
    _$CacheDatabase,
    $TimetablesTable,
    Timetable,
    $$TimetablesTableFilterComposer,
    $$TimetablesTableOrderingComposer,
    $$TimetablesTableProcessedTableManager,
    $$TimetablesTableInsertCompanionBuilder,
    $$TimetablesTableUpdateCompanionBuilder> {
  $$TimetablesTableTableManager(_$CacheDatabase db, $TimetablesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$TimetablesTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$TimetablesTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$TimetablesTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<String> lang = const Value.absent(),
            Value<String> year = const Value.absent(),
            Value<String> quarter = const Value.absent(),
            Value<String> yearLabel = const Value.absent(),
            Value<String> quarterLabel = const Value.absent(),
            Value<TimetableData> data = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              TimetablesCompanion(
            lang: lang,
            year: year,
            quarter: quarter,
            yearLabel: yearLabel,
            quarterLabel: quarterLabel,
            data: data,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          getInsertCompanionBuilder: ({
            required String lang,
            required String year,
            required String quarter,
            required String yearLabel,
            required String quarterLabel,
            required TimetableData data,
            required DateTime updatedAt,
            Value<int> rowid = const Value.absent(),
          }) =>
              TimetablesCompanion.insert(
            lang: lang,
            year: year,
            quarter: quarter,
            yearLabel: yearLabel,
            quarterLabel: quarterLabel,
            data: data,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
        ));
}

class $$TimetablesTableProcessedTableManager extends ProcessedTableManager<
    _$CacheDatabase,
    $TimetablesTable,
    Timetable,
    $$TimetablesTableFilterComposer,
    $$TimetablesTableOrderingComposer,
    $$TimetablesTableProcessedTableManager,
    $$TimetablesTableInsertCompanionBuilder,
    $$TimetablesTableUpdateCompanionBuilder> {
  $$TimetablesTableProcessedTableManager(super.$state);
}

class $$TimetablesTableFilterComposer
    extends FilterComposer<_$CacheDatabase, $TimetablesTable> {
  $$TimetablesTableFilterComposer(super.$state);
  ColumnFilters<String> get lang => $state.composableBuilder(
      column: $state.table.lang,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get year => $state.composableBuilder(
      column: $state.table.year,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get quarter => $state.composableBuilder(
      column: $state.table.quarter,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get yearLabel => $state.composableBuilder(
      column: $state.table.yearLabel,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get quarterLabel => $state.composableBuilder(
      column: $state.table.quarterLabel,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<TimetableData, TimetableData, String>
      get data => $state.composableBuilder(
          column: $state.table.data,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get updatedAt => $state.composableBuilder(
      column: $state.table.updatedAt,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$TimetablesTableOrderingComposer
    extends OrderingComposer<_$CacheDatabase, $TimetablesTable> {
  $$TimetablesTableOrderingComposer(super.$state);
  ColumnOrderings<String> get lang => $state.composableBuilder(
      column: $state.table.lang,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get year => $state.composableBuilder(
      column: $state.table.year,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get quarter => $state.composableBuilder(
      column: $state.table.quarter,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get yearLabel => $state.composableBuilder(
      column: $state.table.yearLabel,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get quarterLabel => $state.composableBuilder(
      column: $state.table.quarterLabel,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get data => $state.composableBuilder(
      column: $state.table.data,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get updatedAt => $state.composableBuilder(
      column: $state.table.updatedAt,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class _$CacheDatabaseManager {
  final _$CacheDatabase _db;
  _$CacheDatabaseManager(this._db);
  $$AssignmentsTableTableManager get assignments =>
      $$AssignmentsTableTableManager(_db, _db.assignments);
  $$CourseCategoriesTableTableManager get courseCategories =>
      $$CourseCategoriesTableTableManager(_db, _db.courseCategories);
  $$CourseContentModulesTableTableManager get courseContentModules =>
      $$CourseContentModulesTableTableManager(_db, _db.courseContentModules);
  $$CourseContentsTableTableManager get courseContents =>
      $$CourseContentsTableTableManager(_db, _db.courseContents);
  $$CoursesTableTableManager get courses =>
      $$CoursesTableTableManager(_db, _db.courses);
  $$NotificationsTableTableManager get notifications =>
      $$NotificationsTableTableManager(_db, _db.notifications);
  $$SubmissionsTableTableManager get submissions =>
      $$SubmissionsTableTableManager(_db, _db.submissions);
  $$TimestampsTableTableManager get timestamps =>
      $$TimestampsTableTableManager(_db, _db.timestamps);
  $$TimetableQuartersTableTableManager get timetableQuarters =>
      $$TimetableQuartersTableTableManager(_db, _db.timetableQuarters);
  $$TimetableYearsTableTableManager get timetableYears =>
      $$TimetableYearsTableTableManager(_db, _db.timetableYears);
  $$TimetablesTableTableManager get timetables =>
      $$TimetablesTableTableManager(_db, _db.timetables);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$cacheDbHash() => r'a5790685e58b2e0ea0ba3bf369b396a320b7aa51';

/// See also [CacheDb].
@ProviderFor(CacheDb)
final cacheDbProvider = NotifierProvider<CacheDb, CacheDatabase>.internal(
  CacheDb.new,
  name: r'cacheDbProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$cacheDbHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CacheDb = Notifier<CacheDatabase>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
