// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'searched_course.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchedCourseModel _$SearchedCourseModelFromJson(Map<String, dynamic> json) {
  return _SearchedCourseModel.fromJson(json);
}

/// @nodoc
mixin _$SearchedCourseModel {
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

  /// Id number.
  String? get idnumber => throw _privateConstructorUsedError;

  /// Course format: weeks, topics, social, site,..
  String? get format => throw _privateConstructorUsedError;

  /// 1 if grades are shown, otherwise 0.
  int? get showgrades => throw _privateConstructorUsedError;

  /// Number of recent items appearing on the course page.
  int? get newsitems => throw _privateConstructorUsedError;

  /// Timestamp when the course start.
  int? get startdate => throw _privateConstructorUsedError;

  /// Timestamp when the course end.
  int? get enddate => throw _privateConstructorUsedError;

  /// Largest size of file that can be uploaded into.
  int? get maxbytes => throw _privateConstructorUsedError;

  /// Are activity report shown (yes = 1, no =0).
  int? get showreports => throw _privateConstructorUsedError;

  /// 1: available to student, 0:not available.
  int? get visible => throw _privateConstructorUsedError;

  /// No group, separate, visible.
  int? get groupmode => throw _privateConstructorUsedError;

  /// 1: yes, 0: no.
  int? get groupmodeforce => throw _privateConstructorUsedError;

  /// Default grouping id.
  int? get defaultgroupingid => throw _privateConstructorUsedError;

  /// Completion enabled? 1: yes 0: no.
  int? get enablecompletion => throw _privateConstructorUsedError;

  /// 1: yes 0: no.
  int? get completionnotify => throw _privateConstructorUsedError;

  /// Forced course language.
  String? get lang => throw _privateConstructorUsedError;

  /// Name of the forced theme.
  String? get theme => throw _privateConstructorUsedError;

  /// Current course marker.
  int? get marker => throw _privateConstructorUsedError;

  /// If legacy files are enabled.
  int? get legacyfiles => throw _privateConstructorUsedError;

  /// Calendar type.
  String? get calendartype => throw _privateConstructorUsedError;

  /// Time when the course was created.
  int? get timecreated => throw _privateConstructorUsedError;

  /// Last time the course was updated.
  int? get timemodified => throw _privateConstructorUsedError;

  /// If is a requested course.
  int? get requested => throw _privateConstructorUsedError;

  /// Cache revision number.
  int? get cacherev => throw _privateConstructorUsedError;

  /// Course filters.
  List<SearchedCourseFilterModel>? get filters =>
      throw _privateConstructorUsedError;

  /// Additional options for particular course format.
  List<CourseFormatOptionModel>? get courseformatoptions =>
      throw _privateConstructorUsedError;

  /// @since Moodle 4.4. Communication tool room name.
  String? get communicationroomname => throw _privateConstructorUsedError;

  /// @since Moodle 4.4. Communication tool room URL.
  String? get communicationroomurl => throw _privateConstructorUsedError;

  /// Category name.
  String get categoryname => throw _privateConstructorUsedError;

  /// Sort order in the category.
  int? get sortorder => throw _privateConstructorUsedError;

  /// Summary files.
  List<FileModel>? get summaryfiles => throw _privateConstructorUsedError;

  /// Overview files.
  List<FileModel> get overviewfiles => throw _privateConstructorUsedError;

  /// Contact users.
  List<SearchedCourseContactModel> get contacts =>
      throw _privateConstructorUsedError;

  /// Enrollment methods list.
  List<String> get enrollmentmethods => throw _privateConstructorUsedError;

  /// Custom fields and associated values.
  List<CourseCustomFieldModel>? get customfields =>
      throw _privateConstructorUsedError;

  /// @since 3.11. Whether the activity dates are shown or not.
  bool? get showactivitydates => throw _privateConstructorUsedError;

  /// @since 3.11. Whether the activity completion conditions are shown or not.
  bool? get showcompletionconditions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchedCourseModelCopyWith<SearchedCourseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchedCourseModelCopyWith<$Res> {
  factory $SearchedCourseModelCopyWith(
          SearchedCourseModel value, $Res Function(SearchedCourseModel) then) =
      _$SearchedCourseModelCopyWithImpl<$Res, SearchedCourseModel>;
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
      String? format,
      int? showgrades,
      int? newsitems,
      int? startdate,
      int? enddate,
      int? maxbytes,
      int? showreports,
      int? visible,
      int? groupmode,
      int? groupmodeforce,
      int? defaultgroupingid,
      int? enablecompletion,
      int? completionnotify,
      String? lang,
      String? theme,
      int? marker,
      int? legacyfiles,
      String? calendartype,
      int? timecreated,
      int? timemodified,
      int? requested,
      int? cacherev,
      List<SearchedCourseFilterModel>? filters,
      List<CourseFormatOptionModel>? courseformatoptions,
      String? communicationroomname,
      String? communicationroomurl,
      String categoryname,
      int? sortorder,
      List<FileModel>? summaryfiles,
      List<FileModel> overviewfiles,
      List<SearchedCourseContactModel> contacts,
      List<String> enrollmentmethods,
      List<CourseCustomFieldModel>? customfields,
      bool? showactivitydates,
      bool? showcompletionconditions});
}

