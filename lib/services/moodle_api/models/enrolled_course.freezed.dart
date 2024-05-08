// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'enrolled_course.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EnrolledCourseModel _$EnrolledCourseModelFromJson(Map<String, dynamic> json) {
  return _EnrolledCourseModel.fromJson(json);
}

/// @nodoc
mixin _$EnrolledCourseModel {
  /// Course id.
  int get id => throw _privateConstructorUsedError;

  /// Course full name.
  String get fullname => throw _privateConstructorUsedError;

  /// Course display name.
  String? get displayname => throw _privateConstructorUsedError;

  /// Course short name.
  String get shortname => throw _privateConstructorUsedError;

  /// Summary.
  String get summary => throw _privateConstructorUsedError;

  /// Summary format (1 = HTML, 0 = MOODLE, 2 = PLAIN or 4 = MARKDOWN).
  int get summaryformat => throw _privateConstructorUsedError;

  /// Course category id.
  int? get categoryid => throw _privateConstructorUsedError;

  /// Id number of course.
  String? get idnumber => throw _privateConstructorUsedError;

  /// 1 means visible, 0 means not yet visible course.
  int? get visible => throw _privateConstructorUsedError;

  /// Course format: weeks, topics, social, site.
  String? get format => throw _privateConstructorUsedError;

  /// True if grades are shown, otherwise false.
  bool? get showgrades => throw _privateConstructorUsedError;

  /// Forced course language.
  String? get lang => throw _privateConstructorUsedError;

  /// True if completion is enabled, otherwise false.
  bool? get enablecompletion => throw _privateConstructorUsedError;

  /// Timestamp when the course start.
  int? get startdate => throw _privateConstructorUsedError;

  /// Timestamp when the course end.
  int? get enddate => throw _privateConstructorUsedError;

  /// Number of enrolled users in this course.
  int? get enrolledusercount => throw _privateConstructorUsedError;

  /// If completion criteria is set.
  bool? get completionhascriteria => throw _privateConstructorUsedError;

  /// If the user is completion tracked.
  bool? get completionusertracked => throw _privateConstructorUsedError;

  /// Progress percentage.
  int? get progress => throw _privateConstructorUsedError;

  /// Whether the course is completed.
  bool? get completed => throw _privateConstructorUsedError;

  /// Course section marker.
  int? get marker => throw _privateConstructorUsedError;

  /// Last access to the course (timestamp).
  int? get lastaccess => throw _privateConstructorUsedError;

  /// If the user marked this course a favourite.
  bool? get isfavourite => throw _privateConstructorUsedError;

  /// If the user hide the course from the dashboard.
  bool? get hidden => throw _privateConstructorUsedError;

  /// List of overview files.
  List<FileModel>? get overviewfiles => throw _privateConstructorUsedError;

  /// Whether the activity dates are shown or not.
  bool? get showactivitydates => throw _privateConstructorUsedError;

  /// Whether the activity completion conditions are shown or not.
  bool? get showcompletionconditions => throw _privateConstructorUsedError;

  /// Last time course settings were updated (timestamp).
  int? get timemodified => throw _privateConstructorUsedError;

  /// Course category id.
  int? get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EnrolledCourseModelCopyWith<EnrolledCourseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnrolledCourseModelCopyWith<$Res> {
  factory $EnrolledCourseModelCopyWith(
          EnrolledCourseModel value, $Res Function(EnrolledCourseModel) then) =
      _$EnrolledCourseModelCopyWithImpl<$Res, EnrolledCourseModel>;
  @useResult
  $Res call(
      {int id,
      String fullname,
      String? displayname,
      String shortname,
      String summary,
      int summaryformat,
      int? categoryid,
      String? idnumber,
      int? visible,
      String? format,
      bool? showgrades,
      String? lang,
      bool? enablecompletion,
      int? startdate,
      int? enddate,
      int? enrolledusercount,
      bool? completionhascriteria,
      bool? completionusertracked,
      int? progress,
      bool? completed,
      int? marker,
      int? lastaccess,
      bool? isfavourite,
      bool? hidden,
      List<FileModel>? overviewfiles,
      bool? showactivitydates,
      bool? showcompletionconditions,
      int? timemodified,
      int? category});
}

/// @nodoc
class _$EnrolledCourseModelCopyWithImpl<$Res, $Val extends EnrolledCourseModel>
    implements $EnrolledCourseModelCopyWith<$Res> {
  _$EnrolledCourseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullname = null,
    Object? displayname = freezed,
    Object? shortname = null,
    Object? summary = null,
    Object? summaryformat = null,
    Object? categoryid = freezed,
    Object? idnumber = freezed,
    Object? visible = freezed,
    Object? format = freezed,
    Object? showgrades = freezed,
    Object? lang = freezed,
    Object? enablecompletion = freezed,
    Object? startdate = freezed,
    Object? enddate = freezed,
    Object? enrolledusercount = freezed,
    Object? completionhascriteria = freezed,
    Object? completionusertracked = freezed,
    Object? progress = freezed,
    Object? completed = freezed,
    Object? marker = freezed,
    Object? lastaccess = freezed,
    Object? isfavourite = freezed,
    Object? hidden = freezed,
    Object? overviewfiles = freezed,
    Object? showactivitydates = freezed,
    Object? showcompletionconditions = freezed,
    Object? timemodified = freezed,
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fullname: null == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
      displayname: freezed == displayname
          ? _value.displayname
          : displayname // ignore: cast_nullable_to_non_nullable
              as String?,
      shortname: null == shortname
          ? _value.shortname
          : shortname // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      summaryformat: null == summaryformat
          ? _value.summaryformat
          : summaryformat // ignore: cast_nullable_to_non_nullable
              as int,
      categoryid: freezed == categoryid
          ? _value.categoryid
          : categoryid // ignore: cast_nullable_to_non_nullable
              as int?,
      idnumber: freezed == idnumber
          ? _value.idnumber
          : idnumber // ignore: cast_nullable_to_non_nullable
              as String?,
      visible: freezed == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as int?,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      showgrades: freezed == showgrades
          ? _value.showgrades
          : showgrades // ignore: cast_nullable_to_non_nullable
              as bool?,
      lang: freezed == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String?,
      enablecompletion: freezed == enablecompletion
          ? _value.enablecompletion
          : enablecompletion // ignore: cast_nullable_to_non_nullable
              as bool?,
      startdate: freezed == startdate
          ? _value.startdate
          : startdate // ignore: cast_nullable_to_non_nullable
              as int?,
      enddate: freezed == enddate
          ? _value.enddate
          : enddate // ignore: cast_nullable_to_non_nullable
              as int?,
      enrolledusercount: freezed == enrolledusercount
          ? _value.enrolledusercount
          : enrolledusercount // ignore: cast_nullable_to_non_nullable
              as int?,
      completionhascriteria: freezed == completionhascriteria
          ? _value.completionhascriteria
          : completionhascriteria // ignore: cast_nullable_to_non_nullable
              as bool?,
      completionusertracked: freezed == completionusertracked
          ? _value.completionusertracked
          : completionusertracked // ignore: cast_nullable_to_non_nullable
              as bool?,
      progress: freezed == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int?,
      completed: freezed == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool?,
      marker: freezed == marker
          ? _value.marker
          : marker // ignore: cast_nullable_to_non_nullable
              as int?,
      lastaccess: freezed == lastaccess
          ? _value.lastaccess
          : lastaccess // ignore: cast_nullable_to_non_nullable
              as int?,
      isfavourite: freezed == isfavourite
          ? _value.isfavourite
          : isfavourite // ignore: cast_nullable_to_non_nullable
              as bool?,
      hidden: freezed == hidden
          ? _value.hidden
          : hidden // ignore: cast_nullable_to_non_nullable
              as bool?,
      overviewfiles: freezed == overviewfiles
          ? _value.overviewfiles
          : overviewfiles // ignore: cast_nullable_to_non_nullable
              as List<FileModel>?,
      showactivitydates: freezed == showactivitydates
          ? _value.showactivitydates
          : showactivitydates // ignore: cast_nullable_to_non_nullable
              as bool?,
      showcompletionconditions: freezed == showcompletionconditions
          ? _value.showcompletionconditions
          : showcompletionconditions // ignore: cast_nullable_to_non_nullable
              as bool?,
      timemodified: freezed == timemodified
          ? _value.timemodified
          : timemodified // ignore: cast_nullable_to_non_nullable
              as int?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EnrolledCourseModelImplCopyWith<$Res>
    implements $EnrolledCourseModelCopyWith<$Res> {
  factory _$$EnrolledCourseModelImplCopyWith(_$EnrolledCourseModelImpl value,
          $Res Function(_$EnrolledCourseModelImpl) then) =
      __$$EnrolledCourseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String fullname,
      String? displayname,
      String shortname,
      String summary,
      int summaryformat,
      int? categoryid,
      String? idnumber,
      int? visible,
      String? format,
      bool? showgrades,
      String? lang,
      bool? enablecompletion,
      int? startdate,
      int? enddate,
      int? enrolledusercount,
      bool? completionhascriteria,
      bool? completionusertracked,
      int? progress,
      bool? completed,
      int? marker,
      int? lastaccess,
      bool? isfavourite,
      bool? hidden,
      List<FileModel>? overviewfiles,
      bool? showactivitydates,
      bool? showcompletionconditions,
      int? timemodified,
      int? category});
}

