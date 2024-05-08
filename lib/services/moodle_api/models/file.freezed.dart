// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FileModel _$FileModelFromJson(Map<String, dynamic> json) {
  return _FileModel.fromJson(json);
}

/// @nodoc
mixin _$FileModel {
  /// Downloadable file url.
  String get fileurl => throw _privateConstructorUsedError;

  /// File name.
  String? get filename => throw _privateConstructorUsedError;

  /// File path.
  String? get filepath => throw _privateConstructorUsedError;

  /// File size.
  int? get filesize => throw _privateConstructorUsedError;

  /// Time modified.
  int? get timemodified => throw _privateConstructorUsedError;

  /// File mime type.
  String? get mimetype => throw _privateConstructorUsedError;

  /// Whether is an external file.
  int? get isexternalfile => throw _privateConstructorUsedError;

  /// The repository type for external files.
  String? get repositorytype => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FileModelCopyWith<FileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileModelCopyWith<$Res> {
  factory $FileModelCopyWith(FileModel value, $Res Function(FileModel) then) =
      _$FileModelCopyWithImpl<$Res, FileModel>;
  @useResult
  $Res call(
      {String fileurl,
      String? filename,
      String? filepath,
      int? filesize,
      int? timemodified,
      String? mimetype,
      int? isexternalfile,
      String? repositorytype});
}

/// @nodoc
class _$FileModelCopyWithImpl<$Res, $Val extends FileModel>
    implements $FileModelCopyWith<$Res> {
  _$FileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileurl = null,
    Object? filename = freezed,
    Object? filepath = freezed,
    Object? filesize = freezed,
    Object? timemodified = freezed,
    Object? mimetype = freezed,
    Object? isexternalfile = freezed,
    Object? repositorytype = freezed,
  }) {
    return _then(_value.copyWith(
      fileurl: null == fileurl
          ? _value.fileurl
          : fileurl // ignore: cast_nullable_to_non_nullable
              as String,
      filename: freezed == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String?,
      filepath: freezed == filepath
          ? _value.filepath
          : filepath // ignore: cast_nullable_to_non_nullable
              as String?,
      filesize: freezed == filesize
          ? _value.filesize
          : filesize // ignore: cast_nullable_to_non_nullable
              as int?,
      timemodified: freezed == timemodified
          ? _value.timemodified
          : timemodified // ignore: cast_nullable_to_non_nullable
              as int?,
      mimetype: freezed == mimetype
          ? _value.mimetype
          : mimetype // ignore: cast_nullable_to_non_nullable
              as String?,
      isexternalfile: freezed == isexternalfile
          ? _value.isexternalfile
          : isexternalfile // ignore: cast_nullable_to_non_nullable
              as int?,
      repositorytype: freezed == repositorytype
          ? _value.repositorytype
          : repositorytype // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FileModelImplCopyWith<$Res>
    implements $FileModelCopyWith<$Res> {
  factory _$$FileModelImplCopyWith(
          _$FileModelImpl value, $Res Function(_$FileModelImpl) then) =
      __$$FileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String fileurl,
      String? filename,
      String? filepath,
      int? filesize,
      int? timemodified,
      String? mimetype,
      int? isexternalfile,
      String? repositorytype});
}

/// @nodoc
class __$$FileModelImplCopyWithImpl<$Res>
    extends _$FileModelCopyWithImpl<$Res, _$FileModelImpl>
    implements _$$FileModelImplCopyWith<$Res> {
  __$$FileModelImplCopyWithImpl(
      _$FileModelImpl _value, $Res Function(_$FileModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileurl = null,
    Object? filename = freezed,
    Object? filepath = freezed,
    Object? filesize = freezed,
    Object? timemodified = freezed,
    Object? mimetype = freezed,
    Object? isexternalfile = freezed,
    Object? repositorytype = freezed,
  }) {
    return _then(_$FileModelImpl(
      fileurl: null == fileurl
          ? _value.fileurl
          : fileurl // ignore: cast_nullable_to_non_nullable
              as String,
      filename: freezed == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String?,
      filepath: freezed == filepath
          ? _value.filepath
          : filepath // ignore: cast_nullable_to_non_nullable
              as String?,
      filesize: freezed == filesize
          ? _value.filesize
          : filesize // ignore: cast_nullable_to_non_nullable
              as int?,
      timemodified: freezed == timemodified
          ? _value.timemodified
          : timemodified // ignore: cast_nullable_to_non_nullable
              as int?,
      mimetype: freezed == mimetype
          ? _value.mimetype
          : mimetype // ignore: cast_nullable_to_non_nullable
              as String?,
      isexternalfile: freezed == isexternalfile
          ? _value.isexternalfile
          : isexternalfile // ignore: cast_nullable_to_non_nullable
              as int?,
      repositorytype: freezed == repositorytype
          ? _value.repositorytype
          : repositorytype // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FileModelImpl extends _FileModel {
  const _$FileModelImpl(
      {required this.fileurl,
      this.filename,
      this.filepath,
      this.filesize,
      this.timemodified,
      this.mimetype,
      this.isexternalfile,
      this.repositorytype})
      : super._();

  factory _$FileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FileModelImplFromJson(json);

  /// Downloadable file url.
  @override
  final String fileurl;

  /// File name.
  @override
  final String? filename;

  /// File path.
  @override
  final String? filepath;

  /// File size.
  @override
  final int? filesize;

  /// Time modified.
  @override
  final int? timemodified;

  /// File mime type.
  @override
  final String? mimetype;

  /// Whether is an external file.
  @override
  final int? isexternalfile;

  /// The repository type for external files.
  @override
  final String? repositorytype;

  @override
  String toString() {
    return 'FileModel(fileurl: $fileurl, filename: $filename, filepath: $filepath, filesize: $filesize, timemodified: $timemodified, mimetype: $mimetype, isexternalfile: $isexternalfile, repositorytype: $repositorytype)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileModelImpl &&
            (identical(other.fileurl, fileurl) || other.fileurl == fileurl) &&
            (identical(other.filename, filename) ||
                other.filename == filename) &&
            (identical(other.filepath, filepath) ||
                other.filepath == filepath) &&
            (identical(other.filesize, filesize) ||
                other.filesize == filesize) &&
            (identical(other.timemodified, timemodified) ||
                other.timemodified == timemodified) &&
            (identical(other.mimetype, mimetype) ||
                other.mimetype == mimetype) &&
            (identical(other.isexternalfile, isexternalfile) ||
                other.isexternalfile == isexternalfile) &&
            (identical(other.repositorytype, repositorytype) ||
                other.repositorytype == repositorytype));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fileurl, filename, filepath,
      filesize, timemodified, mimetype, isexternalfile, repositorytype);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FileModelImplCopyWith<_$FileModelImpl> get copyWith =>
      __$$FileModelImplCopyWithImpl<_$FileModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FileModelImplToJson(
      this,
    );
  }
}

abstract class _FileModel extends FileModel {
  const factory _FileModel(
      {required final String fileurl,
      final String? filename,
      final String? filepath,
      final int? filesize,
      final int? timemodified,
      final String? mimetype,
      final int? isexternalfile,
      final String? repositorytype}) = _$FileModelImpl;
  const _FileModel._() : super._();

  factory _FileModel.fromJson(Map<String, dynamic> json) =
      _$FileModelImpl.fromJson;

  @override

  /// Downloadable file url.
  String get fileurl;
  @override

  /// File name.
  String? get filename;
  @override

  /// File path.
  String? get filepath;
  @override

  /// File size.
  int? get filesize;
  @override

  /// Time modified.
  int? get timemodified;
  @override

  /// File mime type.
  String? get mimetype;
  @override

  /// Whether is an external file.
  int? get isexternalfile;
  @override

  /// The repository type for external files.
  String? get repositorytype;
  @override
  @JsonKey(ignore: true)
  _$$FileModelImplCopyWith<_$FileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
