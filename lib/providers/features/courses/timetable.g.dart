// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timetable.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$timetableHash() => r'174466fdc7debaba33bf7a599a88ce87bcb29802';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$Timetable
    extends BuildlessAutoDisposeAsyncNotifier<CacheableData<d.Timetable>> {
  late final String lang;

  FutureOr<CacheableData<d.Timetable>> build(
    String lang,
  );
}

/// See also [Timetable].
@ProviderFor(Timetable)
const timetableProvider = TimetableFamily();

/// See also [Timetable].
class TimetableFamily extends Family<AsyncValue<CacheableData<d.Timetable>>> {
  /// See also [Timetable].
  const TimetableFamily();

  /// See also [Timetable].
  TimetableProvider call(
    String lang,
  ) {
    return TimetableProvider(
      lang,
    );
  }

  @override
  TimetableProvider getProviderOverride(
    covariant TimetableProvider provider,
  ) {
    return call(
      provider.lang,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'timetableProvider';
}

/// See also [Timetable].
class TimetableProvider extends AutoDisposeAsyncNotifierProviderImpl<Timetable,
    CacheableData<d.Timetable>> {
  /// See also [Timetable].
  TimetableProvider(
    String lang,
  ) : this._internal(
          () => Timetable()..lang = lang,
          from: timetableProvider,
          name: r'timetableProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$timetableHash,
          dependencies: TimetableFamily._dependencies,
          allTransitiveDependencies: TimetableFamily._allTransitiveDependencies,
          lang: lang,
        );

  TimetableProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.lang,
  }) : super.internal();

  final String lang;

  @override
  FutureOr<CacheableData<d.Timetable>> runNotifierBuild(
    covariant Timetable notifier,
  ) {
    return notifier.build(
      lang,
    );
  }

  @override
  Override overrideWith(Timetable Function() create) {
    return ProviderOverride(
      origin: this,
      override: TimetableProvider._internal(
        () => create()..lang = lang,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        lang: lang,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<Timetable, CacheableData<d.Timetable>>
      createElement() {
    return _TimetableProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TimetableProvider && other.lang == lang;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, lang.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TimetableRef
    on AutoDisposeAsyncNotifierProviderRef<CacheableData<d.Timetable>> {
  /// The parameter `lang` of this provider.
  String get lang;
}

class _TimetableProviderElement extends AutoDisposeAsyncNotifierProviderElement<
    Timetable, CacheableData<d.Timetable>> with TimetableRef {
  _TimetableProviderElement(super.provider);

  @override
  String get lang => (origin as TimetableProvider).lang;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
