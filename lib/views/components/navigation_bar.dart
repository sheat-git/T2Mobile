import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:t2mobile/providers/navigation_state.dart';

class T2NavigationBar extends ConsumerWidget {
  const T2NavigationBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) => NavigationBar(
        labelBehavior: AppLocalizations.of(context)?.localeName == 'ja'
            ? NavigationDestinationLabelBehavior.alwaysShow
            : NavigationDestinationLabelBehavior.onlyShowSelected,
        destinations: [
          buildDestication(
            icon: Symbols.school,
            label: AppLocalizations.of(context)!.courses,
          ),
          buildDestication(
            icon: Symbols.assignment,
            label: AppLocalizations.of(context)!.assignments,
          ),
          buildDestication(
            icon: Symbols.notifications,
            label: AppLocalizations.of(context)!.notifications,
          ),
          buildDestication(
            icon: Symbols.language,
            label: AppLocalizations.of(context)!.web,
          ),
          buildDestication(
            icon: Symbols.settings,
            label: AppLocalizations.of(context)!.settings,
          ),
        ],
        selectedIndex: ref.watch(
            navigationStateProvider.select((value) => value.branch.index)),
        onDestinationSelected: (i) => ref
            .read(navigationStateProvider.notifier)
            .goBranch(BranchType.values[i]),
      );

  Widget buildDestication({
    required IconData icon,
    required String label,
  }) =>
      NavigationDestination(
        icon: Icon(icon),
        selectedIcon: Icon(icon, fill: 1),
        label: label,
        tooltip: '',
      );
}
