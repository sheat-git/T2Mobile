import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:t2mobile/providers/base/cacheable_notifier.dart';
import 'package:t2mobile/providers/settings.dart';
import 'package:t2mobile/views/components/failure.dart';

class CacheableScaffold<T> extends HookConsumerWidget {
  final ProviderBase<AsyncValue<CacheableData<T>>> provider;
  final Refreshable<CacheableNotifier<T>> notifier;
  final Widget? Function(BuildContext context, T? data)? appBarBuilder;
  final Widget Function(BuildContext context, T data) builder;
  final DateTime Function(T) updatedAtSelector;

  const CacheableScaffold({
    super.key,
    required this.provider,
    required this.notifier,
    this.appBarBuilder,
    required this.builder,
    required this.updatedAtSelector,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(provider);
    final appBar = state.maybeWhen(
      data: (data) => appBarBuilder?.call(context, data.data),
      orElse: () =>
          appBarBuilder?.call(context, null) ??
          AppBar(forceMaterialTransparency: true),
    );
    final body = state.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) => Center(
        child: SingleChildScrollView(
            child: FailureView(error: error, stackTrace: stackTrace)),
      ),
      data: (data) => builder(context, data.data),
    );

    final showStateBanner = ref
        .watch(settingsProvider.select((settings) => settings.showStateBanner));
    if (!showStateBanner) return _buildScaffold(appBar: appBar, body: body);

    final Widget icon = state.maybeWhen(
      skipLoadingOnReload: false,
      skipLoadingOnRefresh: false,
      skipError: false,
      loading: () => Container(
        width: 16,
        height: 16,
        padding: const EdgeInsets.all(2),
        child: CircularProgressIndicator(
          color: Theme.of(context).colorScheme.onSecondaryContainer,
          strokeWidth: 1,
        ),
      ),
      orElse: () => GestureDetector(
        onTap: () => ref.read(notifier).refresh(),
        child: Icon(
          Symbols.refresh,
          size: 16,
          color: Theme.of(context).colorScheme.onSecondaryContainer,
        ),
      ),
    );
    final String message;
    if (state.hasValue) {
      final value = state.requireValue;
      final date = updatedAtSelector(value.data).toLocal();
      message = AppLocalizations.of(context)!.updatedAt(
          '${MaterialLocalizations.of(context).formatShortMonthDay(date)} ${MaterialLocalizations.of(context).formatTimeOfDay(TimeOfDay.fromDateTime(date))}');
    } else if (state.isLoading) {
      message = AppLocalizations.of(context)!.retrievingData;
    } else {
      message = '';
    }
    return _buildScaffold(
      appBar: appBar,
      body: Column(children: [
        Expanded(child: body),
        Container(
          color: Theme.of(context).colorScheme.secondaryContainer,
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Row(
            children: [
              const SizedBox(width: 12),
              icon,
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  message,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color:
                            Theme.of(context).colorScheme.onSecondaryContainer,
                      ),
                ),
              ),
              const SizedBox(width: 12),
            ],
          ),
        ),
      ]),
    );
  }

  Widget _buildScaffold({
    Widget? appBar,
    required Widget body,
  }) {
    if (appBar is PreferredSizeWidget?) {
      return Scaffold(appBar: appBar, body: body);
    } else {
      return Scaffold(
        body: CustomScrollView(
          physics: const NeverScrollableScrollPhysics(),
          slivers: [
            appBar,
            SliverFillRemaining(
              child: body,
            ),
          ],
        ),
      );
    }
  }
}
