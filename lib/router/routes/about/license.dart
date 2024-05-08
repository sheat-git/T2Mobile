import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LicenseRoute extends GoRouteData {
  const LicenseRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      const MaterialPage(
        child: LicensePage(
          applicationName: 'T2Mobile',
        ),
      );
}
