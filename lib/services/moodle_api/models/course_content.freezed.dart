// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CourseContentModel _$CourseContentModelFromJson(Map<String, dynamic> json) {
  return _CourseContentModel.fromJson(json);
}

/// @nodoc
mixin _$CourseContentModel {
  /// Section ID.
  int get id => throw _privateConstructorUsedError;

  /// Section name.
  String get name => throw _privateConstructorUsedError;

  /// Is the section visible.
  int? get visible => throw _privateConstructorUsedError;

  /// Section description.
  String get summary => throw _privateConstructorUsedError;

  /// Summary format (1 = HTML, 0 = MOODLE, 2 = PLAIN or 4 = MARKDOWN).
  int get summaryformat => throw _privateConstructorUsedError;

  /// Section number inside the course.
  int? get section => throw _privateConstructorUsedError;

  /// Whether is a section hidden in the course format.
  int? get hiddenbynumsections => throw _privateConstructorUsedError;

  /// Is the section visible for the user?.
  bool? get uservisible => throw _privateConstructorUsedError;

  /// Availability information.
  String? get availabilityinfo => throw _privateConstructorUsedError;

  /// List of module.
  List<CourseContentModuleModel> get modules =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseContentModelCopyWith<CourseContentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseContentModelCopyWith<$Res> {
  factory $CourseContentModelCopyWith(
          CourseContentModel value, $Res Function(CourseContentModel) then) =
      _$CourseContentModelCopyWithImpl<$Res, CourseContentModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      int? visible,
      String summary,
      int summaryformat,
      int? section,
      int? hiddenbynumsections,
      bool? uservisible,
      String? availabilityinfo,
      List<CourseContentModuleModel> modules});
}

/// @nodoc
class _$CourseContentModelCopyWithImpl<$Res, $Val extends CourseContentModel>
    implements $CourseContentModelCopyWith<$Res> {
  _$CourseContentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? visible = freezed,
    Object? summary = null,
    Object? summaryformat = null,
    Object? section = freezed,
    Object? hiddenbynumsections = freezed,
    Object? uservisible = freezed,
    Object? availabilityinfo = freezed,
    Object? modules = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      visible: freezed == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as int?,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      summaryformat: null == summaryformat
          ? _value.summaryformat
          : summaryformat // ignore: cast_nullable_to_non_nullable
              as int,
      section: freezed == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as int?,
      hiddenbynumsections: freezed == hiddenbynumsections
          ? _value.hiddenbynumsections
          : hiddenbynumsections // ignore: cast_nullable_to_non_nullable
              as int?,
      uservisible: freezed == uservisible
          ? _value.uservisible
          : uservisible // ignore: cast_nullable_to_non_nullable
              as bool?,
      availabilityinfo: freezed == availabilityinfo
          ? _value.availabilityinfo
          : availabilityinfo // ignore: cast_nullable_to_non_nullable
              as String?,
      modules: null == modules
          ? _value.modules
          : modules // ignore: cast_nullable_to_non_nullable
              as List<CourseContentModuleModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseContentModelImplCopyWith<$Res>
    implements $CourseContentModelCopyWith<$Res> {
  factory _$$CourseContentModelImplCopyWith(_$CourseContentModelImpl value,
          $Res Function(_$CourseContentModelImpl) then) =
      __$$CourseContentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      int? visible,
      String summary,
      int summaryformat,
      int? section,
      int? hiddenbynumsections,
      bool? uservisible,
      String? availabilityinfo,
      List<CourseContentModuleModel> modules});
}

/// @nodoc
class __$$CourseContentModelImplCopyWithImpl<$Res>
    extends _$CourseContentModelCopyWithImpl<$Res, _$CourseContentModelImpl>
    implements _$$CourseContentModelImplCopyWith<$Res> {
  __$$CourseContentModelImplCopyWithImpl(_$CourseContentModelImpl _value,
      $Res Function(_$CourseContentModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? visible = freezed,
    Object? summary = null,
    Object? summaryformat = null,
    Object? section = freezed,
    Object? hiddenbynumsections = freezed,
    Object? uservisible = freezed,
    Object? availabilityinfo = freezed,
    Object? modules = null,
  }) {
    return _then(_$CourseContentModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      visible: freezed == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as int?,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      summaryformat: null == summaryformat
          ? _value.summaryformat
          : summaryformat // ignore: cast_nullable_to_non_nullable
              as int,
      section: freezed == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as int?,
      hiddenbynumsections: freezed == hiddenbynumsections
          ? _value.hiddenbynumsections
          : hiddenbynumsections // ignore: cast_nullable_to_non_nullable
              as int?,
      uservisible: freezed == uservisible
          ? _value.uservisible
          : uservisible // ignore: cast_nullable_to_non_nullable
              as bool?,
      availabilityinfo: freezed == availabilityinfo
          ? _value.availabilityinfo
          : availabilityinfo // ignore: cast_nullable_to_non_nullable
              as String?,
      modules: null == modules
          ? _value._modules
          : modules // ignore: cast_nullable_to_non_nullable
              as List<CourseContentModuleModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseContentModelImpl implements _CourseContentModel {
  const _$CourseContentModelImpl(
      {required this.id,
      required this.name,
      this.visible,
      required this.summary,
      required this.summaryformat,
      this.section,
      this.hiddenbynumsections,
      this.uservisible,
      this.availabilityinfo,
      required final List<CourseContentModuleModel> modules})
      : _modules = modules;

  factory _$CourseContentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseContentModelImplFromJson(json);

  /// Section ID.
  @override
  final int id;

  /// Section name.
  @override
  final String name;

  /// Is the section visible.
  @override
  final int? visible;

  /// Section description.
  @override
  final String summary;

  /// Summary format (1 = HTML, 0 = MOODLE, 2 = PLAIN or 4 = MARKDOWN).
  @override
  final int summaryformat;

  /// Section number inside the course.
  @override
  final int? section;

  /// Whether is a section hidden in the course format.
  @override
  final int? hiddenbynumsections;

  /// Is the section visible for the user?.
  @override
  final bool? uservisible;

  /// Availability information.
  @override
  final String? availabilityinfo;

  /// List of module.
  final List<CourseContentModuleModel> _modules;

  /// List of module.
  @override
  List<CourseContentModuleModel> get modules {
    if (_modules is EqualUnmodifiableListView) return _modules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_modules);
  }

  @override
  String toString() {
    return 'CourseContentModel(id: $id, name: $name, visible: $visible, summary: $summary, summaryformat: $summaryformat, section: $section, hiddenbynumsections: $hiddenbynumsections, uservisible: $uservisible, availabilityinfo: $availabilityinfo, modules: $modules)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseContentModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.visible, visible) || other.visible == visible) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.summaryformat, summaryformat) ||
                other.summaryformat == summaryformat) &&
            (identical(other.section, section) || other.section == section) &&
            (identical(other.hiddenbynumsections, hiddenbynumsections) ||
                other.hiddenbynumsections == hiddenbynumsections) &&
            (identical(other.uservisible, uservisible) ||
                other.uservisible == uservisible) &&
            (identical(other.availabilityinfo, availabilityinfo) ||
                other.availabilityinfo == availabilityinfo) &&
            const DeepCollectionEquality().equals(other._modules, _modules));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      visible,
      summary,
      summaryformat,
      section,
      hiddenbynumsections,
      uservisible,
      availabilityinfo,
      const DeepCollectionEquality().hash(_modules));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseContentModelImplCopyWith<_$CourseContentModelImpl> get copyWith =>
      __$$CourseContentModelImplCopyWithImpl<_$CourseContentModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseContentModelImplToJson(
      this,
    );
  }
}

abstract class _CourseContentModel implements CourseContentModel {
  const factory _CourseContentModel(
          {required final int id,
          required final String name,
          final int? visible,
          required final String summary,
          required final int summaryformat,
          final int? section,
          final int? hiddenbynumsections,
          final bool? uservisible,
          final String? availabilityinfo,
          required final List<CourseContentModuleModel> modules}) =
      _$CourseContentModelImpl;

  factory _CourseContentModel.fromJson(Map<String, dynamic> json) =
      _$CourseContentModelImpl.fromJson;

  @override

  /// Section ID.
  int get id;
  @override

  /// Section name.
  String get name;
  @override

  /// Is the section visible.
  int? get visible;
  @override

  /// Section description.
  String get summary;
  @override

  /// Summary format (1 = HTML, 0 = MOODLE, 2 = PLAIN or 4 = MARKDOWN).
  int get summaryformat;
  @override

  /// Section number inside the course.
  int? get section;
  @override

  /// Whether is a section hidden in the course format.
  int? get hiddenbynumsections;
  @override

  /// Is the section visible for the user?.
  bool? get uservisible;
  @override

  /// Availability information.
  String? get availabilityinfo;
  @override

