import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:t2mobile/views/features/notifications/notifications.dart';

class NotificationsRoute extends GoRouteData {
  const NotificationsRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      const MaterialPage(child: NotificationsPage());
}