/// @nodoc
class _$SearchedCourseModelCopyWithImpl<$Res, $Val extends SearchedCourseModel>
    implements $SearchedCourseModelCopyWith<$Res> {
  _$SearchedCourseModelCopyWithImpl(this._value, this._then);

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
    Object? format = freezed,
    Object? showgrades = freezed,
    Object? newsitems = freezed,
    Object? startdate = freezed,
    Object? enddate = freezed,
    Object? maxbytes = freezed,
    Object? showreports = freezed,
    Object? visible = freezed,
    Object? groupmode = freezed,
    Object? groupmodeforce = freezed,
    Object? defaultgroupingid = freezed,
    Object? enablecompletion = freezed,
    Object? completionnotify = freezed,
    Object? lang = freezed,
    Object? theme = freezed,
    Object? marker = freezed,
    Object? legacyfiles = freezed,
    Object? calendartype = freezed,
    Object? timecreated = freezed,
    Object? timemodified = freezed,
    Object? requested = freezed,
    Object? cacherev = freezed,
    Object? filters = freezed,
    Object? courseformatoptions = freezed,
    Object? communicationroomname = freezed,
    Object? communicationroomurl = freezed,
    Object? categoryname = null,
    Object? sortorder = freezed,
    Object? summaryfiles = freezed,
    Object? overviewfiles = null,
    Object? contacts = null,
    Object? enrollmentmethods = null,
    Object? customfields = freezed,
    Object? showactivitydates = freezed,
    Object? showcompletionconditions = freezed,
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
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      showgrades: freezed == showgrades
          ? _value.showgrades
          : showgrades // ignore: cast_nullable_to_non_nullable
              as int?,
      newsitems: freezed == newsitems
          ? _value.newsitems
          : newsitems // ignore: cast_nullable_to_non_nullable
              as int?,
      startdate: freezed == startdate
          ? _value.startdate
          : startdate // ignore: cast_nullable_to_non_nullable
              as int?,
      enddate: freezed == enddate
          ? _value.enddate
          : enddate // ignore: cast_nullable_to_non_nullable
              as int?,
      maxbytes: freezed == maxbytes
          ? _value.maxbytes
          : maxbytes // ignore: cast_nullable_to_non_nullable
              as int?,
      showreports: freezed == showreports
          ? _value.showreports
          : showreports // ignore: cast_nullable_to_non_nullable
              as int?,
      visible: freezed == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as int?,
      groupmode: freezed == groupmode
          ? _value.groupmode
          : groupmode // ignore: cast_nullable_to_non_nullable
              as int?,
      groupmodeforce: freezed == groupmodeforce
          ? _value.groupmodeforce
          : groupmodeforce // ignore: cast_nullable_to_non_nullable
              as int?,
      defaultgroupingid: freezed == defaultgroupingid
          ? _value.defaultgroupingid
          : defaultgroupingid // ignore: cast_nullable_to_non_nullable
              as int?,
      enablecompletion: freezed == enablecompletion
          ? _value.enablecompletion
          : enablecompletion // ignore: cast_nullable_to_non_nullable
              as int?,
      completionnotify: freezed == completionnotify
          ? _value.completionnotify
          : completionnotify // ignore: cast_nullable_to_non_nullable
              as int?,
      lang: freezed == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String?,
      theme: freezed == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as String?,
      marker: freezed == marker
          ? _value.marker
          : marker // ignore: cast_nullable_to_non_nullable
              as int?,
      legacyfiles: freezed == legacyfiles
          ? _value.legacyfiles
          : legacyfiles // ignore: cast_nullable_to_non_nullable
              as int?,
      calendartype: freezed == calendartype
          ? _value.calendartype
          : calendartype // ignore: cast_nullable_to_non_nullable
              as String?,
      timecreated: freezed == timecreated
          ? _value.timecreated
          : timecreated // ignore: cast_nullable_to_non_nullable
              as int?,
      timemodified: freezed == timemodified
          ? _value.timemodified
          : timemodified // ignore: cast_nullable_to_non_nullable
              as int?,
      requested: freezed == requested
          ? _value.requested
          : requested // ignore: cast_nullable_to_non_nullable
              as int?,
      cacherev: freezed == cacherev
          ? _value.cacherev
          : cacherev // ignore: cast_nullable_to_non_nullable
              as int?,
      filters: freezed == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as List<SearchedCourseFilterModel>?,
      courseformatoptions: freezed == courseformatoptions
          ? _value.courseformatoptions
          : courseformatoptions // ignore: cast_nullable_to_non_nullable
              as List<CourseFormatOptionModel>?,
      communicationroomname: freezed == communicationroomname
          ? _value.communicationroomname
          : communicationroomname // ignore: cast_nullable_to_non_nullable
              as String?,
      communicationroomurl: freezed == communicationroomurl
          ? _value.communicationroomurl
          : communicationroomurl // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryname: null == categoryname
          ? _value.categoryname
          : categoryname // ignore: cast_nullable_to_non_nullable
              as String,
      sortorder: freezed == sortorder
          ? _value.sortorder
          : sortorder // ignore: cast_nullable_to_non_nullable
              as int?,
      summaryfiles: freezed == summaryfiles
          ? _value.summaryfiles
          : summaryfiles // ignore: cast_nullable_to_non_nullable
              as List<FileModel>?,
      overviewfiles: null == overviewfiles
          ? _value.overviewfiles
          : overviewfiles // ignore: cast_nullable_to_non_nullable
              as List<FileModel>,
      contacts: null == contacts
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<SearchedCourseContactModel>,
      enrollmentmethods: null == enrollmentmethods
          ? _value.enrollmentmethods
          : enrollmentmethods // ignore: cast_nullable_to_non_nullable
              as List<String>,
      customfields: freezed == customfields
          ? _value.customfields
          : customfields // ignore: cast_nullable_to_non_nullable
              as List<CourseCustomFieldModel>?,
      showactivitydates: freezed == showactivitydates
          ? _value.showactivitydates
          : showactivitydates // ignore: cast_nullable_to_non_nullable
              as bool?,
      showcompletionconditions: freezed == showcompletionconditions
          ? _value.showcompletionconditions
          : showcompletionconditions // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchedCourseModelImplCopyWith<$Res>
    implements $SearchedCourseModelCopyWith<$Res> {
  factory _$$SearchedCourseModelImplCopyWith(_$SearchedCourseModelImpl value,
          $Res Function(_$SearchedCourseModelImpl) then) =
      __$$SearchedCourseModelImplCopyWithImpl<$Res>;
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
      String? format,
      int? showgrades,
      int? newsitems,
      int? startdate,
      int? enddate,
      int? maxbytes,
      int? showreports,
      int? visible,
      int? groupmode,
      int? groupmodeforce,
      int? defaultgroupingid,
      int? enablecompletion,
      int? completionnotify,
      String? lang,
      String? theme,
      int? marker,
      int? legacyfiles,
      String? calendartype,
      int? timecreated,
      int? timemodified,
      int? requested,
      int? cacherev,
      List<SearchedCourseFilterModel>? filters,
      List<CourseFormatOptionModel>? courseformatoptions,
      String? communicationroomname,
      String? communicationroomurl,
      String categoryname,
      int? sortorder,
      List<FileModel>? summaryfiles,
      List<FileModel> overviewfiles,
      List<SearchedCourseContactModel> contacts,
      List<String> enrollmentmethods,
      List<CourseCustomFieldModel>? customfields,
      bool? showactivitydates,
      bool? showcompletionconditions});
}

