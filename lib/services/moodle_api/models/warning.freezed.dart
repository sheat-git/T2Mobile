// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'warning.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WarningModel _$WarningModelFromJson(Map<String, dynamic> json) {
  return _WarningModel.fromJson(json);
}

/// @nodoc
mixin _$WarningModel {
  /// Item.
  String? get item => throw _privateConstructorUsedError;

  /// Item id.
  int? get itemid => throw _privateConstructorUsedError;

  /// The warning code can be used by the client app to implement specific behaviour.
  String get warningcode => throw _privateConstructorUsedError;

  /// Untranslated English message to explain the warning.
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WarningModelCopyWith<WarningModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WarningModelCopyWith<$Res> {
  factory $WarningModelCopyWith(
          WarningModel value, $Res Function(WarningModel) then) =
      _$WarningModelCopyWithImpl<$Res, WarningModel>;
  @useResult
  $Res call({String? item, int? itemid, String warningcode, String message});
}

/// @nodoc
class _$WarningModelCopyWithImpl<$Res, $Val extends WarningModel>
    implements $WarningModelCopyWith<$Res> {
  _$WarningModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = freezed,
    Object? itemid = freezed,
    Object? warningcode = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as String?,
      itemid: freezed == itemid
          ? _value.itemid
          : itemid // ignore: cast_nullable_to_non_nullable
              as int?,
      warningcode: null == warningcode
          ? _value.warningcode
          : warningcode // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WarningModelImplCopyWith<$Res>
    implements $WarningModelCopyWith<$Res> {
  factory _$$WarningModelImplCopyWith(
          _$WarningModelImpl value, $Res Function(_$WarningModelImpl) then) =
      __$$WarningModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? item, int? itemid, String warningcode, String message});
}

/// @nodoc
class __$$WarningModelImplCopyWithImpl<$Res>
    extends _$WarningModelCopyWithImpl<$Res, _$WarningModelImpl>
    implements _$$WarningModelImplCopyWith<$Res> {
  __$$WarningModelImplCopyWithImpl(
      _$WarningModelImpl _value, $Res Function(_$WarningModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = freezed,
    Object? itemid = freezed,
    Object? warningcode = null,
    Object? message = null,
  }) {
    return _then(_$WarningModelImpl(
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as String?,
      itemid: freezed == itemid
          ? _value.itemid
          : itemid // ignore: cast_nullable_to_non_nullable
              as int?,
      warningcode: null == warningcode
          ? _value.warningcode
          : warningcode // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WarningModelImpl implements _WarningModel {
  const _$WarningModelImpl(
      {this.item,
      this.itemid,
      required this.warningcode,
      required this.message});

  factory _$WarningModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WarningModelImplFromJson(json);

  /// Item.
  @override
  final String? item;

  /// Item id.
  @override
  final int? itemid;

  /// The warning code can be used by the client app to implement specific behaviour.
  @override
  final String warningcode;

  /// Untranslated English message to explain the warning.
  @override
  final String message;

  @override
  String toString() {
    return 'WarningModel(item: $item, itemid: $itemid, warningcode: $warningcode, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WarningModelImpl &&
            (identical(other.item, item) || other.item == item) &&
            (identical(other.itemid, itemid) || other.itemid == itemid) &&
            (identical(other.warningcode, warningcode) ||
                other.warningcode == warningcode) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, item, itemid, warningcode, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WarningModelImplCopyWith<_$WarningModelImpl> get copyWith =>
      __$$WarningModelImplCopyWithImpl<_$WarningModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WarningModelImplToJson(
      this,
    );
  }
}

abstract class _WarningModel implements WarningModel {
  const factory _WarningModel(
      {final String? item,
      final int? itemid,
      required final String warningcode,
      required final String message}) = _$WarningModelImpl;

  factory _WarningModel.fromJson(Map<String, dynamic> json) =
      _$WarningModelImpl.fromJson;

  @override

  /// Item.
  String? get item;
  @override

  /// Item id.
  int? get itemid;
  @override

  /// The warning code can be used by the client app to implement specific behaviour.
  String get warningcode;
  @override

  /// Untranslated English message to explain the warning.
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$WarningModelImplCopyWith<_$WarningModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
