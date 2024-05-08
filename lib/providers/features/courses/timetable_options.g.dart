// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timetable_options.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$timetableOptionsHash() => r'8b619cd01c388b3a416fe5976bcc83b961b8b9e2';

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

abstract class _$TimetableOptions
    extends BuildlessAutoDisposeAsyncNotifier<TimetableOptionsData> {
  late final String lang;

  FutureOr<TimetableOptionsData> build(
    String lang,
  );
}

/// See also [TimetableOptions].
@ProviderFor(TimetableOptions)
const timetableOptionsProvider = TimetableOptionsFamily();

/// See also [TimetableOptions].
class TimetableOptionsFamily extends Family<AsyncValue<TimetableOptionsData>> {
  /// See also [TimetableOptions].
  const TimetableOptionsFamily();

  /// See also [TimetableOptions].
  TimetableOptionsProvider call(
    String lang,
  ) {
    return TimetableOptionsProvider(
      lang,
    );
  }

  @override
  TimetableOptionsProvider getProviderOverride(
    covariant TimetableOptionsProvider provider,
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
  String? get name => r'timetableOptionsProvider';
}

/// See also [TimetableOptions].
class TimetableOptionsProvider extends AutoDisposeAsyncNotifierProviderImpl<
    TimetableOptions, TimetableOptionsData> {
  /// See also [TimetableOptions].
  TimetableOptionsProvider(
    String lang,
  ) : this._internal(
          () => TimetableOptions()..lang = lang,
          from: timetableOptionsProvider,
          name: r'timetableOptionsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$timetableOptionsHash,
          dependencies: TimetableOptionsFamily._dependencies,
          allTransitiveDependencies:
              TimetableOptionsFamily._allTransitiveDependencies,
          lang: lang,
        );

  TimetableOptionsProvider._internal(
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
  FutureOr<TimetableOptionsData> runNotifierBuild(
    covariant TimetableOptions notifier,
  ) {
    return notifier.build(
      lang,
    );
  }

  @override
  Override overrideWith(TimetableOptions Function() create) {
    return ProviderOverride(
      origin: this,
      override: TimetableOptionsProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<TimetableOptions,
      TimetableOptionsData> createElement() {
    return _TimetableOptionsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TimetableOptionsProvider && other.lang == lang;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, lang.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TimetableOptionsRef
    on AutoDisposeAsyncNotifierProviderRef<TimetableOptionsData> {
  /// The parameter `lang` of this provider.
  String get lang;
}

class _TimetableOptionsProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<TimetableOptions,
        TimetableOptionsData> with TimetableOptionsRef {
  _TimetableOptionsProviderElement(super.provider);

  @override
  String get lang => (origin as TimetableOptionsProvider).lang;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
