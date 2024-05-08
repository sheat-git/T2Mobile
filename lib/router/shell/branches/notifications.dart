part of '../route.dart';

const notificationsBranch =
    TypedStatefulShellBranch<NotificationsBranch>(routes: [
  TypedGoRoute<NotificationsRoute>(path: '/notifications'),
]);

class NotificationsBranch extends StatefulShellBranchData {
  const NotificationsBranch();

  static final $initialLocation = const NotificationsRoute().location;
}
