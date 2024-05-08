// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AccountData {
  String get id => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  MatrixData get matrix => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountDataCopyWith<AccountData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountDataCopyWith<$Res> {
  factory $AccountDataCopyWith(
          AccountData value, $Res Function(AccountData) then) =
      _$AccountDataCopyWithImpl<$Res, AccountData>;
  @useResult
  $Res call({String id, String password, MatrixData matrix});

  $MatrixDataCopyWith<$Res> get matrix;
}

/// @nodoc
class _$AccountDataCopyWithImpl<$Res, $Val extends AccountData>
    implements $AccountDataCopyWith<$Res> {
  _$AccountDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? password = null,
    Object? matrix = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      matrix: null == matrix
          ? _value.matrix
          : matrix // ignore: cast_nullable_to_non_nullable
              as MatrixData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MatrixDataCopyWith<$Res> get matrix {
    return $MatrixDataCopyWith<$Res>(_value.matrix, (value) {
      return _then(_value.copyWith(matrix: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AccountDataImplCopyWith<$Res>
    implements $AccountDataCopyWith<$Res> {
  factory _$$AccountDataImplCopyWith(
          _$AccountDataImpl value, $Res Function(_$AccountDataImpl) then) =
      __$$AccountDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String password, MatrixData matrix});

  @override
  $MatrixDataCopyWith<$Res> get matrix;
}

/// @nodoc
class __$$AccountDataImplCopyWithImpl<$Res>
    extends _$AccountDataCopyWithImpl<$Res, _$AccountDataImpl>
    implements _$$AccountDataImplCopyWith<$Res> {
  __$$AccountDataImplCopyWithImpl(
      _$AccountDataImpl _value, $Res Function(_$AccountDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? password = null,
    Object? matrix = null,
  }) {
    return _then(_$AccountDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      matrix: null == matrix
          ? _value.matrix
          : matrix // ignore: cast_nullable_to_non_nullable
              as MatrixData,
    ));
  }
}

/// @nodoc

class _$AccountDataImpl implements _AccountData {
  const _$AccountDataImpl(
      {required this.id, required this.password, required this.matrix});

  @override
  final String id;
  @override
  final String password;
  @override
  final MatrixData matrix;

  @override
  String toString() {
    return 'AccountData(id: $id, password: $password, matrix: $matrix)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.matrix, matrix) || other.matrix == matrix));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, password, matrix);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountDataImplCopyWith<_$AccountDataImpl> get copyWith =>
      __$$AccountDataImplCopyWithImpl<_$AccountDataImpl>(this, _$identity);
}

abstract class _AccountData implements AccountData {
  const factory _AccountData(
      {required final String id,
      required final String password,
      required final MatrixData matrix}) = _$AccountDataImpl;

  @override
  String get id;
  @override
  String get password;
  @override
  MatrixData get matrix;
  @override
  @JsonKey(ignore: true)
  _$$AccountDataImplCopyWith<_$AccountDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MatrixData {
  String get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MatrixDataCopyWith<MatrixData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatrixDataCopyWith<$Res> {
  factory $MatrixDataCopyWith(
          MatrixData value, $Res Function(MatrixData) then) =
      _$MatrixDataCopyWithImpl<$Res, MatrixData>;
  @useResult
  $Res call({String data});
}

/// @nodoc
class _$MatrixDataCopyWithImpl<$Res, $Val extends MatrixData>
    implements $MatrixDataCopyWith<$Res> {
  _$MatrixDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MatrixDataImplCopyWith<$Res>
    implements $MatrixDataCopyWith<$Res> {
  factory _$$MatrixDataImplCopyWith(
          _$MatrixDataImpl value, $Res Function(_$MatrixDataImpl) then) =
      __$$MatrixDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String data});
}

/// @nodoc
class __$$MatrixDataImplCopyWithImpl<$Res>
    extends _$MatrixDataCopyWithImpl<$Res, _$MatrixDataImpl>
    implements _$$MatrixDataImplCopyWith<$Res> {
  __$$MatrixDataImplCopyWithImpl(
      _$MatrixDataImpl _value, $Res Function(_$MatrixDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$MatrixDataImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MatrixDataImpl extends _MatrixData {
  const _$MatrixDataImpl(this.data)
      : assert(data.length == 70),
        super._();

  @override
  final String data;

  @override
  String toString() {
    return 'MatrixData(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MatrixDataImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MatrixDataImplCopyWith<_$MatrixDataImpl> get copyWith =>
      __$$MatrixDataImplCopyWithImpl<_$MatrixDataImpl>(this, _$identity);
}

abstract class _MatrixData extends MatrixData {
  const factory _MatrixData(final String data) = _$MatrixDataImpl;
  const _MatrixData._() : super._();

  @override
  String get data;
  @override
  @JsonKey(ignore: true)
  _$$MatrixDataImplCopyWith<_$MatrixDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
