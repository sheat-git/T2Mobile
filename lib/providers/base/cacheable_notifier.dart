import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cacheable_notifier.freezed.dart';

@freezed
sealed class CacheableData<T> with _$CacheableData<T> {
  const CacheableData._();

  factory CacheableData(T data, {required bool isCache}) =>
      isCache ? CachedData(data) : FetchedData(data);

  const factory CacheableData.chached(T data) = CachedData<T>;

  const factory CacheableData.fetched(T data) = FetchedData<T>;

  @override
  T get data;

  bool get isCache => this is CachedData<T>;
}

mixin CacheableNotifier<T> {
  Future<CacheableData<T>> loadOrFetch() async {
    final cache = await load();
    if (cache != null) {
      return CachedData(cache);
    }
    return await fetchAndSave();
  }

  Future<CacheableData<T>> loadAndFetch() async {
    final cache = await load();
    if (cache != null) {
      if (shouldFetch(cache)) unawaited(refresh());
      return CachedData(cache);
    }
    return await fetchAndSave();
  }

  /// loadAndFetchでfetchを実行するかどうかを判定する
  bool shouldFetch(T cache) => true;

  Future<T?> load() {
    throw UnimplementedError();
  }

  Future<T> fetch() {
    throw UnimplementedError();
  }

  Future<void> save(T data) async {}

  Future<FetchedData<T>> fetchAndSave() async {
    final data = await fetch();
    unawaited(save(data));
    return FetchedData(data);
  }

  // AsyncNotifierBaseに定義されているメソッド群
  // refresh()で使用
  // 本当はonでAsyncNotifierBaseを指定したかったが公開されていないため定義
  Future<CacheableData<T>> update(
    FutureOr<CacheableData<T>> Function(CacheableData<T>) cb, {
    FutureOr<CacheableData<T>> Function(Object err, StackTrace stackTrace)?
        onError,
  });
  AsyncValue<CacheableData<T>> get state;
  set state(AsyncValue<CacheableData<T>> newState);

  void setLoading([AsyncValue<CacheableData<T>>? previous]) => state =
      AsyncLoading<CacheableData<T>>().copyWithPrevious(previous ?? state);

  Future<void> refresh() => update((_) async {
        setLoading();
        return await fetchAndSave();
      });
}