  /// List of module.
  List<CourseContentModuleModel> get modules;
  @override
  @JsonKey(ignore: true)
  _$$CourseContentModelImplCopyWith<_$CourseContentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CourseContentModuleModel _$CourseContentModuleModelFromJson(
    Map<String, dynamic> json) {
  return _CourseContentModuleModel.fromJson(json);
}

/// @nodoc
mixin _$CourseContentModuleModel {
  /// Activity id.
  int get id => throw _privateConstructorUsedError;

  /// Activity url.
  String? get url => throw _privateConstructorUsedError;

  /// Activity module name.
  String get name => throw _privateConstructorUsedError;

  /// Instance id. Cannot be undefined.
  int get instance => throw _privateConstructorUsedError;

  /// @since 3.10. Activity context id.
  int? get contextid => throw _privateConstructorUsedError;

  /// Activity description.
  String? get description => throw _privateConstructorUsedError;

  /// Is the module visible. Cannot be undefined.
  int get visible => throw _privateConstructorUsedError;

  /// Is the module visible for the user?. Cannot be undefined.
  bool get uservisible => throw _privateConstructorUsedError;

  /// Availability information.
  String? get availabilityinfo => throw _privateConstructorUsedError;

  /// Is the module visible on course page. Cannot be undefined.
  int get visibleoncoursepage => throw _privateConstructorUsedError;

  /// Activity icon url.
  String get modicon => throw _privateConstructorUsedError;

  /// Activity module type.
  String get modname => throw _privateConstructorUsedError;

  /// @since 4.4 The module purpose.
  String? get purpose => throw _privateConstructorUsedError;

  /// @since 4.4 Whether the module is branded or not.
  bool? get branded => throw _privateConstructorUsedError;

  /// Activity module plural name.
  String get modplural => throw _privateConstructorUsedError;

  /// Module availability settings.
  String? get availability => throw _privateConstructorUsedError;

  /// Number of indentation in the site.
  int get indent => throw _privateConstructorUsedError;

  /// Onclick action.
  String? get onclick => throw _privateConstructorUsedError;

  /// After link info to be displayed.
  String? get afterlink => throw _privateConstructorUsedError;

  /// Custom data (JSON encoded).
  String? get customdata => throw _privateConstructorUsedError;

  /// Whether the module has no view page.
  bool? get noviewlink => throw _privateConstructorUsedError;

  /// Type of completion tracking: 0 means none, 1 manual, 2 automatic.
  CourseContentModuleCompletionTracking? get completion =>
      throw _privateConstructorUsedError;

  /// Module completion data.
  CourseContentModuleCompletionModel? get completiondata =>
      throw _privateConstructorUsedError;

  /// Module contents.
  List<CourseContentModuleFileModel>? get contents =>
      throw _privateConstructorUsedError;

  /// @since 4.3. Group mode value.
  int? get groupmode => throw _privateConstructorUsedError;

  /// @since 4.0 The download content value.
  int? get downloadcontent => throw _privateConstructorUsedError;

  /// @since 3.11. Activity dates.
  List<CourseContentModuleDateModel>? get dates =>
      throw _privateConstructorUsedError;

  /// @since v3.7.6 Contents summary information.
  CourseContentModuleContentsInfoModel? get contentsinfo =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseContentModuleModelCopyWith<CourseContentModuleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseContentModuleModelCopyWith<$Res> {
  factory $CourseContentModuleModelCopyWith(CourseContentModuleModel value,
          $Res Function(CourseContentModuleModel) then) =
      _$CourseContentModuleModelCopyWithImpl<$Res, CourseContentModuleModel>;
  @useResult
  $Res call(
      {int id,
      String? url,
      String name,
      int instance,
      int? contextid,
      String? description,
      int visible,
      bool uservisible,
      String? availabilityinfo,
      int visibleoncoursepage,
      String modicon,
      String modname,
      String? purpose,
      bool? branded,
      String modplural,
      String? availability,
      int indent,
      String? onclick,
      String? afterlink,
      String? customdata,
      bool? noviewlink,
      CourseContentModuleCompletionTracking? completion,
      CourseContentModuleCompletionModel? completiondata,
      List<CourseContentModuleFileModel>? contents,
      int? groupmode,
      int? downloadcontent,
      List<CourseContentModuleDateModel>? dates,
      CourseContentModuleContentsInfoModel? contentsinfo});

  $CourseContentModuleCompletionModelCopyWith<$Res>? get completiondata;
  $CourseContentModuleContentsInfoModelCopyWith<$Res>? get contentsinfo;
}

/// @nodoc
class _$CourseContentModuleModelCopyWithImpl<$Res,
        $Val extends CourseContentModuleModel>
    implements $CourseContentModuleModelCopyWith<$Res> {
  _$CourseContentModuleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = freezed,
    Object? name = null,
    Object? instance = null,
    Object? contextid = freezed,
    Object? description = freezed,
    Object? visible = null,
    Object? uservisible = null,
    Object? availabilityinfo = freezed,
    Object? visibleoncoursepage = null,
    Object? modicon = null,
    Object? modname = null,
    Object? purpose = freezed,
    Object? branded = freezed,
    Object? modplural = null,
    Object? availability = freezed,
    Object? indent = null,
    Object? onclick = freezed,
    Object? afterlink = freezed,
    Object? customdata = freezed,
    Object? noviewlink = freezed,
    Object? completion = freezed,
    Object? completiondata = freezed,
    Object? contents = freezed,
    Object? groupmode = freezed,
    Object? downloadcontent = freezed,
    Object? dates = freezed,
    Object? contentsinfo = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      instance: null == instance
          ? _value.instance
          : instance // ignore: cast_nullable_to_non_nullable
              as int,
      contextid: freezed == contextid
          ? _value.contextid
          : contextid // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      visible: null == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as int,
      uservisible: null == uservisible
          ? _value.uservisible
          : uservisible // ignore: cast_nullable_to_non_nullable
              as bool,
      availabilityinfo: freezed == availabilityinfo
          ? _value.availabilityinfo
          : availabilityinfo // ignore: cast_nullable_to_non_nullable
              as String?,
      visibleoncoursepage: null == visibleoncoursepage
          ? _value.visibleoncoursepage
          : visibleoncoursepage // ignore: cast_nullable_to_non_nullable
              as int,
      modicon: null == modicon
          ? _value.modicon
          : modicon // ignore: cast_nullable_to_non_nullable
              as String,
      modname: null == modname
          ? _value.modname
          : modname // ignore: cast_nullable_to_non_nullable
              as String,
      purpose: freezed == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String?,
      branded: freezed == branded
          ? _value.branded
          : branded // ignore: cast_nullable_to_non_nullable
              as bool?,
      modplural: null == modplural
          ? _value.modplural
          : modplural // ignore: cast_nullable_to_non_nullable
              as String,
      availability: freezed == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as String?,
      indent: null == indent
          ? _value.indent
          : indent // ignore: cast_nullable_to_non_nullable
              as int,
      onclick: freezed == onclick
          ? _value.onclick
          : onclick // ignore: cast_nullable_to_non_nullable
              as String?,
      afterlink: freezed == afterlink
          ? _value.afterlink
          : afterlink // ignore: cast_nullable_to_non_nullable
              as String?,
      customdata: freezed == customdata
          ? _value.customdata
          : customdata // ignore: cast_nullable_to_non_nullable
              as String?,
      noviewlink: freezed == noviewlink
          ? _value.noviewlink
          : noviewlink // ignore: cast_nullable_to_non_nullable
              as bool?,
      completion: freezed == completion
          ? _value.completion
          : completion // ignore: cast_nullable_to_non_nullable
              as CourseContentModuleCompletionTracking?,
      completiondata: freezed == completiondata
          ? _value.completiondata
          : completiondata // ignore: cast_nullable_to_non_nullable
              as CourseContentModuleCompletionModel?,
      contents: freezed == contents
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as List<CourseContentModuleFileModel>?,
      groupmode: freezed == groupmode
          ? _value.groupmode
          : groupmode // ignore: cast_nullable_to_non_nullable
              as int?,
      downloadcontent: freezed == downloadcontent
          ? _value.downloadcontent
          : downloadcontent // ignore: cast_nullable_to_non_nullable
              as int?,
      dates: freezed == dates
          ? _value.dates
          : dates // ignore: cast_nullable_to_non_nullable
              as List<CourseContentModuleDateModel>?,
      contentsinfo: freezed == contentsinfo
          ? _value.contentsinfo
          : contentsinfo // ignore: cast_nullable_to_non_nullable
              as CourseContentModuleContentsInfoModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CourseContentModuleCompletionModelCopyWith<$Res>? get completiondata {
    if (_value.completiondata == null) {
      return null;
    }

    return $CourseContentModuleCompletionModelCopyWith<$Res>(
        _value.completiondata!, (value) {
      return _then(_value.copyWith(completiondata: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CourseContentModuleContentsInfoModelCopyWith<$Res>? get contentsinfo {
    if (_value.contentsinfo == null) {
      return null;
    }

    return $CourseContentModuleContentsInfoModelCopyWith<$Res>(
        _value.contentsinfo!, (value) {
      return _then(_value.copyWith(contentsinfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CourseContentModuleModelImplCopyWith<$Res>
    implements $CourseContentModuleModelCopyWith<$Res> {
  factory _$$CourseContentModuleModelImplCopyWith(
          _$CourseContentModuleModelImpl value,
          $Res Function(_$CourseContentModuleModelImpl) then) =
      __$$CourseContentModuleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? url,
      String name,
      int instance,
      int? contextid,
      String? description,
      int visible,
      bool uservisible,
      String? availabilityinfo,
      int visibleoncoursepage,
      String modicon,
      String modname,
      String? purpose,
      bool? branded,
      String modplural,
      String? availability,
      int indent,
      String? onclick,
      String? afterlink,
      String? customdata,
      bool? noviewlink,
      CourseContentModuleCompletionTracking? completion,
      CourseContentModuleCompletionModel? completiondata,
      List<CourseContentModuleFileModel>? contents,
      int? groupmode,
      int? downloadcontent,
      List<CourseContentModuleDateModel>? dates,
      CourseContentModuleContentsInfoModel? contentsinfo});

  @override
  $CourseContentModuleCompletionModelCopyWith<$Res>? get completiondata;
  @override
  $CourseContentModuleContentsInfoModelCopyWith<$Res>? get contentsinfo;
}

/// @nodoc
class __$$CourseContentModuleModelImplCopyWithImpl<$Res>
    extends _$CourseContentModuleModelCopyWithImpl<$Res,
        _$CourseContentModuleModelImpl>
    implements _$$CourseContentModuleModelImplCopyWith<$Res> {
  __$$CourseContentModuleModelImplCopyWithImpl(
      _$CourseContentModuleModelImpl _value,
      $Res Function(_$CourseContentModuleModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = freezed,
    Object? name = null,
    Object? instance = null,
    Object? contextid = freezed,
    Object? description = freezed,
    Object? visible = null,
    Object? uservisible = null,
    Object? availabilityinfo = freezed,
    Object? visibleoncoursepage = null,
    Object? modicon = null,
    Object? modname = null,
    Object? purpose = freezed,
    Object? branded = freezed,
    Object? modplural = null,
    Object? availability = freezed,
    Object? indent = null,
    Object? onclick = freezed,
    Object? afterlink = freezed,
    Object? customdata = freezed,
    Object? noviewlink = freezed,
    Object? completion = freezed,
    Object? completiondata = freezed,
    Object? contents = freezed,
    Object? groupmode = freezed,
    Object? downloadcontent = freezed,
    Object? dates = freezed,
    Object? contentsinfo = freezed,
  }) {
    return _then(_$CourseContentModuleModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      instance: null == instance
          ? _value.instance
          : instance // ignore: cast_nullable_to_non_nullable
              as int,
      contextid: freezed == contextid
          ? _value.contextid
          : contextid // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      visible: null == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as int,
      uservisible: null == uservisible
          ? _value.uservisible
          : uservisible // ignore: cast_nullable_to_non_nullable
              as bool,
      availabilityinfo: freezed == availabilityinfo
          ? _value.availabilityinfo
          : availabilityinfo // ignore: cast_nullable_to_non_nullable
              as String?,
      visibleoncoursepage: null == visibleoncoursepage
          ? _value.visibleoncoursepage
          : visibleoncoursepage // ignore: cast_nullable_to_non_nullable
              as int,
      modicon: null == modicon
          ? _value.modicon
          : modicon // ignore: cast_nullable_to_non_nullable
              as String,
      modname: null == modname
          ? _value.modname
          : modname // ignore: cast_nullable_to_non_nullable
              as String,
      purpose: freezed == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String?,
      branded: freezed == branded
          ? _value.branded
          : branded // ignore: cast_nullable_to_non_nullable
              as bool?,
      modplural: null == modplural
          ? _value.modplural
          : modplural // ignore: cast_nullable_to_non_nullable
              as String,
      availability: freezed == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as String?,
      indent: null == indent
          ? _value.indent
          : indent // ignore: cast_nullable_to_non_nullable
              as int,
      onclick: freezed == onclick
          ? _value.onclick
          : onclick // ignore: cast_nullable_to_non_nullable
              as String?,
      afterlink: freezed == afterlink
          ? _value.afterlink
          : afterlink // ignore: cast_nullable_to_non_nullable
              as String?,
      customdata: freezed == customdata
          ? _value.customdata
          : customdata // ignore: cast_nullable_to_non_nullable
              as String?,
      noviewlink: freezed == noviewlink
          ? _value.noviewlink
          : noviewlink // ignore: cast_nullable_to_non_nullable
              as bool?,
      completion: freezed == completion
          ? _value.completion
          : completion // ignore: cast_nullable_to_non_nullable
              as CourseContentModuleCompletionTracking?,
      completiondata: freezed == completiondata
          ? _value.completiondata
          : completiondata // ignore: cast_nullable_to_non_nullable
              as CourseContentModuleCompletionModel?,
      contents: freezed == contents
          ? _value._contents
          : contents // ignore: cast_nullable_to_non_nullable
              as List<CourseContentModuleFileModel>?,
      groupmode: freezed == groupmode
          ? _value.groupmode
          : groupmode // ignore: cast_nullable_to_non_nullable
              as int?,
      downloadcontent: freezed == downloadcontent
          ? _value.downloadcontent
          : downloadcontent // ignore: cast_nullable_to_non_nullable
              as int?,
      dates: freezed == dates
          ? _value._dates
          : dates // ignore: cast_nullable_to_non_nullable
              as List<CourseContentModuleDateModel>?,
      contentsinfo: freezed == contentsinfo
          ? _value.contentsinfo
          : contentsinfo // ignore: cast_nullable_to_non_nullable
              as CourseContentModuleContentsInfoModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseContentModuleModelImpl implements _CourseContentModuleModel {
  const _$CourseContentModuleModelImpl(
      {required this.id,
      this.url,
      required this.name,
      required this.instance,
      this.contextid,
      this.description,
      required this.visible,
      required this.uservisible,
      this.availabilityinfo,
      required this.visibleoncoursepage,
      required this.modicon,
      required this.modname,
      this.purpose,
      this.branded,
      required this.modplural,
      this.availability,
      required this.indent,
      this.onclick,
      this.afterlink,
      this.customdata,
      this.noviewlink,
      this.completion,
      this.completiondata,
      final List<CourseContentModuleFileModel>? contents,
      this.groupmode,
      this.downloadcontent,
      final List<CourseContentModuleDateModel>? dates,
      this.contentsinfo})
      : _contents = contents,
        _dates = dates;

  factory _$CourseContentModuleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseContentModuleModelImplFromJson(json);

  /// Activity id.
  @override
  final int id;

  /// Activity url.
  @override
  final String? url;

  /// Activity module name.
  @override
  final String name;

  /// Instance id. Cannot be undefined.
  @override
  final int instance;

  /// @since 3.10. Activity context id.
  @override
  final int? contextid;

  /// Activity description.
  @override
  final String? description;

  /// Is the module visible. Cannot be undefined.
  @override
  final int visible;

  /// Is the module visible for the user?. Cannot be undefined.
  @override
  final bool uservisible;

  /// Availability information.
  @override
  final String? availabilityinfo;

  /// Is the module visible on course page. Cannot be undefined.
  @override
  final int visibleoncoursepage;

  /// Activity icon url.
  @override
  final String modicon;

  /// Activity module type.
  @override
  final String modname;

  /// @since 4.4 The module purpose.
  @override
  final String? purpose;

  /// @since 4.4 Whether the module is branded or not.
  @override
  final bool? branded;

  /// Activity module plural name.
  @override
  final String modplural;

  /// Module availability settings.
  @override
  final String? availability;

  /// Number of indentation in the site.
  @override
  final int indent;

  /// Onclick action.
  @override
  final String? onclick;

  /// After link info to be displayed.
  @override
  final String? afterlink;

  /// Custom data (JSON encoded).
  @override
  final String? customdata;

  /// Whether the module has no view page.
  @override
  final bool? noviewlink;

  /// Type of completion tracking: 0 means none, 1 manual, 2 automatic.
  @override
  final CourseContentModuleCompletionTracking? completion;

  /// Module completion data.
  @override
  final CourseContentModuleCompletionModel? completiondata;

  /// Module contents.
  final List<CourseContentModuleFileModel>? _contents;

  /// Module contents.
  @override
  List<CourseContentModuleFileModel>? get contents {
    final value = _contents;
    if (value == null) return null;
    if (_contents is EqualUnmodifiableListView) return _contents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// @since 4.3. Group mode value.
  @override
  final int? groupmode;

  /// @since 4.0 The download content value.
  @override
  final int? downloadcontent;

  /// @since 3.11. Activity dates.
  final List<CourseContentModuleDateModel>? _dates;

  /// @since 3.11. Activity dates.
  @override
  List<CourseContentModuleDateModel>? get dates {
    final value = _dates;
    if (value == null) return null;
    if (_dates is EqualUnmodifiableListView) return _dates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// @since v3.7.6 Contents summary information.
  @override
  final CourseContentModuleContentsInfoModel? contentsinfo;

  @override
  String toString() {
    return 'CourseContentModuleModel(id: $id, url: $url, name: $name, instance: $instance, contextid: $contextid, description: $description, visible: $visible, uservisible: $uservisible, availabilityinfo: $availabilityinfo, visibleoncoursepage: $visibleoncoursepage, modicon: $modicon, modname: $modname, purpose: $purpose, branded: $branded, modplural: $modplural, availability: $availability, indent: $indent, onclick: $onclick, afterlink: $afterlink, customdata: $customdata, noviewlink: $noviewlink, completion: $completion, completiondata: $completiondata, contents: $contents, groupmode: $groupmode, downloadcontent: $downloadcontent, dates: $dates, contentsinfo: $contentsinfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseContentModuleModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.instance, instance) ||
                other.instance == instance) &&
            (identical(other.contextid, contextid) ||
                other.contextid == contextid) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.visible, visible) || other.visible == visible) &&
            (identical(other.uservisible, uservisible) ||
                other.uservisible == uservisible) &&
            (identical(other.availabilityinfo, availabilityinfo) ||
                other.availabilityinfo == availabilityinfo) &&
            (identical(other.visibleoncoursepage, visibleoncoursepage) ||
                other.visibleoncoursepage == visibleoncoursepage) &&
            (identical(other.modicon, modicon) || other.modicon == modicon) &&
            (identical(other.modname, modname) || other.modname == modname) &&
            (identical(other.purpose, purpose) || other.purpose == purpose) &&
            (identical(other.branded, branded) || other.branded == branded) &&
            (identical(other.modplural, modplural) ||
                other.modplural == modplural) &&
            (identical(other.availability, availability) ||
                other.availability == availability) &&
            (identical(other.indent, indent) || other.indent == indent) &&
            (identical(other.onclick, onclick) || other.onclick == onclick) &&
            (identical(other.afterlink, afterlink) ||
                other.afterlink == afterlink) &&
            (identical(other.customdata, customdata) ||
                other.customdata == customdata) &&
            (identical(other.noviewlink, noviewlink) ||
                other.noviewlink == noviewlink) &&
            (identical(other.completion, completion) ||
                other.completion == completion) &&
            (identical(other.completiondata, completiondata) ||
                other.completiondata == completiondata) &&
            const DeepCollectionEquality().equals(other._contents, _contents) &&
            (identical(other.groupmode, groupmode) ||
                other.groupmode == groupmode) &&
            (identical(other.downloadcontent, downloadcontent) ||
                other.downloadcontent == downloadcontent) &&
            const DeepCollectionEquality().equals(other._dates, _dates) &&
            (identical(other.contentsinfo, contentsinfo) ||
                other.contentsinfo == contentsinfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        url,
        name,
        instance,
        contextid,
        description,
        visible,
        uservisible,
        availabilityinfo,
        visibleoncoursepage,
        modicon,
        modname,
        purpose,
        branded,
        modplural,
        availability,
        indent,
        onclick,
        afterlink,
        customdata,
        noviewlink,
        completion,
        completiondata,
        const DeepCollectionEquality().hash(_contents),
        groupmode,
        downloadcontent,
        const DeepCollectionEquality().hash(_dates),
        contentsinfo
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseContentModuleModelImplCopyWith<_$CourseContentModuleModelImpl>
      get copyWith => __$$CourseContentModuleModelImplCopyWithImpl<
          _$CourseContentModuleModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseContentModuleModelImplToJson(
      this,
    );
  }
}

abstract class _CourseContentModuleModel implements CourseContentModuleModel {
  const factory _CourseContentModuleModel(
          {required final int id,
          final String? url,
          required final String name,
          required final int instance,
          final int? contextid,
          final String? description,
          required final int visible,
          required final bool uservisible,
          final String? availabilityinfo,
          required final int visibleoncoursepage,
          required final String modicon,
          required final String modname,
          final String? purpose,
          final bool? branded,
          required final String modplural,
          final String? availability,
          required final int indent,
          final String? onclick,
          final String? afterlink,
          final String? customdata,
          final bool? noviewlink,
          final CourseContentModuleCompletionTracking? completion,
          final CourseContentModuleCompletionModel? completiondata,
          final List<CourseContentModuleFileModel>? contents,
          final int? groupmode,
          final int? downloadcontent,
          final List<CourseContentModuleDateModel>? dates,
          final CourseContentModuleContentsInfoModel? contentsinfo}) =
      _$CourseContentModuleModelImpl;

  factory _CourseContentModuleModel.fromJson(Map<String, dynamic> json) =
      _$CourseContentModuleModelImpl.fromJson;

  @override

  /// Activity id.
  int get id;
  @override

  /// Activity url.
  String? get url;
  @override

  /// Activity module name.
  String get name;
  @override

  /// Instance id. Cannot be undefined.
  int get instance;
  @override

  /// @since 3.10. Activity context id.
  int? get contextid;
  @override

  /// Activity description.
  String? get description;
  @override

  /// Is the module visible. Cannot be undefined.
  int get visible;
  @override

  /// Is the module visible for the user?. Cannot be undefined.
  bool get uservisible;
  @override

  /// Availability information.
  String? get availabilityinfo;
  @override

  /// Is the module visible on course page. Cannot be undefined.
  int get visibleoncoursepage;
  @override

  /// Activity icon url.
  String get modicon;
  @override

  /// Activity module type.
  String get modname;
  @override

  /// @since 4.4 The module purpose.
  String? get purpose;
  @override

  /// @since 4.4 Whether the module is branded or not.
  bool? get branded;
  @override

  /// Activity module plural name.
  String get modplural;
  @override

  /// Module availability settings.
  String? get availability;
  @override

  /// Number of indentation in the site.
  int get indent;
  @override

  /// Onclick action.
  String? get onclick;
  @override

  /// After link info to be displayed.
  String? get afterlink;
  @override

  /// Custom data (JSON encoded).
  String? get customdata;
  @override

  /// Whether the module has no view page.
  bool? get noviewlink;
  @override

  /// Type of completion tracking: 0 means none, 1 manual, 2 automatic.
  CourseContentModuleCompletionTracking? get completion;
  @override

  /// Module completion data.
  CourseContentModuleCompletionModel? get completiondata;
  @override

  /// Module contents.
  List<CourseContentModuleFileModel>? get contents;
  @override

  /// @since 4.3. Group mode value.
  int? get groupmode;
  @override

  /// @since 4.0 The download content value.
  int? get downloadcontent;
  @override

  /// @since 3.11. Activity dates.
  List<CourseContentModuleDateModel>? get dates;
  @override

  /// @since v3.7.6 Contents summary information.
  CourseContentModuleContentsInfoModel? get contentsinfo;
  @override
  @JsonKey(ignore: true)
  _$$CourseContentModuleModelImplCopyWith<_$CourseContentModuleModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CourseContentModuleDateModel _$CourseContentModuleDateModelFromJson(
    Map<String, dynamic> json) {
  return _CourseContentModuleDateModel.fromJson(json);
}

/// @nodoc
mixin _$CourseContentModuleDateModel {
  String get label => throw _privateConstructorUsedError;
  int get timestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseContentModuleDateModelCopyWith<CourseContentModuleDateModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseContentModuleDateModelCopyWith<$Res> {
  factory $CourseContentModuleDateModelCopyWith(
          CourseContentModuleDateModel value,
          $Res Function(CourseContentModuleDateModel) then) =
      _$CourseContentModuleDateModelCopyWithImpl<$Res,
          CourseContentModuleDateModel>;
  @useResult
  $Res call({String label, int timestamp});
}

/// @nodoc
class _$CourseContentModuleDateModelCopyWithImpl<$Res,
        $Val extends CourseContentModuleDateModel>
    implements $CourseContentModuleDateModelCopyWith<$Res> {
  _$CourseContentModuleDateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? timestamp = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseContentModuleDateModelImplCopyWith<$Res>
    implements $CourseContentModuleDateModelCopyWith<$Res> {
  factory _$$CourseContentModuleDateModelImplCopyWith(
          _$CourseContentModuleDateModelImpl value,
          $Res Function(_$CourseContentModuleDateModelImpl) then) =
      __$$CourseContentModuleDateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, int timestamp});
}

/// @nodoc
class __$$CourseContentModuleDateModelImplCopyWithImpl<$Res>
    extends _$CourseContentModuleDateModelCopyWithImpl<$Res,
        _$CourseContentModuleDateModelImpl>
    implements _$$CourseContentModuleDateModelImplCopyWith<$Res> {
  __$$CourseContentModuleDateModelImplCopyWithImpl(
      _$CourseContentModuleDateModelImpl _value,
      $Res Function(_$CourseContentModuleDateModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? timestamp = null,
  }) {
    return _then(_$CourseContentModuleDateModelImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseContentModuleDateModelImpl
    implements _CourseContentModuleDateModel {
  const _$CourseContentModuleDateModelImpl(
      {required this.label, required this.timestamp});

  factory _$CourseContentModuleDateModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CourseContentModuleDateModelImplFromJson(json);

  @override
  final String label;
  @override
  final int timestamp;

  @override
  String toString() {
    return 'CourseContentModuleDateModel(label: $label, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseContentModuleDateModelImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, label, timestamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseContentModuleDateModelImplCopyWith<
          _$CourseContentModuleDateModelImpl>
      get copyWith => __$$CourseContentModuleDateModelImplCopyWithImpl<
          _$CourseContentModuleDateModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseContentModuleDateModelImplToJson(
      this,
    );
  }
}

abstract class _CourseContentModuleDateModel
    implements CourseContentModuleDateModel {
  const factory _CourseContentModuleDateModel(
      {required final String label,
      required final int timestamp}) = _$CourseContentModuleDateModelImpl;

  factory _CourseContentModuleDateModel.fromJson(Map<String, dynamic> json) =
      _$CourseContentModuleDateModelImpl.fromJson;

  @override
  String get label;
  @override
  int get timestamp;
  @override
  @JsonKey(ignore: true)
  _$$CourseContentModuleDateModelImplCopyWith<
          _$CourseContentModuleDateModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CourseContentModuleContentsInfoModel
    _$CourseContentModuleContentsInfoModelFromJson(Map<String, dynamic> json) {
  return _CourseContentModuleContentsInfoModel.fromJson(json);
}

/// @nodoc
mixin _$CourseContentModuleContentsInfoModel {
  int get filescount => throw _privateConstructorUsedError;
  int get filessize => throw _privateConstructorUsedError;
  int get lastmodified => throw _privateConstructorUsedError;
  List<String> get mimetypes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseContentModuleContentsInfoModelCopyWith<
          CourseContentModuleContentsInfoModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseContentModuleContentsInfoModelCopyWith<$Res> {
  factory $CourseContentModuleContentsInfoModelCopyWith(
          CourseContentModuleContentsInfoModel value,
          $Res Function(CourseContentModuleContentsInfoModel) then) =
      _$CourseContentModuleContentsInfoModelCopyWithImpl<$Res,
          CourseContentModuleContentsInfoModel>;
  @useResult
  $Res call(
      {int filescount,
      int filessize,
      int lastmodified,
      List<String> mimetypes});
}

/// @nodoc
class _$CourseContentModuleContentsInfoModelCopyWithImpl<$Res,
        $Val extends CourseContentModuleContentsInfoModel>
    implements $CourseContentModuleContentsInfoModelCopyWith<$Res> {
  _$CourseContentModuleContentsInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filescount = null,
    Object? filessize = null,
    Object? lastmodified = null,
    Object? mimetypes = null,
  }) {
    return _then(_value.copyWith(
      filescount: null == filescount
          ? _value.filescount
          : filescount // ignore: cast_nullable_to_non_nullable
              as int,
      filessize: null == filessize
          ? _value.filessize
          : filessize // ignore: cast_nullable_to_non_nullable
              as int,
      lastmodified: null == lastmodified
          ? _value.lastmodified
          : lastmodified // ignore: cast_nullable_to_non_nullable
              as int,
      mimetypes: null == mimetypes
          ? _value.mimetypes
          : mimetypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseContentModuleContentsInfoModelImplCopyWith<$Res>
    implements $CourseContentModuleContentsInfoModelCopyWith<$Res> {
  factory _$$CourseContentModuleContentsInfoModelImplCopyWith(
          _$CourseContentModuleContentsInfoModelImpl value,
          $Res Function(_$CourseContentModuleContentsInfoModelImpl) then) =
      __$$CourseContentModuleContentsInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int filescount,
      int filessize,
      int lastmodified,
      List<String> mimetypes});
}

/// @nodoc
class __$$CourseContentModuleContentsInfoModelImplCopyWithImpl<$Res>
    extends _$CourseContentModuleContentsInfoModelCopyWithImpl<$Res,
        _$CourseContentModuleContentsInfoModelImpl>
    implements _$$CourseContentModuleContentsInfoModelImplCopyWith<$Res> {
  __$$CourseContentModuleContentsInfoModelImplCopyWithImpl(
      _$CourseContentModuleContentsInfoModelImpl _value,
      $Res Function(_$CourseContentModuleContentsInfoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filescount = null,
    Object? filessize = null,
    Object? lastmodified = null,
    Object? mimetypes = null,
  }) {
    return _then(_$CourseContentModuleContentsInfoModelImpl(
      filescount: null == filescount
          ? _value.filescount
          : filescount // ignore: cast_nullable_to_non_nullable
              as int,
      filessize: null == filessize
          ? _value.filessize
          : filessize // ignore: cast_nullable_to_non_nullable
              as int,
      lastmodified: null == lastmodified
          ? _value.lastmodified
          : lastmodified // ignore: cast_nullable_to_non_nullable
              as int,
      mimetypes: null == mimetypes
          ? _value._mimetypes
          : mimetypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseContentModuleContentsInfoModelImpl
    implements _CourseContentModuleContentsInfoModel {
  const _$CourseContentModuleContentsInfoModelImpl(
      {required this.filescount,
      required this.filessize,
      required this.lastmodified,
      required final List<String> mimetypes})
      : _mimetypes = mimetypes;

  factory _$CourseContentModuleContentsInfoModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CourseContentModuleContentsInfoModelImplFromJson(json);

  @override
  final int filescount;
  @override
  final int filessize;
  @override
  final int lastmodified;
  final List<String> _mimetypes;
  @override
  List<String> get mimetypes {
    if (_mimetypes is EqualUnmodifiableListView) return _mimetypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mimetypes);
  }

  @override
  String toString() {
    return 'CourseContentModuleContentsInfoModel(filescount: $filescount, filessize: $filessize, lastmodified: $lastmodified, mimetypes: $mimetypes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseContentModuleContentsInfoModelImpl &&
            (identical(other.filescount, filescount) ||
                other.filescount == filescount) &&
            (identical(other.filessize, filessize) ||
                other.filessize == filessize) &&
            (identical(other.lastmodified, lastmodified) ||
                other.lastmodified == lastmodified) &&
            const DeepCollectionEquality()
                .equals(other._mimetypes, _mimetypes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, filescount, filessize,
      lastmodified, const DeepCollectionEquality().hash(_mimetypes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseContentModuleContentsInfoModelImplCopyWith<
          _$CourseContentModuleContentsInfoModelImpl>
      get copyWith => __$$CourseContentModuleContentsInfoModelImplCopyWithImpl<
          _$CourseContentModuleContentsInfoModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseContentModuleContentsInfoModelImplToJson(
      this,
    );
  }
}

abstract class _CourseContentModuleContentsInfoModel
    implements CourseContentModuleContentsInfoModel {
  const factory _CourseContentModuleContentsInfoModel(
          {required final int filescount,
          required final int filessize,
          required final int lastmodified,
          required final List<String> mimetypes}) =
      _$CourseContentModuleContentsInfoModelImpl;

  factory _CourseContentModuleContentsInfoModel.fromJson(
          Map<String, dynamic> json) =
      _$CourseContentModuleContentsInfoModelImpl.fromJson;

  @override
  int get filescount;
  @override
  int get filessize;
  @override
  int get lastmodified;
  @override
  List<String> get mimetypes;
  @override
  @JsonKey(ignore: true)
  _$$CourseContentModuleContentsInfoModelImplCopyWith<
          _$CourseContentModuleContentsInfoModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CourseContentModuleCompletionModel _$CourseContentModuleCompletionModelFromJson(
    Map<String, dynamic> json) {
  return _CourseContentModuleCompletionModel.fromJson(json);
}

/// @nodoc
mixin _$CourseContentModuleCompletionModel {
  /// Completion state value.
  CourseContentModuleCompletionStatus get state =>
      throw _privateConstructorUsedError;

  /// Timestamp for completion status.
  int get timecompleted => throw _privateConstructorUsedError;

  /// The user id who has overridden the status.
  int? get overrideby => throw _privateConstructorUsedError;

  /// Whether the completion status affects the availability of another activity.
  bool? get valueused => throw _privateConstructorUsedError;

  /// @since 3.11. Whether this activity module has completion enabled.
  bool? get hascompletion => throw _privateConstructorUsedError;

  /// @since 3.11. Whether this activity module instance tracks completion automatically.
  bool? get isautomatic => throw _privateConstructorUsedError;

  /// @since 3.11. Whether completion is being tracked for this user.
  bool? get istrackeduser => throw _privateConstructorUsedError;

  /// @since 3.11. Whether this activity is visible to the user.
  bool? get uservisible => throw _privateConstructorUsedError;

  /// @since 3.11. An array of completion details.
  List<CourseContentModuleCompletionRuleModel>? get details =>
      throw _privateConstructorUsedError;

  /// @since 4.4. Whether the overall completion state of this course module should be marked as complete or not.
  bool? get isoverallcomplete => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseContentModuleCompletionModelCopyWith<
          CourseContentModuleCompletionModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseContentModuleCompletionModelCopyWith<$Res> {
  factory $CourseContentModuleCompletionModelCopyWith(
          CourseContentModuleCompletionModel value,
          $Res Function(CourseContentModuleCompletionModel) then) =
      _$CourseContentModuleCompletionModelCopyWithImpl<$Res,
          CourseContentModuleCompletionModel>;
  @useResult
  $Res call(
      {CourseContentModuleCompletionStatus state,
      int timecompleted,
      int? overrideby,
      bool? valueused,
      bool? hascompletion,
      bool? isautomatic,
      bool? istrackeduser,
      bool? uservisible,
      List<CourseContentModuleCompletionRuleModel>? details,
      bool? isoverallcomplete});
}

/// @nodoc
class _$CourseContentModuleCompletionModelCopyWithImpl<$Res,
        $Val extends CourseContentModuleCompletionModel>
    implements $CourseContentModuleCompletionModelCopyWith<$Res> {
  _$CourseContentModuleCompletionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? timecompleted = null,
    Object? overrideby = freezed,
    Object? valueused = freezed,
    Object? hascompletion = freezed,
    Object? isautomatic = freezed,
    Object? istrackeduser = freezed,
    Object? uservisible = freezed,
    Object? details = freezed,
    Object? isoverallcomplete = freezed,
  }) {
    return _then(_value.copyWith(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as CourseContentModuleCompletionStatus,
      timecompleted: null == timecompleted
          ? _value.timecompleted
          : timecompleted // ignore: cast_nullable_to_non_nullable
              as int,
      overrideby: freezed == overrideby
          ? _value.overrideby
          : overrideby // ignore: cast_nullable_to_non_nullable
              as int?,
      valueused: freezed == valueused
          ? _value.valueused
          : valueused // ignore: cast_nullable_to_non_nullable
              as bool?,
      hascompletion: freezed == hascompletion
          ? _value.hascompletion
          : hascompletion // ignore: cast_nullable_to_non_nullable
              as bool?,
      isautomatic: freezed == isautomatic
          ? _value.isautomatic
          : isautomatic // ignore: cast_nullable_to_non_nullable
              as bool?,
      istrackeduser: freezed == istrackeduser
          ? _value.istrackeduser
          : istrackeduser // ignore: cast_nullable_to_non_nullable
              as bool?,
      uservisible: freezed == uservisible
          ? _value.uservisible
          : uservisible // ignore: cast_nullable_to_non_nullable
              as bool?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as List<CourseContentModuleCompletionRuleModel>?,
      isoverallcomplete: freezed == isoverallcomplete
          ? _value.isoverallcomplete
          : isoverallcomplete // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseContentModuleCompletionModelImplCopyWith<$Res>
    implements $CourseContentModuleCompletionModelCopyWith<$Res> {
  factory _$$CourseContentModuleCompletionModelImplCopyWith(
          _$CourseContentModuleCompletionModelImpl value,
          $Res Function(_$CourseContentModuleCompletionModelImpl) then) =
      __$$CourseContentModuleCompletionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CourseContentModuleCompletionStatus state,
      int timecompleted,
      int? overrideby,
      bool? valueused,
      bool? hascompletion,
      bool? isautomatic,
      bool? istrackeduser,
      bool? uservisible,
      List<CourseContentModuleCompletionRuleModel>? details,
      bool? isoverallcomplete});
}

/// @nodoc
class __$$CourseContentModuleCompletionModelImplCopyWithImpl<$Res>
    extends _$CourseContentModuleCompletionModelCopyWithImpl<$Res,
        _$CourseContentModuleCompletionModelImpl>
    implements _$$CourseContentModuleCompletionModelImplCopyWith<$Res> {
  __$$CourseContentModuleCompletionModelImplCopyWithImpl(
      _$CourseContentModuleCompletionModelImpl _value,
      $Res Function(_$CourseContentModuleCompletionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? timecompleted = null,
    Object? overrideby = freezed,
    Object? valueused = freezed,
    Object? hascompletion = freezed,
    Object? isautomatic = freezed,
    Object? istrackeduser = freezed,
    Object? uservisible = freezed,
    Object? details = freezed,
    Object? isoverallcomplete = freezed,
  }) {
    return _then(_$CourseContentModuleCompletionModelImpl(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as CourseContentModuleCompletionStatus,
      timecompleted: null == timecompleted
          ? _value.timecompleted
          : timecompleted // ignore: cast_nullable_to_non_nullable
              as int,
      overrideby: freezed == overrideby
          ? _value.overrideby
          : overrideby // ignore: cast_nullable_to_non_nullable
              as int?,
      valueused: freezed == valueused
          ? _value.valueused
          : valueused // ignore: cast_nullable_to_non_nullable
              as bool?,
      hascompletion: freezed == hascompletion
          ? _value.hascompletion
          : hascompletion // ignore: cast_nullable_to_non_nullable
              as bool?,
      isautomatic: freezed == isautomatic
          ? _value.isautomatic
          : isautomatic // ignore: cast_nullable_to_non_nullable
              as bool?,
      istrackeduser: freezed == istrackeduser
          ? _value.istrackeduser
          : istrackeduser // ignore: cast_nullable_to_non_nullable
              as bool?,
      uservisible: freezed == uservisible
          ? _value.uservisible
          : uservisible // ignore: cast_nullable_to_non_nullable
              as bool?,
      details: freezed == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<CourseContentModuleCompletionRuleModel>?,
      isoverallcomplete: freezed == isoverallcomplete
          ? _value.isoverallcomplete
          : isoverallcomplete // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseContentModuleCompletionModelImpl
    implements _CourseContentModuleCompletionModel {
  const _$CourseContentModuleCompletionModelImpl(
      {required this.state,
      required this.timecompleted,
      this.overrideby,
      this.valueused,
      this.hascompletion,
      this.isautomatic,
      this.istrackeduser,
      this.uservisible,
      final List<CourseContentModuleCompletionRuleModel>? details,
      this.isoverallcomplete})
      : _details = details;

  factory _$CourseContentModuleCompletionModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CourseContentModuleCompletionModelImplFromJson(json);

  /// Completion state value.
  @override
  final CourseContentModuleCompletionStatus state;

  /// Timestamp for completion status.
  @override
  final int timecompleted;

  /// The user id who has overridden the status.
  @override
  final int? overrideby;

  /// Whether the completion status affects the availability of another activity.
  @override
  final bool? valueused;

  /// @since 3.11. Whether this activity module has completion enabled.
  @override
  final bool? hascompletion;

  /// @since 3.11. Whether this activity module instance tracks completion automatically.
  @override
  final bool? isautomatic;

  /// @since 3.11. Whether completion is being tracked for this user.
  @override
  final bool? istrackeduser;

  /// @since 3.11. Whether this activity is visible to the user.
  @override
  final bool? uservisible;

  /// @since 3.11. An array of completion details.
  final List<CourseContentModuleCompletionRuleModel>? _details;

  /// @since 3.11. An array of completion details.
  @override
  List<CourseContentModuleCompletionRuleModel>? get details {
    final value = _details;
    if (value == null) return null;
    if (_details is EqualUnmodifiableListView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// @since 4.4. Whether the overall completion state of this course module should be marked as complete or not.
  @override
  final bool? isoverallcomplete;

  @override
  String toString() {
    return 'CourseContentModuleCompletionModel(state: $state, timecompleted: $timecompleted, overrideby: $overrideby, valueused: $valueused, hascompletion: $hascompletion, isautomatic: $isautomatic, istrackeduser: $istrackeduser, uservisible: $uservisible, details: $details, isoverallcomplete: $isoverallcomplete)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseContentModuleCompletionModelImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.timecompleted, timecompleted) ||
                other.timecompleted == timecompleted) &&
            (identical(other.overrideby, overrideby) ||
                other.overrideby == overrideby) &&
            (identical(other.valueused, valueused) ||
                other.valueused == valueused) &&
            (identical(other.hascompletion, hascompletion) ||
                other.hascompletion == hascompletion) &&
            (identical(other.isautomatic, isautomatic) ||
                other.isautomatic == isautomatic) &&
            (identical(other.istrackeduser, istrackeduser) ||
                other.istrackeduser == istrackeduser) &&
            (identical(other.uservisible, uservisible) ||
                other.uservisible == uservisible) &&
            const DeepCollectionEquality().equals(other._details, _details) &&
            (identical(other.isoverallcomplete, isoverallcomplete) ||
                other.isoverallcomplete == isoverallcomplete));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      state,
      timecompleted,
      overrideby,
      valueused,
      hascompletion,
      isautomatic,
      istrackeduser,
      uservisible,
      const DeepCollectionEquality().hash(_details),
      isoverallcomplete);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseContentModuleCompletionModelImplCopyWith<
          _$CourseContentModuleCompletionModelImpl>
      get copyWith => __$$CourseContentModuleCompletionModelImplCopyWithImpl<
          _$CourseContentModuleCompletionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseContentModuleCompletionModelImplToJson(
      this,
    );
  }
}

abstract class _CourseContentModuleCompletionModel
    implements CourseContentModuleCompletionModel {
  const factory _CourseContentModuleCompletionModel(
          {required final CourseContentModuleCompletionStatus state,
          required final int timecompleted,
          final int? overrideby,
          final bool? valueused,
          final bool? hascompletion,
          final bool? isautomatic,
          final bool? istrackeduser,
          final bool? uservisible,
          final List<CourseContentModuleCompletionRuleModel>? details,
          final bool? isoverallcomplete}) =
      _$CourseContentModuleCompletionModelImpl;

  factory _CourseContentModuleCompletionModel.fromJson(
          Map<String, dynamic> json) =
      _$CourseContentModuleCompletionModelImpl.fromJson;

  @override

  /// Completion state value.
  CourseContentModuleCompletionStatus get state;
  @override

  /// Timestamp for completion status.
  int get timecompleted;
  @override

  /// The user id who has overridden the status.
  int? get overrideby;
  @override

  /// Whether the completion status affects the availability of another activity.
  bool? get valueused;
  @override

  /// @since 3.11. Whether this activity module has completion enabled.
  bool? get hascompletion;
  @override

  /// @since 3.11. Whether this activity module instance tracks completion automatically.
  bool? get isautomatic;
  @override

  /// @since 3.11. Whether completion is being tracked for this user.
  bool? get istrackeduser;
  @override

  /// @since 3.11. Whether this activity is visible to the user.
  bool? get uservisible;
  @override

  /// @since 3.11. An array of completion details.
  List<CourseContentModuleCompletionRuleModel>? get details;
  @override

  /// @since 4.4. Whether the overall completion state of this course module should be marked as complete or not.
  bool? get isoverallcomplete;
  @override
  @JsonKey(ignore: true)
  _$$CourseContentModuleCompletionModelImplCopyWith<
          _$CourseContentModuleCompletionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CourseContentModuleCompletionRuleModel
    _$CourseContentModuleCompletionRuleModelFromJson(
        Map<String, dynamic> json) {
  return _CourseContentModuleCompletionRuleModel.fromJson(json);
}

/// @nodoc
mixin _$CourseContentModuleCompletionRuleModel {
  /// Rule name.
  String get rulename => throw _privateConstructorUsedError;

  /// Rule value.
  CourseContentModuleCompletionRuleValueModel get rulevalue =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseContentModuleCompletionRuleModelCopyWith<
          CourseContentModuleCompletionRuleModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseContentModuleCompletionRuleModelCopyWith<$Res> {
  factory $CourseContentModuleCompletionRuleModelCopyWith(
          CourseContentModuleCompletionRuleModel value,
          $Res Function(CourseContentModuleCompletionRuleModel) then) =
      _$CourseContentModuleCompletionRuleModelCopyWithImpl<$Res,
          CourseContentModuleCompletionRuleModel>;
  @useResult
  $Res call(
      {String rulename, CourseContentModuleCompletionRuleValueModel rulevalue});

  $CourseContentModuleCompletionRuleValueModelCopyWith<$Res> get rulevalue;
}

/// @nodoc
class _$CourseContentModuleCompletionRuleModelCopyWithImpl<$Res,
        $Val extends CourseContentModuleCompletionRuleModel>
    implements $CourseContentModuleCompletionRuleModelCopyWith<$Res> {
  _$CourseContentModuleCompletionRuleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rulename = null,
    Object? rulevalue = null,
  }) {
    return _then(_value.copyWith(
      rulename: null == rulename
          ? _value.rulename
          : rulename // ignore: cast_nullable_to_non_nullable
              as String,
      rulevalue: null == rulevalue
          ? _value.rulevalue
          : rulevalue // ignore: cast_nullable_to_non_nullable
              as CourseContentModuleCompletionRuleValueModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CourseContentModuleCompletionRuleValueModelCopyWith<$Res> get rulevalue {
    return $CourseContentModuleCompletionRuleValueModelCopyWith<$Res>(
        _value.rulevalue, (value) {
      return _then(_value.copyWith(rulevalue: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CourseContentModuleCompletionRuleModelImplCopyWith<$Res>
    implements $CourseContentModuleCompletionRuleModelCopyWith<$Res> {
  factory _$$CourseContentModuleCompletionRuleModelImplCopyWith(
          _$CourseContentModuleCompletionRuleModelImpl value,
          $Res Function(_$CourseContentModuleCompletionRuleModelImpl) then) =
      __$$CourseContentModuleCompletionRuleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String rulename, CourseContentModuleCompletionRuleValueModel rulevalue});

  @override
  $CourseContentModuleCompletionRuleValueModelCopyWith<$Res> get rulevalue;
}

/// @nodoc
class __$$CourseContentModuleCompletionRuleModelImplCopyWithImpl<$Res>
    extends _$CourseContentModuleCompletionRuleModelCopyWithImpl<$Res,
        _$CourseContentModuleCompletionRuleModelImpl>
    implements _$$CourseContentModuleCompletionRuleModelImplCopyWith<$Res> {
  __$$CourseContentModuleCompletionRuleModelImplCopyWithImpl(
      _$CourseContentModuleCompletionRuleModelImpl _value,
      $Res Function(_$CourseContentModuleCompletionRuleModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rulename = null,
    Object? rulevalue = null,
  }) {
    return _then(_$CourseContentModuleCompletionRuleModelImpl(
      rulename: null == rulename
          ? _value.rulename
          : rulename // ignore: cast_nullable_to_non_nullable
              as String,
      rulevalue: null == rulevalue
          ? _value.rulevalue
          : rulevalue // ignore: cast_nullable_to_non_nullable
              as CourseContentModuleCompletionRuleValueModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseContentModuleCompletionRuleModelImpl
    implements _CourseContentModuleCompletionRuleModel {
  const _$CourseContentModuleCompletionRuleModelImpl(
      {required this.rulename, required this.rulevalue});

  factory _$CourseContentModuleCompletionRuleModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CourseContentModuleCompletionRuleModelImplFromJson(json);

  /// Rule name.
  @override
  final String rulename;

  /// Rule value.
  @override
  final CourseContentModuleCompletionRuleValueModel rulevalue;

  @override
  String toString() {
    return 'CourseContentModuleCompletionRuleModel(rulename: $rulename, rulevalue: $rulevalue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseContentModuleCompletionRuleModelImpl &&
            (identical(other.rulename, rulename) ||
                other.rulename == rulename) &&
            (identical(other.rulevalue, rulevalue) ||
                other.rulevalue == rulevalue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, rulename, rulevalue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseContentModuleCompletionRuleModelImplCopyWith<
          _$CourseContentModuleCompletionRuleModelImpl>
      get copyWith =>
          __$$CourseContentModuleCompletionRuleModelImplCopyWithImpl<
              _$CourseContentModuleCompletionRuleModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseContentModuleCompletionRuleModelImplToJson(
      this,
    );
  }
}

abstract class _CourseContentModuleCompletionRuleModel
    implements CourseContentModuleCompletionRuleModel {
  const factory _CourseContentModuleCompletionRuleModel(
      {required final String rulename,
      required final CourseContentModuleCompletionRuleValueModel
          rulevalue}) = _$CourseContentModuleCompletionRuleModelImpl;

  factory _CourseContentModuleCompletionRuleModel.fromJson(
          Map<String, dynamic> json) =
      _$CourseContentModuleCompletionRuleModelImpl.fromJson;

  @override

  /// Rule name.
  String get rulename;
  @override

  /// Rule value.
  CourseContentModuleCompletionRuleValueModel get rulevalue;
  @override
  @JsonKey(ignore: true)
  _$$CourseContentModuleCompletionRuleModelImplCopyWith<
          _$CourseContentModuleCompletionRuleModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CourseContentModuleCompletionRuleValueModel
    _$CourseContentModuleCompletionRuleValueModelFromJson(
        Map<String, dynamic> json) {
  return _CourseContentModuleCompletionRuleValueModel.fromJson(json);
}

/// @nodoc
mixin _$CourseContentModuleCompletionRuleValueModel {
  /// Completion status.
  int get status => throw _privateConstructorUsedError;

  /// Completion description.
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseContentModuleCompletionRuleValueModelCopyWith<
          CourseContentModuleCompletionRuleValueModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseContentModuleCompletionRuleValueModelCopyWith<$Res> {
  factory $CourseContentModuleCompletionRuleValueModelCopyWith(
          CourseContentModuleCompletionRuleValueModel value,
          $Res Function(CourseContentModuleCompletionRuleValueModel) then) =
      _$CourseContentModuleCompletionRuleValueModelCopyWithImpl<$Res,
          CourseContentModuleCompletionRuleValueModel>;
  @useResult
  $Res call({int status, String description});
}

/// @nodoc
class _$CourseContentModuleCompletionRuleValueModelCopyWithImpl<$Res,
        $Val extends CourseContentModuleCompletionRuleValueModel>
    implements $CourseContentModuleCompletionRuleValueModelCopyWith<$Res> {
  _$CourseContentModuleCompletionRuleValueModelCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseContentModuleCompletionRuleValueModelImplCopyWith<$Res>
    implements $CourseContentModuleCompletionRuleValueModelCopyWith<$Res> {
  factory _$$CourseContentModuleCompletionRuleValueModelImplCopyWith(
          _$CourseContentModuleCompletionRuleValueModelImpl value,
          $Res Function(_$CourseContentModuleCompletionRuleValueModelImpl)
              then) =
      __$$CourseContentModuleCompletionRuleValueModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, String description});
}

/// @nodoc
class __$$CourseContentModuleCompletionRuleValueModelImplCopyWithImpl<$Res>
    extends _$CourseContentModuleCompletionRuleValueModelCopyWithImpl<$Res,
        _$CourseContentModuleCompletionRuleValueModelImpl>
    implements
        _$$CourseContentModuleCompletionRuleValueModelImplCopyWith<$Res> {
  __$$CourseContentModuleCompletionRuleValueModelImplCopyWithImpl(
      _$CourseContentModuleCompletionRuleValueModelImpl _value,
      $Res Function(_$CourseContentModuleCompletionRuleValueModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? description = null,
  }) {
    return _then(_$CourseContentModuleCompletionRuleValueModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseContentModuleCompletionRuleValueModelImpl
    implements _CourseContentModuleCompletionRuleValueModel {
  const _$CourseContentModuleCompletionRuleValueModelImpl(
      {required this.status, required this.description});

  factory _$CourseContentModuleCompletionRuleValueModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CourseContentModuleCompletionRuleValueModelImplFromJson(json);

  /// Completion status.
  @override
  final int status;

  /// Completion description.
  @override
  final String description;

  @override
  String toString() {
    return 'CourseContentModuleCompletionRuleValueModel(status: $status, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseContentModuleCompletionRuleValueModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseContentModuleCompletionRuleValueModelImplCopyWith<
          _$CourseContentModuleCompletionRuleValueModelImpl>
      get copyWith =>
          __$$CourseContentModuleCompletionRuleValueModelImplCopyWithImpl<
                  _$CourseContentModuleCompletionRuleValueModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseContentModuleCompletionRuleValueModelImplToJson(
      this,
    );
  }
}

abstract class _CourseContentModuleCompletionRuleValueModel
    implements CourseContentModuleCompletionRuleValueModel {
  const factory _CourseContentModuleCompletionRuleValueModel(
          {required final int status, required final String description}) =
      _$CourseContentModuleCompletionRuleValueModelImpl;

  factory _CourseContentModuleCompletionRuleValueModel.fromJson(
          Map<String, dynamic> json) =
      _$CourseContentModuleCompletionRuleValueModelImpl.fromJson;

  @override

  /// Completion status.
  int get status;
  @override

  /// Completion description.
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$CourseContentModuleCompletionRuleValueModelImplCopyWith<
          _$CourseContentModuleCompletionRuleValueModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CourseContentModuleFileModel _$CourseContentModuleFileModelFromJson(
    Map<String, dynamic> json) {
  return _CourseContentModuleFileModel.fromJson(json);
}

/// @nodoc
mixin _$CourseContentModuleFileModel {
  /// Filename.
  String get filename => throw _privateConstructorUsedError;

  /// Filepath.
  String? get filepath => throw _privateConstructorUsedError;

  /// Filesize.
  int get filesize => throw _privateConstructorUsedError;

  /// Downloadable file url.
  String get fileurl => throw _privateConstructorUsedError;

  /// Time modified.
  int get timemodified => throw _privateConstructorUsedError;

  /// File mime type.
  String? get mimetype => throw _privateConstructorUsedError;

  /// Whether is an external file.
  bool? get isexternalfile => throw _privateConstructorUsedError;

  /// The repository type for external files.
  String? get repositorytype => throw _privateConstructorUsedError;

  /// A file or a folder or external link.
  String get type => throw _privateConstructorUsedError;

  /// Raw content, will be used when type is content.
  String? get content => throw _privateConstructorUsedError;

  /// Time created.
  int? get timecreated => throw _privateConstructorUsedError;

  /// Content sort order.
  int? get sortorder => throw _privateConstructorUsedError;

  /// User who added this content to moodle.
  int? get userid => throw _privateConstructorUsedError;

  /// Content owner.
  String? get author => throw _privateConstructorUsedError;

  /// Content license.
  String? get license => throw _privateConstructorUsedError;

  /// Tags.
  List<TagModel>? get tags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseContentModuleFileModelCopyWith<CourseContentModuleFileModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseContentModuleFileModelCopyWith<$Res> {
  factory $CourseContentModuleFileModelCopyWith(
          CourseContentModuleFileModel value,
          $Res Function(CourseContentModuleFileModel) then) =
      _$CourseContentModuleFileModelCopyWithImpl<$Res,
          CourseContentModuleFileModel>;
  @useResult
  $Res call(
      {String filename,
      String? filepath,
      int filesize,
      String fileurl,
      int timemodified,
      String? mimetype,
      bool? isexternalfile,
      String? repositorytype,
      String type,
      String? content,
      int? timecreated,
      int? sortorder,
      int? userid,
      String? author,
      String? license,
      List<TagModel>? tags});
}

/// @nodoc
class _$CourseContentModuleFileModelCopyWithImpl<$Res,
        $Val extends CourseContentModuleFileModel>
    implements $CourseContentModuleFileModelCopyWith<$Res> {
  _$CourseContentModuleFileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filename = null,
    Object? filepath = freezed,
    Object? filesize = null,
    Object? fileurl = null,
    Object? timemodified = null,
    Object? mimetype = freezed,
    Object? isexternalfile = freezed,
    Object? repositorytype = freezed,
    Object? type = null,
    Object? content = freezed,
    Object? timecreated = freezed,
    Object? sortorder = freezed,
    Object? userid = freezed,
    Object? author = freezed,
    Object? license = freezed,
    Object? tags = freezed,
  }) {
    return _then(_value.copyWith(
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
      filepath: freezed == filepath
          ? _value.filepath
          : filepath // ignore: cast_nullable_to_non_nullable
              as String?,
      filesize: null == filesize
          ? _value.filesize
          : filesize // ignore: cast_nullable_to_non_nullable
              as int,
      fileurl: null == fileurl
          ? _value.fileurl
          : fileurl // ignore: cast_nullable_to_non_nullable
              as String,
      timemodified: null == timemodified
          ? _value.timemodified
          : timemodified // ignore: cast_nullable_to_non_nullable
              as int,
      mimetype: freezed == mimetype
          ? _value.mimetype
          : mimetype // ignore: cast_nullable_to_non_nullable
              as String?,
      isexternalfile: freezed == isexternalfile
          ? _value.isexternalfile
          : isexternalfile // ignore: cast_nullable_to_non_nullable
              as bool?,
      repositorytype: freezed == repositorytype
          ? _value.repositorytype
          : repositorytype // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      timecreated: freezed == timecreated
          ? _value.timecreated
          : timecreated // ignore: cast_nullable_to_non_nullable
              as int?,
      sortorder: freezed == sortorder
          ? _value.sortorder
          : sortorder // ignore: cast_nullable_to_non_nullable
              as int?,
      userid: freezed == userid
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as int?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      license: freezed == license
          ? _value.license
          : license // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TagModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseContentModuleFileModelImplCopyWith<$Res>
    implements $CourseContentModuleFileModelCopyWith<$Res> {
  factory _$$CourseContentModuleFileModelImplCopyWith(
          _$CourseContentModuleFileModelImpl value,
          $Res Function(_$CourseContentModuleFileModelImpl) then) =
      __$$CourseContentModuleFileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String filename,
      String? filepath,
      int filesize,
      String fileurl,
      int timemodified,
      String? mimetype,
      bool? isexternalfile,
      String? repositorytype,
      String type,
      String? content,
      int? timecreated,
      int? sortorder,
      int? userid,
      String? author,
      String? license,
      List<TagModel>? tags});
}

/// @nodoc
class __$$CourseContentModuleFileModelImplCopyWithImpl<$Res>
    extends _$CourseContentModuleFileModelCopyWithImpl<$Res,
        _$CourseContentModuleFileModelImpl>
    implements _$$CourseContentModuleFileModelImplCopyWith<$Res> {
  __$$CourseContentModuleFileModelImplCopyWithImpl(
      _$CourseContentModuleFileModelImpl _value,
      $Res Function(_$CourseContentModuleFileModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filename = null,
    Object? filepath = freezed,
    Object? filesize = null,
    Object? fileurl = null,
    Object? timemodified = null,
    Object? mimetype = freezed,
    Object? isexternalfile = freezed,
    Object? repositorytype = freezed,
    Object? type = null,
    Object? content = freezed,
    Object? timecreated = freezed,
    Object? sortorder = freezed,
    Object? userid = freezed,
    Object? author = freezed,
    Object? license = freezed,
    Object? tags = freezed,
  }) {
    return _then(_$CourseContentModuleFileModelImpl(
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
      filepath: freezed == filepath
          ? _value.filepath
          : filepath // ignore: cast_nullable_to_non_nullable
              as String?,
      filesize: null == filesize
          ? _value.filesize
          : filesize // ignore: cast_nullable_to_non_nullable
              as int,
      fileurl: null == fileurl
          ? _value.fileurl
          : fileurl // ignore: cast_nullable_to_non_nullable
              as String,
      timemodified: null == timemodified
          ? _value.timemodified
          : timemodified // ignore: cast_nullable_to_non_nullable
              as int,
      mimetype: freezed == mimetype
          ? _value.mimetype
          : mimetype // ignore: cast_nullable_to_non_nullable
              as String?,
      isexternalfile: freezed == isexternalfile
          ? _value.isexternalfile
          : isexternalfile // ignore: cast_nullable_to_non_nullable
              as bool?,
      repositorytype: freezed == repositorytype
          ? _value.repositorytype
          : repositorytype // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      timecreated: freezed == timecreated
          ? _value.timecreated
          : timecreated // ignore: cast_nullable_to_non_nullable
              as int?,
      sortorder: freezed == sortorder
          ? _value.sortorder
          : sortorder // ignore: cast_nullable_to_non_nullable
              as int?,
      userid: freezed == userid
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as int?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      license: freezed == license
          ? _value.license
          : license // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TagModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseContentModuleFileModelImpl
    implements _CourseContentModuleFileModel {
  const _$CourseContentModuleFileModelImpl(
      {required this.filename,
      this.filepath,
      required this.filesize,
      required this.fileurl,
      required this.timemodified,
      this.mimetype,
      this.isexternalfile,
      this.repositorytype,
      required this.type,
      this.content,
      this.timecreated,
      this.sortorder,
      this.userid,
      this.author,
      this.license,
      final List<TagModel>? tags})
      : _tags = tags;

  factory _$CourseContentModuleFileModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CourseContentModuleFileModelImplFromJson(json);

  /// Filename.
  @override
  final String filename;

  /// Filepath.
  @override
  final String? filepath;

  /// Filesize.
  @override
  final int filesize;

  /// Downloadable file url.
  @override
  final String fileurl;

  /// Time modified.
  @override
  final int timemodified;

  /// File mime type.
  @override
  final String? mimetype;

  /// Whether is an external file.
  @override
  final bool? isexternalfile;

  /// The repository type for external files.
  @override
  final String? repositorytype;

  /// A file or a folder or external link.
  @override
  final String type;

  /// Raw content, will be used when type is content.
  @override
  final String? content;

  /// Time created.
  @override
  final int? timecreated;

  /// Content sort order.
  @override
  final int? sortorder;

  /// User who added this content to moodle.
  @override
  final int? userid;

  /// Content owner.
  @override
  final String? author;

  /// Content license.
  @override
  final String? license;

  /// Tags.
  final List<TagModel>? _tags;

  /// Tags.
  @override
  List<TagModel>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CourseContentModuleFileModel(filename: $filename, filepath: $filepath, filesize: $filesize, fileurl: $fileurl, timemodified: $timemodified, mimetype: $mimetype, isexternalfile: $isexternalfile, repositorytype: $repositorytype, type: $type, content: $content, timecreated: $timecreated, sortorder: $sortorder, userid: $userid, author: $author, license: $license, tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseContentModuleFileModelImpl &&
            (identical(other.filename, filename) ||
                other.filename == filename) &&
            (identical(other.filepath, filepath) ||
                other.filepath == filepath) &&
            (identical(other.filesize, filesize) ||
                other.filesize == filesize) &&
            (identical(other.fileurl, fileurl) || other.fileurl == fileurl) &&
            (identical(other.timemodified, timemodified) ||
                other.timemodified == timemodified) &&
            (identical(other.mimetype, mimetype) ||
                other.mimetype == mimetype) &&
            (identical(other.isexternalfile, isexternalfile) ||
                other.isexternalfile == isexternalfile) &&
            (identical(other.repositorytype, repositorytype) ||
                other.repositorytype == repositorytype) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.timecreated, timecreated) ||
                other.timecreated == timecreated) &&
            (identical(other.sortorder, sortorder) ||
                other.sortorder == sortorder) &&
            (identical(other.userid, userid) || other.userid == userid) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.license, license) || other.license == license) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      filename,
      filepath,
      filesize,
      fileurl,
      timemodified,
      mimetype,
      isexternalfile,
      repositorytype,
      type,
      content,
      timecreated,
      sortorder,
      userid,
      author,
      license,
      const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseContentModuleFileModelImplCopyWith<
          _$CourseContentModuleFileModelImpl>
      get copyWith => __$$CourseContentModuleFileModelImplCopyWithImpl<
          _$CourseContentModuleFileModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseContentModuleFileModelImplToJson(
      this,
    );
  }
}

abstract class _CourseContentModuleFileModel
    implements CourseContentModuleFileModel {
  const factory _CourseContentModuleFileModel(
      {required final String filename,
      final String? filepath,
      required final int filesize,
      required final String fileurl,
      required final int timemodified,
      final String? mimetype,
      final bool? isexternalfile,
      final String? repositorytype,
      required final String type,
      final String? content,
      final int? timecreated,
      final int? sortorder,
      final int? userid,
      final String? author,
      final String? license,
      final List<TagModel>? tags}) = _$CourseContentModuleFileModelImpl;

  factory _CourseContentModuleFileModel.fromJson(Map<String, dynamic> json) =
      _$CourseContentModuleFileModelImpl.fromJson;

  @override

  /// Filename.
  String get filename;
  @override

  /// Filepath.
  String? get filepath;
  @override

  /// Filesize.
  int get filesize;
  @override

  /// Downloadable file url.
  String get fileurl;
  @override

  /// Time modified.
  int get timemodified;
  @override

  /// File mime type.
  String? get mimetype;
  @override

  /// Whether is an external file.
  bool? get isexternalfile;
  @override

  /// The repository type for external files.
  String? get repositorytype;
  @override

  /// A file or a folder or external link.
  String get type;
  @override

  /// Raw content, will be used when type is content.
  String? get content;
  @override

  /// Time created.
  int? get timecreated;
  @override

  /// Content sort order.
  int? get sortorder;
  @override

  /// User who added this content to moodle.
  int? get userid;
  @override

  /// Content owner.
  String? get author;
  @override

  /// Content license.
  String? get license;
  @override

  /// Tags.
  List<TagModel>? get tags;
  @override
  @JsonKey(ignore: true)
  _$$CourseContentModuleFileModelImplCopyWith<
          _$CourseContentModuleFileModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
