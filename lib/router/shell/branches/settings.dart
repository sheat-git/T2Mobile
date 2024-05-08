part of '../route.dart';

const settingsBranch = TypedStatefulShellBranch<SettingsBranch>(routes: [
  TypedGoRoute<SettingsRoute>(
    path: '/settings',
    routes: [
      TypedGoRoute<AccountRoute>(path: 'account'),
      TypedGoRoute<AuthInfoRoute>(path: 'auth-info'),
    ],
  ),
  TypedGoRoute<LicenseRoute>(path: '/about/license'),
]);

class SettingsBranch extends StatefulShellBranchData {
  const SettingsBranch();

  static final $initialLocation = const SettingsRoute().location;
}
