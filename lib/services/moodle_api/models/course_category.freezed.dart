// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CourseCategoryModel _$CourseCategoryModelFromJson(Map<String, dynamic> json) {
  return _CourseCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$CourseCategoryModel {
  /// Category id.
  int get id => throw _privateConstructorUsedError;

  /// Category name.
  String get name => throw _privateConstructorUsedError;

  /// Category id number.
  String? get idnumber => throw _privateConstructorUsedError;

  /// Category description.
  String get description => throw _privateConstructorUsedError;

  /// Description format (1 = HTML, 0 = MOODLE, 2 = PLAIN or 4 = MARKDOWN).
  int get descriptionformat => throw _privateConstructorUsedError;

  /// Parent category id.
  int get parent => throw _privateConstructorUsedError;

  /// Category sorting order.
  int get sortorder => throw _privateConstructorUsedError;

  /// Number of courses in this category.
  int get coursecount => throw _privateConstructorUsedError;

  /// 1: available, 0: not available.
  int? get visible => throw _privateConstructorUsedError;

  /// 1: available, 0: not available.
  int? get visibleold => throw _privateConstructorUsedError;

  /// Timestamp.
  int? get timemodified => throw _privateConstructorUsedError;

  /// Category depth.
  int get depth => throw _privateConstructorUsedError;

  /// Category path.
  String get path => throw _privateConstructorUsedError;

  /// Category theme.
  String? get theme => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseCategoryModelCopyWith<CourseCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseCategoryModelCopyWith<$Res> {
  factory $CourseCategoryModelCopyWith(
          CourseCategoryModel value, $Res Function(CourseCategoryModel) then) =
      _$CourseCategoryModelCopyWithImpl<$Res, CourseCategoryModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String? idnumber,
      String description,
      int descriptionformat,
      int parent,
      int sortorder,
      int coursecount,
      int? visible,
      int? visibleold,
      int? timemodified,
      int depth,
      String path,
      String? theme});
}

/// @nodoc
class _$CourseCategoryModelCopyWithImpl<$Res, $Val extends CourseCategoryModel>
    implements $CourseCategoryModelCopyWith<$Res> {
  _$CourseCategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? idnumber = freezed,
    Object? description = null,
    Object? descriptionformat = null,
    Object? parent = null,
    Object? sortorder = null,
    Object? coursecount = null,
    Object? visible = freezed,
    Object? visibleold = freezed,
    Object? timemodified = freezed,
    Object? depth = null,
    Object? path = null,
    Object? theme = freezed,
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
      idnumber: freezed == idnumber
          ? _value.idnumber
          : idnumber // ignore: cast_nullable_to_non_nullable
              as String?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionformat: null == descriptionformat
          ? _value.descriptionformat
          : descriptionformat // ignore: cast_nullable_to_non_nullable
              as int,
      parent: null == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as int,
      sortorder: null == sortorder
          ? _value.sortorder
          : sortorder // ignore: cast_nullable_to_non_nullable
              as int,
      coursecount: null == coursecount
          ? _value.coursecount
          : coursecount // ignore: cast_nullable_to_non_nullable
              as int,
      visible: freezed == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as int?,
      visibleold: freezed == visibleold
          ? _value.visibleold
          : visibleold // ignore: cast_nullable_to_non_nullable
              as int?,
      timemodified: freezed == timemodified
          ? _value.timemodified
          : timemodified // ignore: cast_nullable_to_non_nullable
              as int?,
      depth: null == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as int,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      theme: freezed == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseCategoryModelImplCopyWith<$Res>
    implements $CourseCategoryModelCopyWith<$Res> {
  factory _$$CourseCategoryModelImplCopyWith(_$CourseCategoryModelImpl value,
          $Res Function(_$CourseCategoryModelImpl) then) =
      __$$CourseCategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String? idnumber,
      String description,
      int descriptionformat,
      int parent,
      int sortorder,
      int coursecount,
      int? visible,
      int? visibleold,
      int? timemodified,
      int depth,
      String path,
      String? theme});
}