/// @nodoc
class __$$EnrolledCourseModelImplCopyWithImpl<$Res>
    extends _$EnrolledCourseModelCopyWithImpl<$Res, _$EnrolledCourseModelImpl>
    implements _$$EnrolledCourseModelImplCopyWith<$Res> {
  __$$EnrolledCourseModelImplCopyWithImpl(_$EnrolledCourseModelImpl _value,
      $Res Function(_$EnrolledCourseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullname = null,
    Object? displayname = freezed,
    Object? shortname = null,
    Object? summary = null,
    Object? summaryformat = null,
    Object? categoryid = freezed,
    Object? idnumber = freezed,
    Object? visible = freezed,
    Object? format = freezed,
    Object? showgrades = freezed,
    Object? lang = freezed,
    Object? enablecompletion = freezed,
    Object? startdate = freezed,
    Object? enddate = freezed,
    Object? enrolledusercount = freezed,
    Object? completionhascriteria = freezed,
    Object? completionusertracked = freezed,
    Object? progress = freezed,
    Object? completed = freezed,
    Object? marker = freezed,
    Object? lastaccess = freezed,
    Object? isfavourite = freezed,
    Object? hidden = freezed,
    Object? overviewfiles = freezed,
    Object? showactivitydates = freezed,
    Object? showcompletionconditions = freezed,
    Object? timemodified = freezed,
    Object? category = freezed,
  }) {
    return _then(_$EnrolledCourseModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fullname: null == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
      displayname: freezed == displayname
          ? _value.displayname
          : displayname // ignore: cast_nullable_to_non_nullable
              as String?,
      shortname: null == shortname
          ? _value.shortname
          : shortname // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      summaryformat: null == summaryformat
          ? _value.summaryformat
          : summaryformat // ignore: cast_nullable_to_non_nullable
              as int,
      categoryid: freezed == categoryid
          ? _value.categoryid
          : categoryid // ignore: cast_nullable_to_non_nullable
              as int?,
      idnumber: freezed == idnumber
          ? _value.idnumber
          : idnumber // ignore: cast_nullable_to_non_nullable
              as String?,
      visible: freezed == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as int?,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      showgrades: freezed == showgrades
          ? _value.showgrades
          : showgrades // ignore: cast_nullable_to_non_nullable
              as bool?,
      lang: freezed == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String?,
      enablecompletion: freezed == enablecompletion
          ? _value.enablecompletion
          : enablecompletion // ignore: cast_nullable_to_non_nullable
              as bool?,
      startdate: freezed == startdate
          ? _value.startdate
          : startdate // ignore: cast_nullable_to_non_nullable
              as int?,
      enddate: freezed == enddate
          ? _value.enddate
          : enddate // ignore: cast_nullable_to_non_nullable
              as int?,
      enrolledusercount: freezed == enrolledusercount
          ? _value.enrolledusercount
          : enrolledusercount // ignore: cast_nullable_to_non_nullable
              as int?,
      completionhascriteria: freezed == completionhascriteria
          ? _value.completionhascriteria
          : completionhascriteria // ignore: cast_nullable_to_non_nullable
              as bool?,
      completionusertracked: freezed == completionusertracked
          ? _value.completionusertracked
          : completionusertracked // ignore: cast_nullable_to_non_nullable
              as bool?,
      progress: freezed == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int?,
      completed: freezed == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool?,
      marker: freezed == marker
          ? _value.marker
          : marker // ignore: cast_nullable_to_non_nullable
              as int?,
      lastaccess: freezed == lastaccess
          ? _value.lastaccess
          : lastaccess // ignore: cast_nullable_to_non_nullable
              as int?,
      isfavourite: freezed == isfavourite
          ? _value.isfavourite
          : isfavourite // ignore: cast_nullable_to_non_nullable
              as bool?,
      hidden: freezed == hidden
          ? _value.hidden
          : hidden // ignore: cast_nullable_to_non_nullable
              as bool?,
      overviewfiles: freezed == overviewfiles
          ? _value._overviewfiles
          : overviewfiles // ignore: cast_nullable_to_non_nullable
              as List<FileModel>?,
      showactivitydates: freezed == showactivitydates
          ? _value.showactivitydates
          : showactivitydates // ignore: cast_nullable_to_non_nullable
              as bool?,
      showcompletionconditions: freezed == showcompletionconditions
          ? _value.showcompletionconditions
          : showcompletionconditions // ignore: cast_nullable_to_non_nullable
              as bool?,
      timemodified: freezed == timemodified
          ? _value.timemodified
          : timemodified // ignore: cast_nullable_to_non_nullable
              as int?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EnrolledCourseModelImpl extends _EnrolledCourseModel {
  const _$EnrolledCourseModelImpl(
      {required this.id,
      required this.fullname,
      this.displayname,
      required this.shortname,
      required this.summary,
      required this.summaryformat,
      this.categoryid,
      this.idnumber,
      this.visible,
      this.format,
      this.showgrades,
      this.lang,
      this.enablecompletion,
      this.startdate,
      this.enddate,
      this.enrolledusercount,
      this.completionhascriteria,
      this.completionusertracked,
      this.progress,
      this.completed,
      this.marker,
      this.lastaccess,
      this.isfavourite,
      this.hidden,
      final List<FileModel>? overviewfiles,
      this.showactivitydates,
      this.showcompletionconditions,
      this.timemodified,
      this.category})
      : _overviewfiles = overviewfiles,
        super._();

  factory _$EnrolledCourseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EnrolledCourseModelImplFromJson(json);

  /// Course id.
  @override
  final int id;

  /// Course full name.
  @override
  final String fullname;

  /// Course display name.
  @override
  final String? displayname;

  /// Course short name.
  @override
  final String shortname;

  /// Summary.
  @override
  final String summary;

  /// Summary format (1 = HTML, 0 = MOODLE, 2 = PLAIN or 4 = MARKDOWN).
  @override
  final int summaryformat;

  /// Course category id.
  @override
  final int? categoryid;

  /// Id number of course.
  @override
  final String? idnumber;

  /// 1 means visible, 0 means not yet visible course.
  @override
  final int? visible;

  /// Course format: weeks, topics, social, site.
  @override
  final String? format;

  /// True if grades are shown, otherwise false.
  @override
  final bool? showgrades;

  /// Forced course language.
  @override
  final String? lang;

  /// True if completion is enabled, otherwise false.
  @override
  final bool? enablecompletion;

  /// Timestamp when the course start.
  @override
  final int? startdate;

  /// Timestamp when the course end.
  @override
  final int? enddate;

  /// Number of enrolled users in this course.
  @override
  final int? enrolledusercount;

  /// If completion criteria is set.
  @override
  final bool? completionhascriteria;

  /// If the user is completion tracked.
  @override
  final bool? completionusertracked;

  /// Progress percentage.
  @override
  final int? progress;

  /// Whether the course is completed.
  @override
  final bool? completed;

  /// Course section marker.
  @override
  final int? marker;

  /// Last access to the course (timestamp).
  @override
  final int? lastaccess;

  /// If the user marked this course a favourite.
  @override
  final bool? isfavourite;

  /// If the user hide the course from the dashboard.
  @override
  final bool? hidden;

  /// List of overview files.
  final List<FileModel>? _overviewfiles;

  /// List of overview files.
  @override
  List<FileModel>? get overviewfiles {
    final value = _overviewfiles;
    if (value == null) return null;
    if (_overviewfiles is EqualUnmodifiableListView) return _overviewfiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Whether the activity dates are shown or not.
  @override
  final bool? showactivitydates;

  /// Whether the activity completion conditions are shown or not.
  @override
  final bool? showcompletionconditions;

  /// Last time course settings were updated (timestamp).
  @override
  final int? timemodified;

  /// Course category id.
  @override
  final int? category;

  @override
  String toString() {
    return 'EnrolledCourseModel(id: $id, fullname: $fullname, displayname: $displayname, shortname: $shortname, summary: $summary, summaryformat: $summaryformat, categoryid: $categoryid, idnumber: $idnumber, visible: $visible, format: $format, showgrades: $showgrades, lang: $lang, enablecompletion: $enablecompletion, startdate: $startdate, enddate: $enddate, enrolledusercount: $enrolledusercount, completionhascriteria: $completionhascriteria, completionusertracked: $completionusertracked, progress: $progress, completed: $completed, marker: $marker, lastaccess: $lastaccess, isfavourite: $isfavourite, hidden: $hidden, overviewfiles: $overviewfiles, showactivitydates: $showactivitydates, showcompletionconditions: $showcompletionconditions, timemodified: $timemodified, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnrolledCourseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullname, fullname) ||
                other.fullname == fullname) &&
            (identical(other.displayname, displayname) ||
                other.displayname == displayname) &&
            (identical(other.shortname, shortname) ||
                other.shortname == shortname) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.summaryformat, summaryformat) ||
                other.summaryformat == summaryformat) &&
            (identical(other.categoryid, categoryid) ||
                other.categoryid == categoryid) &&
            (identical(other.idnumber, idnumber) ||
                other.idnumber == idnumber) &&
            (identical(other.visible, visible) || other.visible == visible) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.showgrades, showgrades) ||
                other.showgrades == showgrades) &&
            (identical(other.lang, lang) || other.lang == lang) &&
            (identical(other.enablecompletion, enablecompletion) ||
                other.enablecompletion == enablecompletion) &&
            (identical(other.startdate, startdate) ||
                other.startdate == startdate) &&
            (identical(other.enddate, enddate) || other.enddate == enddate) &&
            (identical(other.enrolledusercount, enrolledusercount) ||
                other.enrolledusercount == enrolledusercount) &&
            (identical(other.completionhascriteria, completionhascriteria) ||
                other.completionhascriteria == completionhascriteria) &&
            (identical(other.completionusertracked, completionusertracked) ||
                other.completionusertracked == completionusertracked) &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.completed, completed) ||
                other.completed == completed) &&
            (identical(other.marker, marker) || other.marker == marker) &&
            (identical(other.lastaccess, lastaccess) ||
                other.lastaccess == lastaccess) &&
            (identical(other.isfavourite, isfavourite) ||
                other.isfavourite == isfavourite) &&
            (identical(other.hidden, hidden) || other.hidden == hidden) &&
            const DeepCollectionEquality()
                .equals(other._overviewfiles, _overviewfiles) &&
            (identical(other.showactivitydates, showactivitydates) ||
                other.showactivitydates == showactivitydates) &&
            (identical(
                    other.showcompletionconditions, showcompletionconditions) ||
                other.showcompletionconditions == showcompletionconditions) &&
            (identical(other.timemodified, timemodified) ||
                other.timemodified == timemodified) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        fullname,
        displayname,
        shortname,
        summary,
        summaryformat,
        categoryid,
        idnumber,
        visible,
        format,
        showgrades,
        lang,
        enablecompletion,
        startdate,
        enddate,
        enrolledusercount,
        completionhascriteria,
        completionusertracked,
        progress,
        completed,
        marker,
        lastaccess,
        isfavourite,
        hidden,
        const DeepCollectionEquality().hash(_overviewfiles),
        showactivitydates,
        showcompletionconditions,
        timemodified,
        category
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EnrolledCourseModelImplCopyWith<_$EnrolledCourseModelImpl> get copyWith =>
      __$$EnrolledCourseModelImplCopyWithImpl<_$EnrolledCourseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EnrolledCourseModelImplToJson(
      this,
    );
  }
}

