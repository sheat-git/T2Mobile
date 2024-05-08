// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assignments.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AssignmentsData {
  List<Assignment> get data => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AssignmentsDataCopyWith<AssignmentsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssignmentsDataCopyWith<$Res> {
  factory $AssignmentsDataCopyWith(
          AssignmentsData value, $Res Function(AssignmentsData) then) =
      _$AssignmentsDataCopyWithImpl<$Res, AssignmentsData>;
  @useResult
  $Res call({List<Assignment> data, DateTime updatedAt});
}

/// @nodoc
class _$AssignmentsDataCopyWithImpl<$Res, $Val extends AssignmentsData>
    implements $AssignmentsDataCopyWith<$Res> {
  _$AssignmentsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Assignment>,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AssignmentsDataImplCopyWith<$Res>
    implements $AssignmentsDataCopyWith<$Res> {
  factory _$$AssignmentsDataImplCopyWith(_$AssignmentsDataImpl value,
          $Res Function(_$AssignmentsDataImpl) then) =
      __$$AssignmentsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Assignment> data, DateTime updatedAt});
}

/// @nodoc
class __$$AssignmentsDataImplCopyWithImpl<$Res>
    extends _$AssignmentsDataCopyWithImpl<$Res, _$AssignmentsDataImpl>
    implements _$$AssignmentsDataImplCopyWith<$Res> {
  __$$AssignmentsDataImplCopyWithImpl(
      _$AssignmentsDataImpl _value, $Res Function(_$AssignmentsDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? updatedAt = null,
  }) {
    return _then(_$AssignmentsDataImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Assignment>,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$AssignmentsDataImpl implements _AssignmentsData {
  const _$AssignmentsDataImpl(
      {required final List<Assignment> data, required this.updatedAt})
      : _data = data;

  final List<Assignment> _data;
  @override
  List<Assignment> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'AssignmentsData(data: $data, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssignmentsDataImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AssignmentsDataImplCopyWith<_$AssignmentsDataImpl> get copyWith =>
      __$$AssignmentsDataImplCopyWithImpl<_$AssignmentsDataImpl>(
          this, _$identity);
}

abstract class _AssignmentsData implements AssignmentsData {
  const factory _AssignmentsData(
      {required final List<Assignment> data,
      required final DateTime updatedAt}) = _$AssignmentsDataImpl;

  @override
  List<Assignment> get data;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$AssignmentsDataImplCopyWith<_$AssignmentsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
