import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AssignmentsRoute extends GoRouteData {
  const AssignmentsRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      const MaterialPage<void>(child: Text('Assignments'));
}
