// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_contents.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$courseSectionsHash() => r'7659684eb5f9d3090e7671484cd82bf14342818b';

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

abstract class _$CourseSections extends BuildlessAutoDisposeAsyncNotifier<
    CacheableData<CourseSectionsData>> {
  late final int id;

  FutureOr<CacheableData<CourseSectionsData>> build(
    int id,
  );
}

/// See also [CourseSections].
@ProviderFor(CourseSections)
const courseSectionsProvider = CourseSectionsFamily();

/// See also [CourseSections].
class CourseSectionsFamily
    extends Family<AsyncValue<CacheableData<CourseSectionsData>>> {
  /// See also [CourseSections].
  const CourseSectionsFamily();

  /// See also [CourseSections].
  CourseSectionsProvider call(
    int id,
  ) {
    return CourseSectionsProvider(
      id,
    );
  }

  @override
  CourseSectionsProvider getProviderOverride(
    covariant CourseSectionsProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'courseSectionsProvider';
}

/// See also [CourseSections].
class CourseSectionsProvider extends AutoDisposeAsyncNotifierProviderImpl<
    CourseSections, CacheableData<CourseSectionsData>> {
  /// See also [CourseSections].
  CourseSectionsProvider(
    int id,
  ) : this._internal(
          () => CourseSections()..id = id,
          from: courseSectionsProvider,
          name: r'courseSectionsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$courseSectionsHash,
          dependencies: CourseSectionsFamily._dependencies,
          allTransitiveDependencies:
              CourseSectionsFamily._allTransitiveDependencies,
          id: id,
        );

  CourseSectionsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  FutureOr<CacheableData<CourseSectionsData>> runNotifierBuild(
    covariant CourseSections notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(CourseSections Function() create) {
    return ProviderOverride(
      origin: this,
      override: CourseSectionsProvider._internal(
        () => create()..id = id,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<CourseSections,
      CacheableData<CourseSectionsData>> createElement() {
    return _CourseSectionsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CourseSectionsProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CourseSectionsRef
    on AutoDisposeAsyncNotifierProviderRef<CacheableData<CourseSectionsData>> {
  /// The parameter `id` of this provider.
  int get id;
}

class _CourseSectionsProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<CourseSections,
        CacheableData<CourseSectionsData>> with CourseSectionsRef {
  _CourseSectionsProviderElement(super.provider);

  @override
  int get id => (origin as CourseSectionsProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
