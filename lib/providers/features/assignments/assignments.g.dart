// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assignments.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$assignmentsHash() => r'276a3e81cee5c42bd69ee5437b3602ac15870602';

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

abstract class _$Assignments
    extends BuildlessAutoDisposeAsyncNotifier<CacheableData<AssignmentsData>> {
  late final AssignmentType type;

  FutureOr<CacheableData<AssignmentsData>> build(
    AssignmentType type,
  );
}

/// See also [Assignments].
@ProviderFor(Assignments)
const assignmentsProvider = AssignmentsFamily();

/// See also [Assignments].
class AssignmentsFamily
    extends Family<AsyncValue<CacheableData<AssignmentsData>>> {
  /// See also [Assignments].
  const AssignmentsFamily();

  /// See also [Assignments].
  AssignmentsProvider call(
    AssignmentType type,
  ) {
    return AssignmentsProvider(
      type,
    );
  }

  @override
  AssignmentsProvider getProviderOverride(
    covariant AssignmentsProvider provider,
  ) {
    return call(
      provider.type,
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
  String? get name => r'assignmentsProvider';
}

/// See also [Assignments].
class AssignmentsProvider extends AutoDisposeAsyncNotifierProviderImpl<
    Assignments, CacheableData<AssignmentsData>> {
  /// See also [Assignments].
  AssignmentsProvider(
    AssignmentType type,
  ) : this._internal(
          () => Assignments()..type = type,
          from: assignmentsProvider,
          name: r'assignmentsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$assignmentsHash,
          dependencies: AssignmentsFamily._dependencies,
          allTransitiveDependencies:
              AssignmentsFamily._allTransitiveDependencies,
          type: type,
        );

  AssignmentsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.type,
  }) : super.internal();

  final AssignmentType type;

  @override
  FutureOr<CacheableData<AssignmentsData>> runNotifierBuild(
    covariant Assignments notifier,
  ) {
    return notifier.build(
      type,
    );
  }

  @override
  Override overrideWith(Assignments Function() create) {
    return ProviderOverride(
      origin: this,
      override: AssignmentsProvider._internal(
        () => create()..type = type,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        type: type,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<Assignments,
      CacheableData<AssignmentsData>> createElement() {
    return _AssignmentsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AssignmentsProvider && other.type == type;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AssignmentsRef
    on AutoDisposeAsyncNotifierProviderRef<CacheableData<AssignmentsData>> {
  /// The parameter `type` of this provider.
  AssignmentType get type;
}

class _AssignmentsProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<Assignments,
        CacheableData<AssignmentsData>> with AssignmentsRef {
  _AssignmentsProviderElement(super.provider);

  @override
  AssignmentType get type => (origin as AssignmentsProvider).type;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
