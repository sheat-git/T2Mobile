// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assignment_ids.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AssignmentIdsData {
  Map<AssignmentType, Set<int>> get data => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AssignmentIdsDataCopyWith<AssignmentIdsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssignmentIdsDataCopyWith<$Res> {
  factory $AssignmentIdsDataCopyWith(
          AssignmentIdsData value, $Res Function(AssignmentIdsData) then) =
      _$AssignmentIdsDataCopyWithImpl<$Res, AssignmentIdsData>;
  @useResult
  $Res call({Map<AssignmentType, Set<int>> data, DateTime updatedAt});
}

/// @nodoc
class _$AssignmentIdsDataCopyWithImpl<$Res, $Val extends AssignmentIdsData>
    implements $AssignmentIdsDataCopyWith<$Res> {
  _$AssignmentIdsDataCopyWithImpl(this._value, this._then);

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
              as Map<AssignmentType, Set<int>>,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AssignmentIdsDataImplCopyWith<$Res>
    implements $AssignmentIdsDataCopyWith<$Res> {
  factory _$$AssignmentIdsDataImplCopyWith(_$AssignmentIdsDataImpl value,
          $Res Function(_$AssignmentIdsDataImpl) then) =
      __$$AssignmentIdsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<AssignmentType, Set<int>> data, DateTime updatedAt});
}

/// @nodoc
class __$$AssignmentIdsDataImplCopyWithImpl<$Res>
    extends _$AssignmentIdsDataCopyWithImpl<$Res, _$AssignmentIdsDataImpl>
    implements _$$AssignmentIdsDataImplCopyWith<$Res> {
  __$$AssignmentIdsDataImplCopyWithImpl(_$AssignmentIdsDataImpl _value,
      $Res Function(_$AssignmentIdsDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? updatedAt = null,
  }) {
    return _then(_$AssignmentIdsDataImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<AssignmentType, Set<int>>,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$AssignmentIdsDataImpl implements _AssignmentIdsData {
  const _$AssignmentIdsDataImpl(final Map<AssignmentType, Set<int>> data,
      {required this.updatedAt})
      : _data = data;

  final Map<AssignmentType, Set<int>> _data;
  @override
  Map<AssignmentType, Set<int>> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'AssignmentIdsData._(data: $data, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssignmentIdsDataImpl &&
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
  _$$AssignmentIdsDataImplCopyWith<_$AssignmentIdsDataImpl> get copyWith =>
      __$$AssignmentIdsDataImplCopyWithImpl<_$AssignmentIdsDataImpl>(
          this, _$identity);
}

abstract class _AssignmentIdsData implements AssignmentIdsData {
  const factory _AssignmentIdsData(final Map<AssignmentType, Set<int>> data,
      {required final DateTime updatedAt}) = _$AssignmentIdsDataImpl;

  @override
  Map<AssignmentType, Set<int>> get data;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$AssignmentIdsDataImplCopyWith<_$AssignmentIdsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
