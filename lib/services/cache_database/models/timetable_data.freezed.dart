// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timetable_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TimetableData _$TimetableDataFromJson(Map<String, dynamic> json) {
  return _TimetableData.fromJson(json);
}

/// @nodoc
mixin _$TimetableData {
  List<List<TimetableContent?>> get columns =>
      throw _privateConstructorUsedError;
  List<TimetableCourse>? get otherCourses => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimetableDataCopyWith<TimetableData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimetableDataCopyWith<$Res> {
  factory $TimetableDataCopyWith(
          TimetableData value, $Res Function(TimetableData) then) =
      _$TimetableDataCopyWithImpl<$Res, TimetableData>;
  @useResult
  $Res call(
      {List<List<TimetableContent?>> columns,
      List<TimetableCourse>? otherCourses});
}

/// @nodoc
class _$TimetableDataCopyWithImpl<$Res, $Val extends TimetableData>
    implements $TimetableDataCopyWith<$Res> {
  _$TimetableDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? columns = null,
    Object? otherCourses = freezed,
  }) {
    return _then(_value.copyWith(
      columns: null == columns
          ? _value.columns
          : columns // ignore: cast_nullable_to_non_nullable
              as List<List<TimetableContent?>>,
      otherCourses: freezed == otherCourses
          ? _value.otherCourses
          : otherCourses // ignore: cast_nullable_to_non_nullable
              as List<TimetableCourse>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimetableDataImplCopyWith<$Res>
    implements $TimetableDataCopyWith<$Res> {
  factory _$$TimetableDataImplCopyWith(
          _$TimetableDataImpl value, $Res Function(_$TimetableDataImpl) then) =
      __$$TimetableDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<List<TimetableContent?>> columns,
      List<TimetableCourse>? otherCourses});
}

/// @nodoc
class __$$TimetableDataImplCopyWithImpl<$Res>
    extends _$TimetableDataCopyWithImpl<$Res, _$TimetableDataImpl>
    implements _$$TimetableDataImplCopyWith<$Res> {
  __$$TimetableDataImplCopyWithImpl(
      _$TimetableDataImpl _value, $Res Function(_$TimetableDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? columns = null,
    Object? otherCourses = freezed,
  }) {
    return _then(_$TimetableDataImpl(
      columns: null == columns
          ? _value._columns
          : columns // ignore: cast_nullable_to_non_nullable
              as List<List<TimetableContent?>>,
      otherCourses: freezed == otherCourses
          ? _value._otherCourses
          : otherCourses // ignore: cast_nullable_to_non_nullable
              as List<TimetableCourse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimetableDataImpl implements _TimetableData {
  _$TimetableDataImpl(
      {required final List<List<TimetableContent?>> columns,
      final List<TimetableCourse>? otherCourses})
      : assert(columns.map((column) => column.length).toSet().length == 1,
            'All columns must have the same length.'),
        _columns = columns,
        _otherCourses = otherCourses;

  factory _$TimetableDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimetableDataImplFromJson(json);

  final List<List<TimetableContent?>> _columns;
  @override
  List<List<TimetableContent?>> get columns {
    if (_columns is EqualUnmodifiableListView) return _columns;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_columns);
  }

  final List<TimetableCourse>? _otherCourses;
  @override
  List<TimetableCourse>? get otherCourses {
    final value = _otherCourses;
    if (value == null) return null;
    if (_otherCourses is EqualUnmodifiableListView) return _otherCourses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TimetableData(columns: $columns, otherCourses: $otherCourses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimetableDataImpl &&
            const DeepCollectionEquality().equals(other._columns, _columns) &&
            const DeepCollectionEquality()
                .equals(other._otherCourses, _otherCourses));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_columns),
      const DeepCollectionEquality().hash(_otherCourses));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimetableDataImplCopyWith<_$TimetableDataImpl> get copyWith =>
      __$$TimetableDataImplCopyWithImpl<_$TimetableDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimetableDataImplToJson(
      this,
    );
  }
}

abstract class _TimetableData implements TimetableData {
  factory _TimetableData(
      {required final List<List<TimetableContent?>> columns,
      final List<TimetableCourse>? otherCourses}) = _$TimetableDataImpl;

  factory _TimetableData.fromJson(Map<String, dynamic> json) =
      _$TimetableDataImpl.fromJson;

  @override
  List<List<TimetableContent?>> get columns;
  @override
  List<TimetableCourse>? get otherCourses;
  @override
  @JsonKey(ignore: true)
  _$$TimetableDataImplCopyWith<_$TimetableDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TimetableContent _$TimetableContentFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'header':
      return TimetableHeader.fromJson(json);
    case 'course':
      return TimetableCourse.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'TimetableContent',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$TimetableContent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) header,
    required TResult Function(int id, String name) course,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? header,
    TResult? Function(int id, String name)? course,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? header,
    TResult Function(int id, String name)? course,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimetableHeader value) header,
    required TResult Function(TimetableCourse value) course,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimetableHeader value)? header,
    TResult? Function(TimetableCourse value)? course,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimetableHeader value)? header,
    TResult Function(TimetableCourse value)? course,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimetableContentCopyWith<$Res> {
  factory $TimetableContentCopyWith(
          TimetableContent value, $Res Function(TimetableContent) then) =
      _$TimetableContentCopyWithImpl<$Res, TimetableContent>;
}

