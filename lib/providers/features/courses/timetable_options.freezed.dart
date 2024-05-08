// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timetable_options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TimetableOptionsData {
  List<TimetableYear> get years => throw _privateConstructorUsedError;
  List<TimetableQuarter> get quarters => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimetableOptionsDataCopyWith<TimetableOptionsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimetableOptionsDataCopyWith<$Res> {
  factory $TimetableOptionsDataCopyWith(TimetableOptionsData value,
          $Res Function(TimetableOptionsData) then) =
      _$TimetableOptionsDataCopyWithImpl<$Res, TimetableOptionsData>;
  @useResult
  $Res call({List<TimetableYear> years, List<TimetableQuarter> quarters});
}

/// @nodoc
class _$TimetableOptionsDataCopyWithImpl<$Res,
        $Val extends TimetableOptionsData>
    implements $TimetableOptionsDataCopyWith<$Res> {
  _$TimetableOptionsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? years = null,
    Object? quarters = null,
  }) {
    return _then(_value.copyWith(
      years: null == years
          ? _value.years
          : years // ignore: cast_nullable_to_non_nullable
              as List<TimetableYear>,
      quarters: null == quarters
          ? _value.quarters
          : quarters // ignore: cast_nullable_to_non_nullable
              as List<TimetableQuarter>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimetableOptionsDataImplCopyWith<$Res>
    implements $TimetableOptionsDataCopyWith<$Res> {
  factory _$$TimetableOptionsDataImplCopyWith(_$TimetableOptionsDataImpl value,
          $Res Function(_$TimetableOptionsDataImpl) then) =
      __$$TimetableOptionsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TimetableYear> years, List<TimetableQuarter> quarters});
}

/// @nodoc
class __$$TimetableOptionsDataImplCopyWithImpl<$Res>
    extends _$TimetableOptionsDataCopyWithImpl<$Res, _$TimetableOptionsDataImpl>
    implements _$$TimetableOptionsDataImplCopyWith<$Res> {
  __$$TimetableOptionsDataImplCopyWithImpl(_$TimetableOptionsDataImpl _value,
      $Res Function(_$TimetableOptionsDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? years = null,
    Object? quarters = null,
  }) {
    return _then(_$TimetableOptionsDataImpl(
      years: null == years
          ? _value._years
          : years // ignore: cast_nullable_to_non_nullable
              as List<TimetableYear>,
      quarters: null == quarters
          ? _value._quarters
          : quarters // ignore: cast_nullable_to_non_nullable
              as List<TimetableQuarter>,
    ));
  }
}

/// @nodoc

class _$TimetableOptionsDataImpl implements _TimetableOptionsData {
  const _$TimetableOptionsDataImpl(
      {required final List<TimetableYear> years,
      required final List<TimetableQuarter> quarters})
      : _years = years,
        _quarters = quarters;

  final List<TimetableYear> _years;
  @override
  List<TimetableYear> get years {
    if (_years is EqualUnmodifiableListView) return _years;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_years);
  }

  final List<TimetableQuarter> _quarters;
  @override
  List<TimetableQuarter> get quarters {
    if (_quarters is EqualUnmodifiableListView) return _quarters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_quarters);
  }

  @override
  String toString() {
    return 'TimetableOptionsData(years: $years, quarters: $quarters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimetableOptionsDataImpl &&
            const DeepCollectionEquality().equals(other._years, _years) &&
            const DeepCollectionEquality().equals(other._quarters, _quarters));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_years),
      const DeepCollectionEquality().hash(_quarters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimetableOptionsDataImplCopyWith<_$TimetableOptionsDataImpl>
      get copyWith =>
          __$$TimetableOptionsDataImplCopyWithImpl<_$TimetableOptionsDataImpl>(
              this, _$identity);
}

abstract class _TimetableOptionsData implements TimetableOptionsData {
  const factory _TimetableOptionsData(
          {required final List<TimetableYear> years,
          required final List<TimetableQuarter> quarters}) =
      _$TimetableOptionsDataImpl;

  @override
  List<TimetableYear> get years;
  @override
  List<TimetableQuarter> get quarters;
  @override
  @JsonKey(ignore: true)
  _$$TimetableOptionsDataImplCopyWith<_$TimetableOptionsDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
