import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:t2mobile/views/components/web_bottom_bar.dart';
import 'package:t2mobile/views/web.dart';

class WebRoute extends GoRouteData {
  const WebRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      MaterialPage<void>(
        child: ScaffoldMessenger(
          child: Scaffold(
            body: WebView(initialUrl: T2Url.resourceMenu.value),
          ),
        ),
      );
}
