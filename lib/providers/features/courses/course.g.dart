// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$courseHash() => r'cf6c08e6ed699b6ec4f6f84fb61ec193f2adf646';

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

abstract class _$Course
    extends BuildlessAutoDisposeAsyncNotifier<CacheableData<d.Course>> {
  late final int id;

  FutureOr<CacheableData<d.Course>> build(
    int id,
  );
}

/// See also [Course].
@ProviderFor(Course)
const courseProvider = CourseFamily();

/// See also [Course].
class CourseFamily extends Family<AsyncValue<CacheableData<d.Course>>> {
  /// See also [Course].
  const CourseFamily();

  /// See also [Course].
  CourseProvider call(
    int id,
  ) {
    return CourseProvider(
      id,
    );
  }

  @override
  CourseProvider getProviderOverride(
    covariant CourseProvider provider,
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
  String? get name => r'courseProvider';
}

/// See also [Course].
class CourseProvider extends AutoDisposeAsyncNotifierProviderImpl<Course,
    CacheableData<d.Course>> {
  /// See also [Course].
  CourseProvider(
    int id,
  ) : this._internal(
          () => Course()..id = id,
          from: courseProvider,
          name: r'courseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$courseHash,
          dependencies: CourseFamily._dependencies,
          allTransitiveDependencies: CourseFamily._allTransitiveDependencies,
          id: id,
        );

  CourseProvider._internal(
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
  FutureOr<CacheableData<d.Course>> runNotifierBuild(
    covariant Course notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(Course Function() create) {
    return ProviderOverride(
      origin: this,
      override: CourseProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<Course, CacheableData<d.Course>>
      createElement() {
    return _CourseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CourseProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CourseRef
    on AutoDisposeAsyncNotifierProviderRef<CacheableData<d.Course>> {
  /// The parameter `id` of this provider.
  int get id;
}

class _CourseProviderElement extends AutoDisposeAsyncNotifierProviderElement<
    Course, CacheableData<d.Course>> with CourseRef {
  _CourseProviderElement(super.provider);

  @override
  int get id => (origin as CourseProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