abstract class _EnrolledCourseModel extends EnrolledCourseModel {
  const factory _EnrolledCourseModel(
      {required final int id,
      required final String fullname,
      final String? displayname,
      required final String shortname,
      required final String summary,
      required final int summaryformat,
      final int? categoryid,
      final String? idnumber,
      final int? visible,
      final String? format,
      final bool? showgrades,
      final String? lang,
      final bool? enablecompletion,
      final int? startdate,
      final int? enddate,
      final int? enrolledusercount,
      final bool? completionhascriteria,
      final bool? completionusertracked,
      final int? progress,
      final bool? completed,
      final int? marker,
      final int? lastaccess,
      final bool? isfavourite,
      final bool? hidden,
      final List<FileModel>? overviewfiles,
      final bool? showactivitydates,
      final bool? showcompletionconditions,
      final int? timemodified,
      final int? category}) = _$EnrolledCourseModelImpl;
  const _EnrolledCourseModel._() : super._();

  factory _EnrolledCourseModel.fromJson(Map<String, dynamic> json) =
      _$EnrolledCourseModelImpl.fromJson;

  @override

  /// Course id.
  int get id;
  @override

  /// Course full name.
  String get fullname;
  @override

  /// Course display name.
  String? get displayname;
  @override

  /// Course short name.
  String get shortname;
  @override

