part of '../route.dart';

const webBranch = TypedStatefulShellBranch<WebBranch>(routes: [
  TypedGoRoute<WebRoute>(path: '/web'),
]);

class WebBranch extends StatefulShellBranchData {
  const WebBranch();

  static final $initialLocation = const WebRoute().location;
}
