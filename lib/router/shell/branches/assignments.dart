part of '../route.dart';

const assignmentsBranch = TypedStatefulShellBranch<AssignmentsBranch>(routes: [
  TypedGoRoute<AssignmentsRoute>(path: '/assignments'),
]);

class AssignmentsBranch extends StatefulShellBranchData {
  const AssignmentsBranch();

  static final $initialLocation = const AssignmentsRoute().location;
}
