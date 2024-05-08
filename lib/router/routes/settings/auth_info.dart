import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:t2mobile/views/features/settings/auth_info.dart';

class AuthInfoRoute extends GoRouteData {
  const AuthInfoRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      const MaterialPage(child: AuthInfoPage());
}
