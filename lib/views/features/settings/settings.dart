import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:t2mobile/providers/settings.dart';
import 'package:t2mobile/router/routes/about/license.dart';
import 'package:t2mobile/router/routes/settings/account.dart';
import 'package:t2mobile/router/shell/route.dart';
import 'package:t2mobile/services/cache_database/cache_database.dart';
import 'package:t2mobile/utilities/exec.dart';

class SettingsView extends HookConsumerWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Widget buildSection({
      required String title,
      required List<Widget> items,
    }) =>
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            SafeArea(
              top: false,
              bottom: false,
              minimum: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                title,
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ),
            ...items,
          ],
        );

    final settings = ref.watch(settingsProvider);

    final version = useState('');
    useEffect(() {
      PackageInfo.fromPlatform().then((value) {
        version.value = value.version;
      });
      return null;
    }, const []);

    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar.medium(
          title: Text(AppLocalizations.of(context)!.settings),
        ),
        SliverList.list(children: [
          buildSection(
            title: AppLocalizations.of(context)!.general,
            items: [
              ListTile(
                title: Text(AppLocalizations.of(context)!.language),
                trailing: Text(settings.locale.toText(context)),
                onTap: () async {
                  final locale = await showModalBottomSheet(
                    showDragHandle: true,
                    useRootNavigator: true,
                    useSafeArea: true,
                    context: context,
                    builder: (context) => SingleChildScrollView(
                      padding: EdgeInsets.only(
                        bottom: MediaQuery.viewPaddingOf(context).bottom,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: T2Locale.values
                            .map(
                              (locale) => RadioListTile(
                                value: locale,
                                groupValue: settings.locale,
                                title: Text(locale.toText(context)),
                                onChanged: (value) =>
                                    Navigator.of(context).pop(value),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  );

                  if (locale != null) {
                    await ref.read(settingsProvider.notifier).setLocale(locale);
                  }
                },
              ),
              ListTile(
                title: Text(AppLocalizations.of(context)!.account),
                trailing: const Icon(Symbols.navigate_next),
                onTap: () => const AccountRoute().push(context),
              ),
            ],
          ),
          buildSection(
            title: AppLocalizations.of(context)!.appearance,
            items: [
              ListTile(
                title: Text(AppLocalizations.of(context)!.themeMode),
                trailing: Text(settings.themeMode.toText(context)),
                onTap: () async {
                  final themeMode = await showModalBottomSheet(
                    showDragHandle: true,
                    useRootNavigator: true,
                    useSafeArea: true,
                    context: context,
                    builder: (context) => SingleChildScrollView(
                      padding: EdgeInsets.only(
                        bottom: MediaQuery.viewPaddingOf(context).bottom,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: ThemeMode.values
                            .map(
                              (themeMode) => RadioListTile(
                                value: themeMode,
                                groupValue: settings.themeMode,
                                title: Text(themeMode.toText(context)),
                                onChanged: (value) =>
                                    Navigator.of(context).pop(value),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  );
                  if (themeMode != null) {
                    await ref
                        .read(settingsProvider.notifier)
                        .setThemeMode(themeMode);
                  }
                },
              ),
              ListTile(
                title: Text(AppLocalizations.of(context)!.pureBlack),
                subtitle:
                    Text(AppLocalizations.of(context)!.usePureBlackForDarkMode),
                trailing: Switch(
                  value: settings.darkIsTrueBlack,
                  onChanged: (value) async {
                    await ref
                        .read(settingsProvider.notifier)
                        .setDarkIsTrueBlack(value);
                  },
                ),
              ),
            ],
          ),
          buildSection(
            title: AppLocalizations.of(context)!.advanced,
            items: [
              ListTile(
                title:
                    Text(AppLocalizations.of(context)!.hideBottomBarInWebTab),
                subtitle: Text(AppLocalizations.of(context)!
                    .hideTheBottomBarWhenScrollingDownInTheWebTab),
                trailing: Switch(
                  value: settings.hideWebBottomBar,
                  onChanged: (value) async {
                    await ref
                        .read(settingsProvider.notifier)
                        .setHideWebBottomBar(value);
                  },
                ),
              ),
              ListTile(
                title: Text(AppLocalizations.of(context)!.showBannerAboutData),
                subtitle: Text(AppLocalizations.of(context)!
                    .showABannerWithInformationAboutTheLastUpdateDateAndTimeOfTheData),
                trailing: Switch(
                  value: settings.showStateBanner,
                  onChanged: (value) async {
                    await ref
                        .read(settingsProvider.notifier)
                        .setShowStateBanner(value);
                  },
                ),
              ),
              ListTile(
                title: Text(AppLocalizations.of(context)!.clearCache),
                textColor: Theme.of(context).colorScheme.error,
                onTap: () => exec(
                  context,
                  () => ref.read(cacheDbProvider.notifier).deleteFile(),
                  onSuccess: ExecDefaults.snackBarOnSuccess(
                    message: (_) => AppLocalizations.of(context)!.cacheCleared,
                    showCloseIcon: true,
                  ),
                ),
              ),
            ],
          ),
          buildSection(
            title: AppLocalizations.of(context)!.aboutThisApp,
            items: [
              ListTile(
                title: Text(AppLocalizations.of(context)!.version),
                trailing: Text(version.value),
              ),
              ListTile(
                title: Text(AppLocalizations.of(context)!.license),
                trailing: const Icon(Symbols.navigate_next),
                onTap: () => const LicenseRoute().push(context),
              ),
            ],
          ),
        ]),
      ]),
    );
  }
}

extension ThemeModeTo on ThemeMode {
  String toText(BuildContext context) => switch (this) {
        ThemeMode.light => AppLocalizations.of(context)!.light,
        ThemeMode.dark => AppLocalizations.of(context)!.dark,
        ThemeMode.system => AppLocalizations.of(context)!.system,
      };

  IconData toIcon() => switch (this) {
        ThemeMode.light => Symbols.light_mode,
        ThemeMode.dark => Symbols.dark_mode,
        ThemeMode.system => Symbols.night_sight_auto,
      };
}

extension T2LocaleTo on T2Locale {
  String toText(BuildContext context) => switch (this) {
        T2Locale.system => AppLocalizations.of(context)!.system,
        T2Locale.ja => '日本語',
        T2Locale.en => 'English',
      };

  IconData toIcon() => switch (this) {
        T2Locale.system => Symbols.language_international,
        T2Locale.ja => Symbols.language_japanese_kana,
        T2Locale.en => Symbols.language_us,
      };
}
