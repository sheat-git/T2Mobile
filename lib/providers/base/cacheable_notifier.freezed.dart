// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cacheable_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CacheableData<T> {
  T get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) chached,
    required TResult Function(T data) fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? chached,
    TResult? Function(T data)? fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? chached,
    TResult Function(T data)? fetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CachedData<T> value) chached,
    required TResult Function(FetchedData<T> value) fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CachedData<T> value)? chached,
    TResult? Function(FetchedData<T> value)? fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CachedData<T> value)? chached,
    TResult Function(FetchedData<T> value)? fetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CacheableDataCopyWith<T, CacheableData<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CacheableDataCopyWith<T, $Res> {
  factory $CacheableDataCopyWith(
          CacheableData<T> value, $Res Function(CacheableData<T>) then) =
      _$CacheableDataCopyWithImpl<T, $Res, CacheableData<T>>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class _$CacheableDataCopyWithImpl<T, $Res, $Val extends CacheableData<T>>
    implements $CacheableDataCopyWith<T, $Res> {
  _$CacheableDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CachedDataImplCopyWith<T, $Res>
    implements $CacheableDataCopyWith<T, $Res> {
  factory _$$CachedDataImplCopyWith(
          _$CachedDataImpl<T> value, $Res Function(_$CachedDataImpl<T>) then) =
      __$$CachedDataImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$CachedDataImplCopyWithImpl<T, $Res>
    extends _$CacheableDataCopyWithImpl<T, $Res, _$CachedDataImpl<T>>
    implements _$$CachedDataImplCopyWith<T, $Res> {
  __$$CachedDataImplCopyWithImpl(
      _$CachedDataImpl<T> _value, $Res Function(_$CachedDataImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$CachedDataImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$CachedDataImpl<T> extends CachedData<T> {
  const _$CachedDataImpl(this.data) : super._();

  @override
  final T data;

  @override
  String toString() {
    return 'CacheableData<$T>.chached(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CachedDataImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CachedDataImplCopyWith<T, _$CachedDataImpl<T>> get copyWith =>
      __$$CachedDataImplCopyWithImpl<T, _$CachedDataImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) chached,
    required TResult Function(T data) fetched,
  }) {
    return chached(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? chached,
    TResult? Function(T data)? fetched,
  }) {
    return chached?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? chached,
    TResult Function(T data)? fetched,
    required TResult orElse(),
  }) {
    if (chached != null) {
      return chached(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CachedData<T> value) chached,
    required TResult Function(FetchedData<T> value) fetched,
  }) {
    return chached(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CachedData<T> value)? chached,
    TResult? Function(FetchedData<T> value)? fetched,
  }) {
    return chached?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CachedData<T> value)? chached,
    TResult Function(FetchedData<T> value)? fetched,
    required TResult orElse(),
  }) {
    if (chached != null) {
      return chached(this);
    }
    return orElse();
  }
}

abstract class CachedData<T> extends CacheableData<T> {
  const factory CachedData(final T data) = _$CachedDataImpl<T>;
  const CachedData._() : super._();

  @override
  T get data;
  @override
  @JsonKey(ignore: true)
  _$$CachedDataImplCopyWith<T, _$CachedDataImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchedDataImplCopyWith<T, $Res>
    implements $CacheableDataCopyWith<T, $Res> {
  factory _$$FetchedDataImplCopyWith(_$FetchedDataImpl<T> value,
          $Res Function(_$FetchedDataImpl<T>) then) =
      __$$FetchedDataImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$FetchedDataImplCopyWithImpl<T, $Res>
    extends _$CacheableDataCopyWithImpl<T, $Res, _$FetchedDataImpl<T>>
    implements _$$FetchedDataImplCopyWith<T, $Res> {
  __$$FetchedDataImplCopyWithImpl(
      _$FetchedDataImpl<T> _value, $Res Function(_$FetchedDataImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$FetchedDataImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$FetchedDataImpl<T> extends FetchedData<T> {
  const _$FetchedDataImpl(this.data) : super._();

  @override
  final T data;

  @override
  String toString() {
    return 'CacheableData<$T>.fetched(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchedDataImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchedDataImplCopyWith<T, _$FetchedDataImpl<T>> get copyWith =>
      __$$FetchedDataImplCopyWithImpl<T, _$FetchedDataImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) chached,
    required TResult Function(T data) fetched,
  }) {
    return fetched(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? chached,
    TResult? Function(T data)? fetched,
  }) {
    return fetched?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? chached,
    TResult Function(T data)? fetched,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CachedData<T> value) chached,
    required TResult Function(FetchedData<T> value) fetched,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CachedData<T> value)? chached,
    TResult? Function(FetchedData<T> value)? fetched,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CachedData<T> value)? chached,
    TResult Function(FetchedData<T> value)? fetched,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class FetchedData<T> extends CacheableData<T> {
  const factory FetchedData(final T data) = _$FetchedDataImpl<T>;
  const FetchedData._() : super._();

  @override
  T get data;
  @override
  @JsonKey(ignore: true)
  _$$FetchedDataImplCopyWith<T, _$FetchedDataImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
