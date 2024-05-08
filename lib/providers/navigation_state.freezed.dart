// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'navigation_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NavigationStateData {
  BranchType get branch => throw _privateConstructorUsedError;
  bool get showBar => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavigationStateDataCopyWith<NavigationStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationStateDataCopyWith<$Res> {
  factory $NavigationStateDataCopyWith(
          NavigationStateData value, $Res Function(NavigationStateData) then) =
      _$NavigationStateDataCopyWithImpl<$Res, NavigationStateData>;
  @useResult
  $Res call({BranchType branch, bool showBar});
}

/// @nodoc
class _$NavigationStateDataCopyWithImpl<$Res, $Val extends NavigationStateData>
    implements $NavigationStateDataCopyWith<$Res> {
  _$NavigationStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? branch = null,
    Object? showBar = null,
  }) {
    return _then(_value.copyWith(
      branch: null == branch
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as BranchType,
      showBar: null == showBar
          ? _value.showBar
          : showBar // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NavigationStateDataImplCopyWith<$Res>
    implements $NavigationStateDataCopyWith<$Res> {
  factory _$$NavigationStateDataImplCopyWith(_$NavigationStateDataImpl value,
          $Res Function(_$NavigationStateDataImpl) then) =
      __$$NavigationStateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BranchType branch, bool showBar});
}

/// @nodoc
class __$$NavigationStateDataImplCopyWithImpl<$Res>
    extends _$NavigationStateDataCopyWithImpl<$Res, _$NavigationStateDataImpl>
    implements _$$NavigationStateDataImplCopyWith<$Res> {
  __$$NavigationStateDataImplCopyWithImpl(_$NavigationStateDataImpl _value,
      $Res Function(_$NavigationStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? branch = null,
    Object? showBar = null,
  }) {
    return _then(_$NavigationStateDataImpl(
      branch: null == branch
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as BranchType,
      showBar: null == showBar
          ? _value.showBar
          : showBar // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$NavigationStateDataImpl implements _NavigationStateData {
  const _$NavigationStateDataImpl({required this.branch, this.showBar = true});

  @override
  final BranchType branch;
  @override
  @JsonKey()
  final bool showBar;

  @override
  String toString() {
    return 'NavigationStateData(branch: $branch, showBar: $showBar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigationStateDataImpl &&
            (identical(other.branch, branch) || other.branch == branch) &&
            (identical(other.showBar, showBar) || other.showBar == showBar));
  }

  @override
  int get hashCode => Object.hash(runtimeType, branch, showBar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NavigationStateDataImplCopyWith<_$NavigationStateDataImpl> get copyWith =>
      __$$NavigationStateDataImplCopyWithImpl<_$NavigationStateDataImpl>(
          this, _$identity);
}

abstract class _NavigationStateData implements NavigationStateData {
  const factory _NavigationStateData(
      {required final BranchType branch,
      final bool showBar}) = _$NavigationStateDataImpl;

  @override
  BranchType get branch;
  @override
  bool get showBar;
  @override
  @JsonKey(ignore: true)
  _$$NavigationStateDataImplCopyWith<_$NavigationStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
