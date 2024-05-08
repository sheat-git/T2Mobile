// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_category.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$courseCategoryHash() => r'90b9d09c1a3160affb3fd2ae93fe1ee6fbb31b21';

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

/// See also [courseCategory].
@ProviderFor(courseCategory)
const courseCategoryProvider = CourseCategoryFamily();

/// See also [courseCategory].
class CourseCategoryFamily extends Family<AsyncValue<String>> {
  /// See also [courseCategory].
  const CourseCategoryFamily();

  /// See also [courseCategory].
  CourseCategoryProvider call(
    int id,
  ) {
    return CourseCategoryProvider(
      id,
    );
  }

  @override
  CourseCategoryProvider getProviderOverride(
    covariant CourseCategoryProvider provider,
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
  String? get name => r'courseCategoryProvider';
}

/// See also [courseCategory].
class CourseCategoryProvider extends AutoDisposeFutureProvider<String> {
  /// See also [courseCategory].
  CourseCategoryProvider(
    int id,
  ) : this._internal(
          (ref) => courseCategory(
            ref as CourseCategoryRef,
            id,
          ),
          from: courseCategoryProvider,
          name: r'courseCategoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$courseCategoryHash,
          dependencies: CourseCategoryFamily._dependencies,
          allTransitiveDependencies:
              CourseCategoryFamily._allTransitiveDependencies,
          id: id,
        );

  CourseCategoryProvider._internal(
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
  Override overrideWith(
    FutureOr<String> Function(CourseCategoryRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CourseCategoryProvider._internal(
        (ref) => create(ref as CourseCategoryRef),
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
  AutoDisposeFutureProviderElement<String> createElement() {
    return _CourseCategoryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CourseCategoryProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CourseCategoryRef on AutoDisposeFutureProviderRef<String> {
  /// The parameter `id` of this provider.
  int get id;
}

class _CourseCategoryProviderElement
    extends AutoDisposeFutureProviderElement<String> with CourseCategoryRef {
  _CourseCategoryProviderElement(super.provider);

  @override
  int get id => (origin as CourseCategoryProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