/// @nodoc
class _$TimetableContentCopyWithImpl<$Res, $Val extends TimetableContent>
    implements $TimetableContentCopyWith<$Res> {
  _$TimetableContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TimetableHeaderImplCopyWith<$Res> {
  factory _$$TimetableHeaderImplCopyWith(_$TimetableHeaderImpl value,
          $Res Function(_$TimetableHeaderImpl) then) =
      __$$TimetableHeaderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$TimetableHeaderImplCopyWithImpl<$Res>
    extends _$TimetableContentCopyWithImpl<$Res, _$TimetableHeaderImpl>
    implements _$$TimetableHeaderImplCopyWith<$Res> {
  __$$TimetableHeaderImplCopyWithImpl(
      _$TimetableHeaderImpl _value, $Res Function(_$TimetableHeaderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$TimetableHeaderImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimetableHeaderImpl implements TimetableHeader {
  const _$TimetableHeaderImpl({required this.text, final String? $type})
      : $type = $type ?? 'header';

  factory _$TimetableHeaderImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimetableHeaderImplFromJson(json);

  @override
  final String text;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TimetableContent.header(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimetableHeaderImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimetableHeaderImplCopyWith<_$TimetableHeaderImpl> get copyWith =>
      __$$TimetableHeaderImplCopyWithImpl<_$TimetableHeaderImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) header,
    required TResult Function(int id, String name) course,
  }) {
    return header(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? header,
    TResult? Function(int id, String name)? course,
  }) {
    return header?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? header,
    TResult Function(int id, String name)? course,
    required TResult orElse(),
  }) {
    if (header != null) {
      return header(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimetableHeader value) header,
    required TResult Function(TimetableCourse value) course,
  }) {
    return header(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimetableHeader value)? header,
    TResult? Function(TimetableCourse value)? course,
  }) {
    return header?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimetableHeader value)? header,
    TResult Function(TimetableCourse value)? course,
    required TResult orElse(),
  }) {
    if (header != null) {
      return header(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TimetableHeaderImplToJson(
      this,
    );
  }
}

abstract class TimetableHeader implements TimetableContent {
  const factory TimetableHeader({required final String text}) =
      _$TimetableHeaderImpl;

  factory TimetableHeader.fromJson(Map<String, dynamic> json) =
      _$TimetableHeaderImpl.fromJson;

  String get text;
  @JsonKey(ignore: true)
  _$$TimetableHeaderImplCopyWith<_$TimetableHeaderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TimetableCourseImplCopyWith<$Res> {
  factory _$$TimetableCourseImplCopyWith(_$TimetableCourseImpl value,
          $Res Function(_$TimetableCourseImpl) then) =
      __$$TimetableCourseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$TimetableCourseImplCopyWithImpl<$Res>
    extends _$TimetableContentCopyWithImpl<$Res, _$TimetableCourseImpl>
    implements _$$TimetableCourseImplCopyWith<$Res> {
  __$$TimetableCourseImplCopyWithImpl(
      _$TimetableCourseImpl _value, $Res Function(_$TimetableCourseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$TimetableCourseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimetableCourseImpl implements TimetableCourse {
  const _$TimetableCourseImpl(
      {required this.id, required this.name, final String? $type})
      : $type = $type ?? 'course';

  factory _$TimetableCourseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimetableCourseImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TimetableContent.course(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimetableCourseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimetableCourseImplCopyWith<_$TimetableCourseImpl> get copyWith =>
      __$$TimetableCourseImplCopyWithImpl<_$TimetableCourseImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) header,
    required TResult Function(int id, String name) course,
  }) {
    return course(id, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? header,
    TResult? Function(int id, String name)? course,
  }) {
    return course?.call(id, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? header,
    TResult Function(int id, String name)? course,
    required TResult orElse(),
  }) {
    if (course != null) {
      return course(id, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimetableHeader value) header,
    required TResult Function(TimetableCourse value) course,
  }) {
    return course(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimetableHeader value)? header,
    TResult? Function(TimetableCourse value)? course,
  }) {
    return course?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimetableHeader value)? header,
    TResult Function(TimetableCourse value)? course,
    required TResult orElse(),
  }) {
    if (course != null) {
      return course(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TimetableCourseImplToJson(
      this,
    );
  }
}

abstract class TimetableCourse implements TimetableContent {
  const factory TimetableCourse(
      {required final int id,
      required final String name}) = _$TimetableCourseImpl;

  factory TimetableCourse.fromJson(Map<String, dynamic> json) =
      _$TimetableCourseImpl.fromJson;

  int get id;
  String get name;
  @JsonKey(ignore: true)
  _$$TimetableCourseImplCopyWith<_$TimetableCourseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