/// @nodoc
class __$$SearchedCourseModelImplCopyWithImpl<$Res>
    extends _$SearchedCourseModelCopyWithImpl<$Res, _$SearchedCourseModelImpl>
    implements _$$SearchedCourseModelImplCopyWith<$Res> {
  __$$SearchedCourseModelImplCopyWithImpl(_$SearchedCourseModelImpl _value,
      $Res Function(_$SearchedCourseModelImpl) _then)
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
    Object? format = freezed,
    Object? showgrades = freezed,
    Object? newsitems = freezed,
    Object? startdate = freezed,
    Object? enddate = freezed,
    Object? maxbytes = freezed,
    Object? showreports = freezed,
    Object? visible = freezed,
    Object? groupmode = freezed,
    Object? groupmodeforce = freezed,
    Object? defaultgroupingid = freezed,
    Object? enablecompletion = freezed,
    Object? completionnotify = freezed,
    Object? lang = freezed,
    Object? theme = freezed,
    Object? marker = freezed,
    Object? legacyfiles = freezed,
    Object? calendartype = freezed,
    Object? timecreated = freezed,
    Object? timemodified = freezed,
    Object? requested = freezed,
    Object? cacherev = freezed,
    Object? filters = freezed,
    Object? courseformatoptions = freezed,
    Object? communicationroomname = freezed,
    Object? communicationroomurl = freezed,
    Object? categoryname = null,
    Object? sortorder = freezed,
    Object? summaryfiles = freezed,
    Object? overviewfiles = null,
    Object? contacts = null,
    Object? enrollmentmethods = null,
    Object? customfields = freezed,
    Object? showactivitydates = freezed,
    Object? showcompletionconditions = freezed,
  }) {
    return _then(_$SearchedCourseModelImpl(
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
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      showgrades: freezed == showgrades
          ? _value.showgrades
          : showgrades // ignore: cast_nullable_to_non_nullable
              as int?,
      newsitems: freezed == newsitems
          ? _value.newsitems
          : newsitems // ignore: cast_nullable_to_non_nullable
              as int?,
      startdate: freezed == startdate
          ? _value.startdate
          : startdate // ignore: cast_nullable_to_non_nullable
              as int?,
      enddate: freezed == enddate
          ? _value.enddate
          : enddate // ignore: cast_nullable_to_non_nullable
              as int?,
      maxbytes: freezed == maxbytes
          ? _value.maxbytes
          : maxbytes // ignore: cast_nullable_to_non_nullable
              as int?,
      showreports: freezed == showreports
          ? _value.showreports
          : showreports // ignore: cast_nullable_to_non_nullable
              as int?,
      visible: freezed == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as int?,
      groupmode: freezed == groupmode
          ? _value.groupmode
          : groupmode // ignore: cast_nullable_to_non_nullable
              as int?,
      groupmodeforce: freezed == groupmodeforce
          ? _value.groupmodeforce
          : groupmodeforce // ignore: cast_nullable_to_non_nullable
              as int?,
      defaultgroupingid: freezed == defaultgroupingid
          ? _value.defaultgroupingid
          : defaultgroupingid // ignore: cast_nullable_to_non_nullable
              as int?,
      enablecompletion: freezed == enablecompletion
          ? _value.enablecompletion
          : enablecompletion // ignore: cast_nullable_to_non_nullable
              as int?,
      completionnotify: freezed == completionnotify
          ? _value.completionnotify
          : completionnotify // ignore: cast_nullable_to_non_nullable
              as int?,
      lang: freezed == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String?,
      theme: freezed == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as String?,
      marker: freezed == marker
          ? _value.marker
          : marker // ignore: cast_nullable_to_non_nullable
              as int?,
      legacyfiles: freezed == legacyfiles
          ? _value.legacyfiles
          : legacyfiles // ignore: cast_nullable_to_non_nullable
              as int?,
      calendartype: freezed == calendartype
          ? _value.calendartype
          : calendartype // ignore: cast_nullable_to_non_nullable
              as String?,
      timecreated: freezed == timecreated
          ? _value.timecreated
          : timecreated // ignore: cast_nullable_to_non_nullable
              as int?,
      timemodified: freezed == timemodified
          ? _value.timemodified
          : timemodified // ignore: cast_nullable_to_non_nullable
              as int?,
      requested: freezed == requested
          ? _value.requested
          : requested // ignore: cast_nullable_to_non_nullable
              as int?,
      cacherev: freezed == cacherev
          ? _value.cacherev
          : cacherev // ignore: cast_nullable_to_non_nullable
              as int?,
      filters: freezed == filters
          ? _value._filters
          : filters // ignore: cast_nullable_to_non_nullable
              as List<SearchedCourseFilterModel>?,
      courseformatoptions: freezed == courseformatoptions
          ? _value._courseformatoptions
          : courseformatoptions // ignore: cast_nullable_to_non_nullable
              as List<CourseFormatOptionModel>?,
      communicationroomname: freezed == communicationroomname
          ? _value.communicationroomname
          : communicationroomname // ignore: cast_nullable_to_non_nullable
              as String?,
      communicationroomurl: freezed == communicationroomurl
          ? _value.communicationroomurl
          : communicationroomurl // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryname: null == categoryname
          ? _value.categoryname
          : categoryname // ignore: cast_nullable_to_non_nullable
              as String,
      sortorder: freezed == sortorder
          ? _value.sortorder
          : sortorder // ignore: cast_nullable_to_non_nullable
              as int?,
      summaryfiles: freezed == summaryfiles
          ? _value._summaryfiles
          : summaryfiles // ignore: cast_nullable_to_non_nullable
              as List<FileModel>?,
      overviewfiles: null == overviewfiles
          ? _value._overviewfiles
          : overviewfiles // ignore: cast_nullable_to_non_nullable
              as List<FileModel>,
      contacts: null == contacts
          ? _value._contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<SearchedCourseContactModel>,
      enrollmentmethods: null == enrollmentmethods
          ? _value._enrollmentmethods
          : enrollmentmethods // ignore: cast_nullable_to_non_nullable
              as List<String>,
      customfields: freezed == customfields
          ? _value._customfields
          : customfields // ignore: cast_nullable_to_non_nullable
              as List<CourseCustomFieldModel>?,
      showactivitydates: freezed == showactivitydates
          ? _value.showactivitydates
          : showactivitydates // ignore: cast_nullable_to_non_nullable
              as bool?,
      showcompletionconditions: freezed == showcompletionconditions
          ? _value.showcompletionconditions
          : showcompletionconditions // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchedCourseModelImpl extends _SearchedCourseModel {
  const _$SearchedCourseModelImpl(
      {required this.id,
      required this.fullname,
      this.displayname,
      required this.shortname,
      required this.summary,
      required this.summaryformat,
      this.categoryid,
      this.idnumber,
      this.format,
      this.showgrades,
      this.newsitems,
      this.startdate,
      this.enddate,
      this.maxbytes,
      this.showreports,
      this.visible,
      this.groupmode,
      this.groupmodeforce,
      this.defaultgroupingid,
      this.enablecompletion,
      this.completionnotify,
      this.lang,
      this.theme,
      this.marker,
      this.legacyfiles,
      this.calendartype,
      this.timecreated,
      this.timemodified,
      this.requested,
      this.cacherev,
      final List<SearchedCourseFilterModel>? filters,
      final List<CourseFormatOptionModel>? courseformatoptions,
      this.communicationroomname,
      this.communicationroomurl,
      required this.categoryname,
      this.sortorder,
      final List<FileModel>? summaryfiles,
      required final List<FileModel> overviewfiles,
      required final List<SearchedCourseContactModel> contacts,
      required final List<String> enrollmentmethods,
      final List<CourseCustomFieldModel>? customfields,
      this.showactivitydates,
      this.showcompletionconditions})
      : _filters = filters,
        _courseformatoptions = courseformatoptions,
        _summaryfiles = summaryfiles,
        _overviewfiles = overviewfiles,
        _contacts = contacts,
        _enrollmentmethods = enrollmentmethods,
        _customfields = customfields,
        super._();

  factory _$SearchedCourseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchedCourseModelImplFromJson(json);

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

  /// Id number.
  @override
  final String? idnumber;

  /// Course format: weeks, topics, social, site,..
  @override
  final String? format;

  /// 1 if grades are shown, otherwise 0.
  @override
  final int? showgrades;

  /// Number of recent items appearing on the course page.
  @override
  final int? newsitems;

  /// Timestamp when the course start.
  @override
  final int? startdate;

  /// Timestamp when the course end.
  @override
  final int? enddate;

  /// Largest size of file that can be uploaded into.
  @override
  final int? maxbytes;

  /// Are activity report shown (yes = 1, no =0).
  @override
  final int? showreports;

  /// 1: available to student, 0:not available.
  @override
  final int? visible;

  /// No group, separate, visible.
  @override
  final int? groupmode;

  /// 1: yes, 0: no.
  @override
  final int? groupmodeforce;

  /// Default grouping id.
  @override
  final int? defaultgroupingid;

  /// Completion enabled? 1: yes 0: no.
  @override
  final int? enablecompletion;

  /// 1: yes 0: no.
  @override
  final int? completionnotify;

  /// Forced course language.
  @override
  final String? lang;

  /// Name of the forced theme.
  @override
  final String? theme;

  /// Current course marker.
  @override
  final int? marker;

  /// If legacy files are enabled.
  @override
  final int? legacyfiles;

  /// Calendar type.
  @override
  final String? calendartype;

  /// Time when the course was created.
  @override
  final int? timecreated;

  /// Last time the course was updated.
  @override
  final int? timemodified;

  /// If is a requested course.
  @override
  final int? requested;

  /// Cache revision number.
  @override
  final int? cacherev;

  /// Course filters.
  final List<SearchedCourseFilterModel>? _filters;

  /// Course filters.
  @override
  List<SearchedCourseFilterModel>? get filters {
    final value = _filters;
    if (value == null) return null;
    if (_filters is EqualUnmodifiableListView) return _filters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Additional options for particular course format.
  final List<CourseFormatOptionModel>? _courseformatoptions;

  /// Additional options for particular course format.
  @override
  List<CourseFormatOptionModel>? get courseformatoptions {
    final value = _courseformatoptions;
    if (value == null) return null;
    if (_courseformatoptions is EqualUnmodifiableListView)
      return _courseformatoptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// @since Moodle 4.4. Communication tool room name.
  @override
  final String? communicationroomname;

  /// @since Moodle 4.4. Communication tool room URL.
  @override
  final String? communicationroomurl;

  /// Category name.
  @override
  final String categoryname;

  /// Sort order in the category.
  @override
  final int? sortorder;

  /// Summary files.
  final List<FileModel>? _summaryfiles;

  /// Summary files.
  @override
  List<FileModel>? get summaryfiles {
    final value = _summaryfiles;
    if (value == null) return null;
    if (_summaryfiles is EqualUnmodifiableListView) return _summaryfiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Overview files.
  final List<FileModel> _overviewfiles;

  /// Overview files.
  @override
  List<FileModel> get overviewfiles {
    if (_overviewfiles is EqualUnmodifiableListView) return _overviewfiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_overviewfiles);
  }

  /// Contact users.
  final List<SearchedCourseContactModel> _contacts;

  /// Contact users.
  @override
  List<SearchedCourseContactModel> get contacts {
    if (_contacts is EqualUnmodifiableListView) return _contacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contacts);
  }

  /// Enrollment methods list.
  final List<String> _enrollmentmethods;

  /// Enrollment methods list.
  @override
  List<String> get enrollmentmethods {
    if (_enrollmentmethods is EqualUnmodifiableListView)
      return _enrollmentmethods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_enrollmentmethods);
  }

  /// Custom fields and associated values.
  final List<CourseCustomFieldModel>? _customfields;

  /// Custom fields and associated values.
  @override
  List<CourseCustomFieldModel>? get customfields {
    final value = _customfields;
    if (value == null) return null;
    if (_customfields is EqualUnmodifiableListView) return _customfields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// @since 3.11. Whether the activity dates are shown or not.
  @override
  final bool? showactivitydates;

  /// @since 3.11. Whether the activity completion conditions are shown or not.
  @override
  final bool? showcompletionconditions;

  @override
  String toString() {
    return 'SearchedCourseModel(id: $id, fullname: $fullname, displayname: $displayname, shortname: $shortname, summary: $summary, summaryformat: $summaryformat, categoryid: $categoryid, idnumber: $idnumber, format: $format, showgrades: $showgrades, newsitems: $newsitems, startdate: $startdate, enddate: $enddate, maxbytes: $maxbytes, showreports: $showreports, visible: $visible, groupmode: $groupmode, groupmodeforce: $groupmodeforce, defaultgroupingid: $defaultgroupingid, enablecompletion: $enablecompletion, completionnotify: $completionnotify, lang: $lang, theme: $theme, marker: $marker, legacyfiles: $legacyfiles, calendartype: $calendartype, timecreated: $timecreated, timemodified: $timemodified, requested: $requested, cacherev: $cacherev, filters: $filters, courseformatoptions: $courseformatoptions, communicationroomname: $communicationroomname, communicationroomurl: $communicationroomurl, categoryname: $categoryname, sortorder: $sortorder, summaryfiles: $summaryfiles, overviewfiles: $overviewfiles, contacts: $contacts, enrollmentmethods: $enrollmentmethods, customfields: $customfields, showactivitydates: $showactivitydates, showcompletionconditions: $showcompletionconditions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchedCourseModelImpl &&
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
            (identical(other.format, format) || other.format == format) &&
            (identical(other.showgrades, showgrades) ||
                other.showgrades == showgrades) &&
            (identical(other.newsitems, newsitems) ||
                other.newsitems == newsitems) &&
            (identical(other.startdate, startdate) ||
                other.startdate == startdate) &&
            (identical(other.enddate, enddate) || other.enddate == enddate) &&
            (identical(other.maxbytes, maxbytes) ||
                other.maxbytes == maxbytes) &&
            (identical(other.showreports, showreports) ||
                other.showreports == showreports) &&
            (identical(other.visible, visible) || other.visible == visible) &&
            (identical(other.groupmode, groupmode) ||
                other.groupmode == groupmode) &&
            (identical(other.groupmodeforce, groupmodeforce) ||
                other.groupmodeforce == groupmodeforce) &&
            (identical(other.defaultgroupingid, defaultgroupingid) ||
                other.defaultgroupingid == defaultgroupingid) &&
            (identical(other.enablecompletion, enablecompletion) ||
                other.enablecompletion == enablecompletion) &&
            (identical(other.completionnotify, completionnotify) ||
                other.completionnotify == completionnotify) &&
            (identical(other.lang, lang) || other.lang == lang) &&
            (identical(other.theme, theme) || other.theme == theme) &&
            (identical(other.marker, marker) || other.marker == marker) &&
            (identical(other.legacyfiles, legacyfiles) ||
                other.legacyfiles == legacyfiles) &&
            (identical(other.calendartype, calendartype) ||
                other.calendartype == calendartype) &&
            (identical(other.timecreated, timecreated) ||
                other.timecreated == timecreated) &&
            (identical(other.timemodified, timemodified) ||
                other.timemodified == timemodified) &&
            (identical(other.requested, requested) ||
                other.requested == requested) &&
            (identical(other.cacherev, cacherev) ||
                other.cacherev == cacherev) &&
            const DeepCollectionEquality().equals(other._filters, _filters) &&
            const DeepCollectionEquality()
                .equals(other._courseformatoptions, _courseformatoptions) &&
            (identical(other.communicationroomname, communicationroomname) ||
                other.communicationroomname == communicationroomname) &&
            (identical(other.communicationroomurl, communicationroomurl) ||
                other.communicationroomurl == communicationroomurl) &&
            (identical(other.categoryname, categoryname) ||
                other.categoryname == categoryname) &&
            (identical(other.sortorder, sortorder) ||
                other.sortorder == sortorder) &&
            const DeepCollectionEquality()
                .equals(other._summaryfiles, _summaryfiles) &&
            const DeepCollectionEquality()
                .equals(other._overviewfiles, _overviewfiles) &&
            const DeepCollectionEquality().equals(other._contacts, _contacts) &&
            const DeepCollectionEquality()
                .equals(other._enrollmentmethods, _enrollmentmethods) &&
            const DeepCollectionEquality()
                .equals(other._customfields, _customfields) &&
            (identical(other.showactivitydates, showactivitydates) ||
                other.showactivitydates == showactivitydates) &&
            (identical(
                    other.showcompletionconditions, showcompletionconditions) ||
                other.showcompletionconditions == showcompletionconditions));
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
        format,
        showgrades,
        newsitems,
        startdate,
        enddate,
        maxbytes,
        showreports,
        visible,
        groupmode,
        groupmodeforce,
        defaultgroupingid,
        enablecompletion,
        completionnotify,
        lang,
        theme,
        marker,
        legacyfiles,
        calendartype,
        timecreated,
        timemodified,
        requested,
        cacherev,
        const DeepCollectionEquality().hash(_filters),
        const DeepCollectionEquality().hash(_courseformatoptions),
        communicationroomname,
        communicationroomurl,
        categoryname,
        sortorder,
        const DeepCollectionEquality().hash(_summaryfiles),
        const DeepCollectionEquality().hash(_overviewfiles),
        const DeepCollectionEquality().hash(_contacts),
        const DeepCollectionEquality().hash(_enrollmentmethods),
        const DeepCollectionEquality().hash(_customfields),
        showactivitydates,
        showcompletionconditions
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchedCourseModelImplCopyWith<_$SearchedCourseModelImpl> get copyWith =>
      __$$SearchedCourseModelImplCopyWithImpl<_$SearchedCourseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchedCourseModelImplToJson(
      this,
    );
  }
}

abstract class _SearchedCourseModel extends SearchedCourseModel {
  const factory _SearchedCourseModel(
      {required final int id,
      required final String fullname,
      final String? displayname,
      required final String shortname,
      required final String summary,
      required final int summaryformat,
      final int? categoryid,
      final String? idnumber,
      final String? format,
      final int? showgrades,
      final int? newsitems,
      final int? startdate,
      final int? enddate,
      final int? maxbytes,
      final int? showreports,
      final int? visible,
      final int? groupmode,
      final int? groupmodeforce,
      final int? defaultgroupingid,
      final int? enablecompletion,
      final int? completionnotify,
      final String? lang,
      final String? theme,
      final int? marker,
      final int? legacyfiles,
      final String? calendartype,
      final int? timecreated,
      final int? timemodified,
      final int? requested,
      final int? cacherev,
      final List<SearchedCourseFilterModel>? filters,
      final List<CourseFormatOptionModel>? courseformatoptions,
      final String? communicationroomname,
      final String? communicationroomurl,
      required final String categoryname,
      final int? sortorder,
      final List<FileModel>? summaryfiles,
      required final List<FileModel> overviewfiles,
      required final List<SearchedCourseContactModel> contacts,
      required final List<String> enrollmentmethods,
      final List<CourseCustomFieldModel>? customfields,
      final bool? showactivitydates,
      final bool? showcompletionconditions}) = _$SearchedCourseModelImpl;
  const _SearchedCourseModel._() : super._();

  factory _SearchedCourseModel.fromJson(Map<String, dynamic> json) =
      _$SearchedCourseModelImpl.fromJson;

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

  /// Id number.
  String? get idnumber;
  @override

  /// Course format: weeks, topics, social, site,..
  String? get format;
  @override

  /// 1 if grades are shown, otherwise 0.
  int? get showgrades;
  @override

  /// Number of recent items appearing on the course page.
  int? get newsitems;
  @override

  /// Timestamp when the course start.
  int? get startdate;
  @override

  /// Timestamp when the course end.
  int? get enddate;
  @override

  /// Largest size of file that can be uploaded into.
  int? get maxbytes;
  @override

  /// Are activity report shown (yes = 1, no =0).
  int? get showreports;
  @override

  /// 1: available to student, 0:not available.
  int? get visible;
  @override

  /// No group, separate, visible.
  int? get groupmode;
  @override

  /// 1: yes, 0: no.
  int? get groupmodeforce;
  @override

  /// Default grouping id.
  int? get defaultgroupingid;
  @override

  /// Completion enabled? 1: yes 0: no.
  int? get enablecompletion;
  @override

  /// 1: yes 0: no.
  int? get completionnotify;
  @override

  /// Forced course language.
  String? get lang;
  @override

  /// Name of the forced theme.
  String? get theme;
  @override

  /// Current course marker.
  int? get marker;
  @override

  /// If legacy files are enabled.
  int? get legacyfiles;
  @override

  /// Calendar type.
  String? get calendartype;
  @override

  /// Time when the course was created.
  int? get timecreated;
  @override

  /// Last time the course was updated.
  int? get timemodified;
  @override

  /// If is a requested course.
  int? get requested;
  @override

  /// Cache revision number.
  int? get cacherev;
  @override

  /// Course filters.
  List<SearchedCourseFilterModel>? get filters;
  @override

  /// Additional options for particular course format.
  List<CourseFormatOptionModel>? get courseformatoptions;
  @override

  /// @since Moodle 4.4. Communication tool room name.
  String? get communicationroomname;
  @override

  /// @since Moodle 4.4. Communication tool room URL.
  String? get communicationroomurl;
  @override

  /// Category name.
  String get categoryname;
  @override

  /// Sort order in the category.
  int? get sortorder;
  @override

  /// Summary files.
  List<FileModel>? get summaryfiles;
  @override

  /// Overview files.
  List<FileModel> get overviewfiles;
  @override

  /// Contact users.
  List<SearchedCourseContactModel> get contacts;
  @override

  /// Enrollment methods list.
  List<String> get enrollmentmethods;
  @override

  /// Custom fields and associated values.
  List<CourseCustomFieldModel>? get customfields;
  @override

  /// @since 3.11. Whether the activity dates are shown or not.
  bool? get showactivitydates;
  @override

  /// @since 3.11. Whether the activity completion conditions are shown or not.
  bool? get showcompletionconditions;
  @override
  @JsonKey(ignore: true)
  _$$SearchedCourseModelImplCopyWith<_$SearchedCourseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CourseFormatOptionModel _$CourseFormatOptionModelFromJson(
    Map<String, dynamic> json) {
  return _CourseFormatOptionModel.fromJson(json);
}

/// @nodoc
mixin _$CourseFormatOptionModel {
  /// Course format option name.
  String get name => throw _privateConstructorUsedError;

  /// Course format option value.
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseFormatOptionModelCopyWith<CourseFormatOptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseFormatOptionModelCopyWith<$Res> {
  factory $CourseFormatOptionModelCopyWith(CourseFormatOptionModel value,
          $Res Function(CourseFormatOptionModel) then) =
      _$CourseFormatOptionModelCopyWithImpl<$Res, CourseFormatOptionModel>;
  @useResult
  $Res call({String name, String value});
}

/// @nodoc
class _$CourseFormatOptionModelCopyWithImpl<$Res,
        $Val extends CourseFormatOptionModel>
    implements $CourseFormatOptionModelCopyWith<$Res> {
  _$CourseFormatOptionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseFormatOptionModelImplCopyWith<$Res>
    implements $CourseFormatOptionModelCopyWith<$Res> {
  factory _$$CourseFormatOptionModelImplCopyWith(
          _$CourseFormatOptionModelImpl value,
          $Res Function(_$CourseFormatOptionModelImpl) then) =
      __$$CourseFormatOptionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String value});
}

/// @nodoc
class __$$CourseFormatOptionModelImplCopyWithImpl<$Res>
    extends _$CourseFormatOptionModelCopyWithImpl<$Res,
        _$CourseFormatOptionModelImpl>
    implements _$$CourseFormatOptionModelImplCopyWith<$Res> {
  __$$CourseFormatOptionModelImplCopyWithImpl(
      _$CourseFormatOptionModelImpl _value,
      $Res Function(_$CourseFormatOptionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_$CourseFormatOptionModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseFormatOptionModelImpl implements _CourseFormatOptionModel {
  const _$CourseFormatOptionModelImpl(
      {required this.name, required this.value});

  factory _$CourseFormatOptionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseFormatOptionModelImplFromJson(json);

  /// Course format option name.
  @override
  final String name;

  /// Course format option value.
  @override
  final String value;

  @override
  String toString() {
    return 'CourseFormatOptionModel(name: $name, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseFormatOptionModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseFormatOptionModelImplCopyWith<_$CourseFormatOptionModelImpl>
      get copyWith => __$$CourseFormatOptionModelImplCopyWithImpl<
          _$CourseFormatOptionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseFormatOptionModelImplToJson(
      this,
    );
  }
}

abstract class _CourseFormatOptionModel implements CourseFormatOptionModel {
  const factory _CourseFormatOptionModel(
      {required final String name,
      required final String value}) = _$CourseFormatOptionModelImpl;

  factory _CourseFormatOptionModel.fromJson(Map<String, dynamic> json) =
      _$CourseFormatOptionModelImpl.fromJson;

  @override

  /// Course format option name.
  String get name;
  @override

  /// Course format option value.
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$CourseFormatOptionModelImplCopyWith<_$CourseFormatOptionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CourseCustomFieldModel _$CourseCustomFieldModelFromJson(
    Map<String, dynamic> json) {
  return _CourseCustomFieldModel.fromJson(json);
}

/// @nodoc
mixin _$CourseCustomFieldModel {
  /// The name of the custom field.
  String get name => throw _privateConstructorUsedError;

  /// The shortname of the custom field.
  String get shortname => throw _privateConstructorUsedError;

  /// The type of the custom field - text, checkbox...
  String get type => throw _privateConstructorUsedError;

  /// The raw value of the custom field.
  String get valueraw => throw _privateConstructorUsedError;

  /// The value of the custom field.
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseCustomFieldModelCopyWith<CourseCustomFieldModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseCustomFieldModelCopyWith<$Res> {
  factory $CourseCustomFieldModelCopyWith(CourseCustomFieldModel value,
          $Res Function(CourseCustomFieldModel) then) =
      _$CourseCustomFieldModelCopyWithImpl<$Res, CourseCustomFieldModel>;
  @useResult
  $Res call(
      {String name,
      String shortname,
      String type,
      String valueraw,
      String value});
}

/// @nodoc
class _$CourseCustomFieldModelCopyWithImpl<$Res,
        $Val extends CourseCustomFieldModel>
    implements $CourseCustomFieldModelCopyWith<$Res> {
  _$CourseCustomFieldModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? shortname = null,
    Object? type = null,
    Object? valueraw = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      shortname: null == shortname
          ? _value.shortname
          : shortname // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      valueraw: null == valueraw
          ? _value.valueraw
          : valueraw // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseCustomFieldModelImplCopyWith<$Res>
    implements $CourseCustomFieldModelCopyWith<$Res> {
  factory _$$CourseCustomFieldModelImplCopyWith(
          _$CourseCustomFieldModelImpl value,
          $Res Function(_$CourseCustomFieldModelImpl) then) =
      __$$CourseCustomFieldModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String shortname,
      String type,
      String valueraw,
      String value});
}

/// @nodoc
class __$$CourseCustomFieldModelImplCopyWithImpl<$Res>
    extends _$CourseCustomFieldModelCopyWithImpl<$Res,
        _$CourseCustomFieldModelImpl>
    implements _$$CourseCustomFieldModelImplCopyWith<$Res> {
  __$$CourseCustomFieldModelImplCopyWithImpl(
      _$CourseCustomFieldModelImpl _value,
      $Res Function(_$CourseCustomFieldModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? shortname = null,
    Object? type = null,
    Object? valueraw = null,
    Object? value = null,
  }) {
    return _then(_$CourseCustomFieldModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      shortname: null == shortname
          ? _value.shortname
          : shortname // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      valueraw: null == valueraw
          ? _value.valueraw
          : valueraw // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseCustomFieldModelImpl implements _CourseCustomFieldModel {
  const _$CourseCustomFieldModelImpl(
      {required this.name,
      required this.shortname,
      required this.type,
      required this.valueraw,
      required this.value});

  factory _$CourseCustomFieldModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseCustomFieldModelImplFromJson(json);

  /// The name of the custom field.
  @override
  final String name;

  /// The shortname of the custom field.
  @override
  final String shortname;

  /// The type of the custom field - text, checkbox...
  @override
  final String type;

  /// The raw value of the custom field.
  @override
  final String valueraw;

  /// The value of the custom field.
  @override
  final String value;

  @override
  String toString() {
    return 'CourseCustomFieldModel(name: $name, shortname: $shortname, type: $type, valueraw: $valueraw, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseCustomFieldModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.shortname, shortname) ||
                other.shortname == shortname) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.valueraw, valueraw) ||
                other.valueraw == valueraw) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, shortname, type, valueraw, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseCustomFieldModelImplCopyWith<_$CourseCustomFieldModelImpl>
      get copyWith => __$$CourseCustomFieldModelImplCopyWithImpl<
          _$CourseCustomFieldModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseCustomFieldModelImplToJson(
      this,
    );
  }
}

abstract class _CourseCustomFieldModel implements CourseCustomFieldModel {
  const factory _CourseCustomFieldModel(
      {required final String name,
      required final String shortname,
      required final String type,
      required final String valueraw,
      required final String value}) = _$CourseCustomFieldModelImpl;

  factory _CourseCustomFieldModel.fromJson(Map<String, dynamic> json) =
      _$CourseCustomFieldModelImpl.fromJson;

  @override

  /// The name of the custom field.
  String get name;
  @override

  /// The shortname of the custom field.
  String get shortname;
  @override

  /// The type of the custom field - text, checkbox...
  String get type;
  @override

  /// The raw value of the custom field.
  String get valueraw;
  @override

  /// The value of the custom field.
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$CourseCustomFieldModelImplCopyWith<_$CourseCustomFieldModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SearchedCourseFilterModel _$SearchedCourseFilterModelFromJson(
    Map<String, dynamic> json) {
  return _SearchedCourseFilterModel.fromJson(json);
}

/// @nodoc
mixin _$SearchedCourseFilterModel {
  /// Filter plugin name.
  String get filter => throw _privateConstructorUsedError;

  /// Filter state: 1 for on, -1 for off, 0 if inherit.
  int get localstate => throw _privateConstructorUsedError;

  /// 1 or 0 to use when localstate is set to inherit.
  int get inheritedstate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchedCourseFilterModelCopyWith<SearchedCourseFilterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchedCourseFilterModelCopyWith<$Res> {
  factory $SearchedCourseFilterModelCopyWith(SearchedCourseFilterModel value,
          $Res Function(SearchedCourseFilterModel) then) =
      _$SearchedCourseFilterModelCopyWithImpl<$Res, SearchedCourseFilterModel>;
  @useResult
  $Res call({String filter, int localstate, int inheritedstate});
}

/// @nodoc
class _$SearchedCourseFilterModelCopyWithImpl<$Res,
        $Val extends SearchedCourseFilterModel>
    implements $SearchedCourseFilterModelCopyWith<$Res> {
  _$SearchedCourseFilterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
    Object? localstate = null,
    Object? inheritedstate = null,
  }) {
    return _then(_value.copyWith(
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String,
      localstate: null == localstate
          ? _value.localstate
          : localstate // ignore: cast_nullable_to_non_nullable
              as int,
      inheritedstate: null == inheritedstate
          ? _value.inheritedstate
          : inheritedstate // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchedCourseFilterModelImplCopyWith<$Res>
    implements $SearchedCourseFilterModelCopyWith<$Res> {
  factory _$$SearchedCourseFilterModelImplCopyWith(
          _$SearchedCourseFilterModelImpl value,
          $Res Function(_$SearchedCourseFilterModelImpl) then) =
      __$$SearchedCourseFilterModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String filter, int localstate, int inheritedstate});
}

/// @nodoc
class __$$SearchedCourseFilterModelImplCopyWithImpl<$Res>
    extends _$SearchedCourseFilterModelCopyWithImpl<$Res,
        _$SearchedCourseFilterModelImpl>
    implements _$$SearchedCourseFilterModelImplCopyWith<$Res> {
  __$$SearchedCourseFilterModelImplCopyWithImpl(
      _$SearchedCourseFilterModelImpl _value,
      $Res Function(_$SearchedCourseFilterModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
    Object? localstate = null,
    Object? inheritedstate = null,
  }) {
    return _then(_$SearchedCourseFilterModelImpl(
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String,
      localstate: null == localstate
          ? _value.localstate
          : localstate // ignore: cast_nullable_to_non_nullable
              as int,
      inheritedstate: null == inheritedstate
          ? _value.inheritedstate
          : inheritedstate // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchedCourseFilterModelImpl implements _SearchedCourseFilterModel {
  const _$SearchedCourseFilterModelImpl(
      {required this.filter,
      required this.localstate,
      required this.inheritedstate});

  factory _$SearchedCourseFilterModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchedCourseFilterModelImplFromJson(json);

  /// Filter plugin name.
  @override
  final String filter;

  /// Filter state: 1 for on, -1 for off, 0 if inherit.
  @override
  final int localstate;

  /// 1 or 0 to use when localstate is set to inherit.
  @override
  final int inheritedstate;

  @override
  String toString() {
    return 'SearchedCourseFilterModel(filter: $filter, localstate: $localstate, inheritedstate: $inheritedstate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchedCourseFilterModelImpl &&
            (identical(other.filter, filter) || other.filter == filter) &&
            (identical(other.localstate, localstate) ||
                other.localstate == localstate) &&
            (identical(other.inheritedstate, inheritedstate) ||
                other.inheritedstate == inheritedstate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, filter, localstate, inheritedstate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchedCourseFilterModelImplCopyWith<_$SearchedCourseFilterModelImpl>
      get copyWith => __$$SearchedCourseFilterModelImplCopyWithImpl<
          _$SearchedCourseFilterModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchedCourseFilterModelImplToJson(
      this,
    );
  }
}

abstract class _SearchedCourseFilterModel implements SearchedCourseFilterModel {
  const factory _SearchedCourseFilterModel(
      {required final String filter,
      required final int localstate,
      required final int inheritedstate}) = _$SearchedCourseFilterModelImpl;

  factory _SearchedCourseFilterModel.fromJson(Map<String, dynamic> json) =
      _$SearchedCourseFilterModelImpl.fromJson;

  @override

  /// Filter plugin name.
  String get filter;
  @override

  /// Filter state: 1 for on, -1 for off, 0 if inherit.
  int get localstate;
  @override

  /// 1 or 0 to use when localstate is set to inherit.
  int get inheritedstate;
  @override
  @JsonKey(ignore: true)
  _$$SearchedCourseFilterModelImplCopyWith<_$SearchedCourseFilterModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SearchedCourseContactModel _$SearchedCourseContactModelFromJson(
    Map<String, dynamic> json) {
  return _SearchedCourseContactModel.fromJson(json);
}

/// @nodoc
mixin _$SearchedCourseContactModel {
  /// Contact user id.
  int get id => throw _privateConstructorUsedError;

  /// Contact user fullname.
  String get fullname => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchedCourseContactModelCopyWith<SearchedCourseContactModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchedCourseContactModelCopyWith<$Res> {
  factory $SearchedCourseContactModelCopyWith(SearchedCourseContactModel value,
          $Res Function(SearchedCourseContactModel) then) =
      _$SearchedCourseContactModelCopyWithImpl<$Res,
          SearchedCourseContactModel>;
  @useResult
  $Res call({int id, String fullname});
}

/// @nodoc
class _$SearchedCourseContactModelCopyWithImpl<$Res,
        $Val extends SearchedCourseContactModel>
    implements $SearchedCourseContactModelCopyWith<$Res> {
  _$SearchedCourseContactModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullname = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchedCourseContactModelImplCopyWith<$Res>
    implements $SearchedCourseContactModelCopyWith<$Res> {
  factory _$$SearchedCourseContactModelImplCopyWith(
          _$SearchedCourseContactModelImpl value,
          $Res Function(_$SearchedCourseContactModelImpl) then) =
      __$$SearchedCourseContactModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String fullname});
}

/// @nodoc
class __$$SearchedCourseContactModelImplCopyWithImpl<$Res>
    extends _$SearchedCourseContactModelCopyWithImpl<$Res,
        _$SearchedCourseContactModelImpl>
    implements _$$SearchedCourseContactModelImplCopyWith<$Res> {
  __$$SearchedCourseContactModelImplCopyWithImpl(
      _$SearchedCourseContactModelImpl _value,
      $Res Function(_$SearchedCourseContactModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullname = null,
  }) {
    return _then(_$SearchedCourseContactModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fullname: null == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchedCourseContactModelImpl implements _SearchedCourseContactModel {
  const _$SearchedCourseContactModelImpl(
      {required this.id, required this.fullname});

  factory _$SearchedCourseContactModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SearchedCourseContactModelImplFromJson(json);

  /// Contact user id.
  @override
  final int id;

  /// Contact user fullname.
  @override
  final String fullname;

  @override
  String toString() {
    return 'SearchedCourseContactModel(id: $id, fullname: $fullname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchedCourseContactModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullname, fullname) ||
                other.fullname == fullname));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, fullname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchedCourseContactModelImplCopyWith<_$SearchedCourseContactModelImpl>
      get copyWith => __$$SearchedCourseContactModelImplCopyWithImpl<
          _$SearchedCourseContactModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchedCourseContactModelImplToJson(
      this,
    );
  }
}

abstract class _SearchedCourseContactModel
    implements SearchedCourseContactModel {
  const factory _SearchedCourseContactModel(
      {required final int id,
      required final String fullname}) = _$SearchedCourseContactModelImpl;

  factory _SearchedCourseContactModel.fromJson(Map<String, dynamic> json) =
      _$SearchedCourseContactModelImpl.fromJson;

  @override

  /// Contact user id.
  int get id;
  @override

  /// Contact user fullname.
  String get fullname;
  @override
  @JsonKey(ignore: true)
  _$$SearchedCourseContactModelImplCopyWith<_$SearchedCourseContactModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