/// @nodoc
class __$$CourseCategoryModelImplCopyWithImpl<$Res>
    extends _$CourseCategoryModelCopyWithImpl<$Res, _$CourseCategoryModelImpl>
    implements _$$CourseCategoryModelImplCopyWith<$Res> {
  __$$CourseCategoryModelImplCopyWithImpl(_$CourseCategoryModelImpl _value,
      $Res Function(_$CourseCategoryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? idnumber = freezed,
    Object? description = null,
    Object? descriptionformat = null,
    Object? parent = null,
    Object? sortorder = null,
    Object? coursecount = null,
    Object? visible = freezed,
    Object? visibleold = freezed,
    Object? timemodified = freezed,
    Object? depth = null,
    Object? path = null,
    Object? theme = freezed,
  }) {
    return _then(_$CourseCategoryModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      idnumber: freezed == idnumber
          ? _value.idnumber
          : idnumber // ignore: cast_nullable_to_non_nullable
              as String?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionformat: null == descriptionformat
          ? _value.descriptionformat
          : descriptionformat // ignore: cast_nullable_to_non_nullable
              as int,
      parent: null == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as int,
      sortorder: null == sortorder
          ? _value.sortorder
          : sortorder // ignore: cast_nullable_to_non_nullable
              as int,
      coursecount: null == coursecount
          ? _value.coursecount
          : coursecount // ignore: cast_nullable_to_non_nullable
              as int,
      visible: freezed == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as int?,
      visibleold: freezed == visibleold
          ? _value.visibleold
          : visibleold // ignore: cast_nullable_to_non_nullable
              as int?,
      timemodified: freezed == timemodified
          ? _value.timemodified
          : timemodified // ignore: cast_nullable_to_non_nullable
              as int?,
      depth: null == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as int,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      theme: freezed == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseCategoryModelImpl implements _CourseCategoryModel {
  const _$CourseCategoryModelImpl(
      {required this.id,
      required this.name,
      this.idnumber,
      required this.description,
      required this.descriptionformat,
      required this.parent,
      required this.sortorder,
      required this.coursecount,
      this.visible,
      this.visibleold,
      this.timemodified,
      required this.depth,
      required this.path,
      this.theme});

  factory _$CourseCategoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseCategoryModelImplFromJson(json);

  /// Category id.
  @override
  final int id;

  /// Category name.
  @override
  final String name;

  /// Category id number.
  @override
  final String? idnumber;

  /// Category description.
  @override
  final String description;

  /// Description format (1 = HTML, 0 = MOODLE, 2 = PLAIN or 4 = MARKDOWN).
  @override
  final int descriptionformat;

  /// Parent category id.
  @override
  final int parent;

  /// Category sorting order.
  @override
  final int sortorder;

  /// Number of courses in this category.
  @override
  final int coursecount;

  /// 1: available, 0: not available.
  @override
  final int? visible;

  /// 1: available, 0: not available.
  @override
  final int? visibleold;

  /// Timestamp.
  @override
  final int? timemodified;

  /// Category depth.
  @override
  final int depth;

  /// Category path.
  @override
  final String path;

  /// Category theme.
  @override
  final String? theme;

  @override
  String toString() {
    return 'CourseCategoryModel(id: $id, name: $name, idnumber: $idnumber, description: $description, descriptionformat: $descriptionformat, parent: $parent, sortorder: $sortorder, coursecount: $coursecount, visible: $visible, visibleold: $visibleold, timemodified: $timemodified, depth: $depth, path: $path, theme: $theme)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseCategoryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.idnumber, idnumber) ||
                other.idnumber == idnumber) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionformat, descriptionformat) ||
                other.descriptionformat == descriptionformat) &&
            (identical(other.parent, parent) || other.parent == parent) &&
            (identical(other.sortorder, sortorder) ||
                other.sortorder == sortorder) &&
            (identical(other.coursecount, coursecount) ||
                other.coursecount == coursecount) &&
            (identical(other.visible, visible) || other.visible == visible) &&
            (identical(other.visibleold, visibleold) ||
                other.visibleold == visibleold) &&
            (identical(other.timemodified, timemodified) ||
                other.timemodified == timemodified) &&
            (identical(other.depth, depth) || other.depth == depth) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.theme, theme) || other.theme == theme));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      idnumber,
      description,
      descriptionformat,
      parent,
      sortorder,
      coursecount,
      visible,
      visibleold,
      timemodified,
      depth,
      path,
      theme);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseCategoryModelImplCopyWith<_$CourseCategoryModelImpl> get copyWith =>
      __$$CourseCategoryModelImplCopyWithImpl<_$CourseCategoryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseCategoryModelImplToJson(
      this,
    );
  }
}

abstract class _CourseCategoryModel implements CourseCategoryModel {
  const factory _CourseCategoryModel(
      {required final int id,
      required final String name,
      final String? idnumber,
      required final String description,
      required final int descriptionformat,
      required final int parent,
      required final int sortorder,
      required final int coursecount,
      final int? visible,
      final int? visibleold,
      final int? timemodified,
      required final int depth,
      required final String path,
      final String? theme}) = _$CourseCategoryModelImpl;

  factory _CourseCategoryModel.fromJson(Map<String, dynamic> json) =
      _$CourseCategoryModelImpl.fromJson;

  @override

  /// Category id.
  int get id;
  @override

  /// Category name.
  String get name;
  @override

  /// Category id number.
  String? get idnumber;
  @override

  /// Category description.
  String get description;
  @override

  /// Description format (1 = HTML, 0 = MOODLE, 2 = PLAIN or 4 = MARKDOWN).
  int get descriptionformat;
  @override

  /// Parent category id.
  int get parent;
  @override

  /// Category sorting order.
  int get sortorder;
  @override

  /// Number of courses in this category.
  int get coursecount;
  @override

  /// 1: available, 0: not available.
  int? get visible;
  @override

  /// 1: available, 0: not available.
  int? get visibleold;
  @override

  /// Timestamp.
  int? get timemodified;
  @override

  /// Category depth.
  int get depth;
  @override

  /// Category path.
  String get path;
  @override

  /// Category theme.
  String? get theme;
  @override
  @JsonKey(ignore: true)
  _$$CourseCategoryModelImplCopyWith<_$CourseCategoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
