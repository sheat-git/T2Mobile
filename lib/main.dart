import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:t2mobile/providers/account.dart';
import 'package:t2mobile/providers/settings.dart';
import 'package:t2mobile/router/router.dart';
import 'package:t2mobile/utilities/validators/validation_message.dart';
import 'package:t2mobile/views/login.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final container = ProviderContainer();
  void runT2App(Widget app) =>
      runApp(UncontrolledProviderScope(container: container, child: app));
  void runMainApp() => runT2App(const T2MobileApp());

  await Future.wait([
    accountProvider,
    settingsProvider,
  ].map((p) => container.read(p.notifier).load()));

  final account = container.read(accountProvider);
  if (account == null) {
    runT2App(T2LoginApp(runMainApp: runMainApp));
  } else {
    runMainApp();
  }
}

extension _T2ThemeData on ThemeData {
  static const _primaryKey = Color(0xFF005C92);
  static const _secondaryKey = Color(0xFFFF9843);
  static const _subThemesData = FlexSubThemesData(
    inputDecoratorBorderType: FlexInputBorderType.outline,
  );

  static ThemeData _apply(ThemeData theme) => theme.copyWith(
        snackBarTheme: theme.snackBarTheme.copyWith(
          behavior: SnackBarBehavior.floating,
        ),
      );

  static final ThemeData light = _apply(FlexThemeData.light(
    useMaterial3: true,
    colorScheme: SeedColorScheme.fromSeeds(
      brightness: Brightness.light,
      primaryKey: _primaryKey,
      secondaryKey: _secondaryKey,
    ),
    subThemesData: _subThemesData,
  ));

  static _dark({
    required bool darkIsTrueBlack,
  }) =>
      _apply(FlexThemeData.dark(
        darkIsTrueBlack: darkIsTrueBlack,
        useMaterial3: true,
        colorScheme: SeedColorScheme.fromSeeds(
          brightness: Brightness.dark,
          primaryKey: _primaryKey,
          secondaryKey: _secondaryKey,
        ),
        subThemesData: _subThemesData,
      ));

  static final ThemeData dark = _dark(darkIsTrueBlack: false);

  static final ThemeData black = _dark(darkIsTrueBlack: true);
}

Widget _buildT2App({
  Widget? home,
  GoRouter? goRouter,
}) {
  assert(home != null || goRouter != null);
  const localizationsDelegates = AppLocalizations.localizationsDelegates;
  const supportedLocales = AppLocalizations.supportedLocales;

  Widget builder(BuildContext context, Widget? child) => ReactiveFormConfig(
        validationMessages: {
          ValidationMessage.required: (_) =>
              AppLocalizations.of(context)!.thisFieldIsRequired,
          T2ValidationMessage.length: (error) => AppLocalizations.of(context)!
              .thisFieldMustBeNCharactersLong(
                  (error as Map)['requiredLength'] as int),
        },
        child: child ?? const SizedBox.shrink(),
      );

  return Consumer(
    builder: (context, ref, _) {
      final locale = ref
          .watch(settingsProvider.select((value) => value.locale.toLocale()));
      final themeMode =
          ref.watch(settingsProvider.select((value) => value.themeMode));
      final darkIsTrueBlack =
          ref.watch(settingsProvider.select((value) => value.darkIsTrueBlack));
      final darkTheme =
          darkIsTrueBlack ? _T2ThemeData.black : _T2ThemeData.dark;

      if (home != null) {
        return MaterialApp(
          locale: locale,
          localizationsDelegates: localizationsDelegates,
          supportedLocales: supportedLocales,
          theme: _T2ThemeData.light,
          darkTheme: darkTheme,
          builder: builder,
          themeMode: themeMode,
          home: home,
        );
      } else {
        return MaterialApp.router(
          locale: locale,
          localizationsDelegates: localizationsDelegates,
          supportedLocales: supportedLocales,
          theme: _T2ThemeData.light,
          darkTheme: darkTheme,
          builder: builder,
          themeMode: themeMode,
          routerConfig: goRouter,
        );
      }
    },
  );
}

class T2LoginApp extends StatelessWidget {
  final void Function() runMainApp;

  const T2LoginApp({super.key, required this.runMainApp});

  @override
  Widget build(BuildContext context) =>
      _buildT2App(home: LoginView(onLogin: runMainApp));
}

class T2MobileApp extends ConsumerWidget {
  const T2MobileApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) =>
      _buildT2App(goRouter: ref.watch(goRouterProvider));
}