  /// Summary.
  String get summary;
  @override

  /// Summary format (1 = HTML, 0 = MOODLE, 2 = PLAIN or 4 = MARKDOWN).
  int get summaryformat;
  @override

  /// Course category id.
  int? get categoryid;
  @override

  /// Id number of course.
  String? get idnumber;
  @override

  /// 1 means visible, 0 means not yet visible course.
  int? get visible;
  @override

  /// Course format: weeks, topics, social, site.
  String? get format;
  @override

  /// True if grades are shown, otherwise false.
  bool? get showgrades;
  @override

  /// Forced course language.
  String? get lang;
  @override

  /// True if completion is enabled, otherwise false.
  bool? get enablecompletion;
  @override

  /// Timestamp when the course start.
  int? get startdate;
  @override

  /// Timestamp when the course end.
  int? get enddate;
  @override

  /// Number of enrolled users in this course.
  int? get enrolledusercount;
  @override

  /// If completion criteria is set.
  bool? get completionhascriteria;
  @override

  /// If the user is completion tracked.
  bool? get completionusertracked;
  @override

  /// Progress percentage.
  int? get progress;
  @override

  /// Whether the course is completed.
  bool? get completed;
  @override

  /// Course section marker.
  int? get marker;
  @override

  /// Last access to the course (timestamp).
  int? get lastaccess;
  @override

  /// If the user marked this course a favourite.
  bool? get isfavourite;
  @override

  /// If the user hide the course from the dashboard.
  bool? get hidden;
  @override

  /// List of overview files.
  List<FileModel>? get overviewfiles;
  @override

  /// Whether the activity dates are shown or not.
  bool? get showactivitydates;
  @override

  /// Whether the activity completion conditions are shown or not.
  bool? get showcompletionconditions;
  @override

  /// Last time course settings were updated (timestamp).
  int? get timemodified;
  @override

  /// Course category id.
  int? get category;
  @override
  @JsonKey(ignore: true)
  _$$EnrolledCourseModelImplCopyWith<_$EnrolledCourseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
