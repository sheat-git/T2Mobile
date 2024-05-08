// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AccountModel {
  @RfControl(validators: [RequiredValidator()])
  String get id => throw _privateConstructorUsedError;
  @RfControl(validators: [RequiredValidator()])
  String get password => throw _privateConstructorUsedError;
  @RfArray(itemValidators: [RequiredValidator(), LengthValidator(10)])
  List<String> get matrix => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountModelCopyWith<AccountModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountModelCopyWith<$Res> {
  factory $AccountModelCopyWith(
          AccountModel value, $Res Function(AccountModel) then) =
      _$AccountModelCopyWithImpl<$Res, AccountModel>;
  @useResult
  $Res call(
      {@RfControl(validators: [RequiredValidator()]) String id,
      @RfControl(validators: [RequiredValidator()]) String password,
      @RfArray(itemValidators: [RequiredValidator(), LengthValidator(10)])
      List<String> matrix});
}

/// @nodoc
class _$AccountModelCopyWithImpl<$Res, $Val extends AccountModel>
    implements $AccountModelCopyWith<$Res> {
  _$AccountModelCopyWithImpl(this._value, this._then);

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
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountModelImplCopyWith<$Res>
    implements $AccountModelCopyWith<$Res> {
  factory _$$AccountModelImplCopyWith(
          _$AccountModelImpl value, $Res Function(_$AccountModelImpl) then) =
      __$$AccountModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@RfControl(validators: [RequiredValidator()]) String id,
      @RfControl(validators: [RequiredValidator()]) String password,
      @RfArray(itemValidators: [RequiredValidator(), LengthValidator(10)])
      List<String> matrix});
}

/// @nodoc
class __$$AccountModelImplCopyWithImpl<$Res>
    extends _$AccountModelCopyWithImpl<$Res, _$AccountModelImpl>
    implements _$$AccountModelImplCopyWith<$Res> {
  __$$AccountModelImplCopyWithImpl(
      _$AccountModelImpl _value, $Res Function(_$AccountModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? password = null,
    Object? matrix = null,
  }) {
    return _then(_$AccountModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      matrix: null == matrix
          ? _value._matrix
          : matrix // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$AccountModelImpl extends _AccountModel {
  const _$AccountModelImpl(
      {@RfControl(validators: [RequiredValidator()]) required this.id,
      @RfControl(validators: [RequiredValidator()]) required this.password,
      @RfArray(itemValidators: [RequiredValidator(), LengthValidator(10)])
      required final List<String> matrix})
      : assert(matrix.length == 7),
        _matrix = matrix,
        super._();

  @override
  @RfControl(validators: [RequiredValidator()])
  final String id;
  @override
  @RfControl(validators: [RequiredValidator()])
  final String password;
  final List<String> _matrix;
  @override
  @RfArray(itemValidators: [RequiredValidator(), LengthValidator(10)])
  List<String> get matrix {
    if (_matrix is EqualUnmodifiableListView) return _matrix;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_matrix);
  }

  @override
  String toString() {
    return 'AccountModel(id: $id, password: $password, matrix: $matrix)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.password, password) ||
                other.password == password) &&
            const DeepCollectionEquality().equals(other._matrix, _matrix));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, password, const DeepCollectionEquality().hash(_matrix));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountModelImplCopyWith<_$AccountModelImpl> get copyWith =>
      __$$AccountModelImplCopyWithImpl<_$AccountModelImpl>(this, _$identity);
}

abstract class _AccountModel extends AccountModel {
  const factory _AccountModel(
      {@RfControl(validators: [RequiredValidator()]) required final String id,
      @RfControl(validators: [RequiredValidator()])
      required final String password,
      @RfArray(itemValidators: [RequiredValidator(), LengthValidator(10)])
      required final List<String> matrix}) = _$AccountModelImpl;
  const _AccountModel._() : super._();

  @override
  @RfControl(validators: [RequiredValidator()])
  String get id;
  @override
  @RfControl(validators: [RequiredValidator()])
  String get password;
  @override
  @RfArray(itemValidators: [RequiredValidator(), LengthValidator(10)])
  List<String> get matrix;
  @override
  @JsonKey(ignore: true)
  _$$AccountModelImplCopyWith<_$AccountModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
