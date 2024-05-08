import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:t2mobile/router/shell/route.dart';

part 'router.g.dart';

@riverpod
GoRouter goRouter(GoRouterRef _) => GoRouter(
      initialLocation: CoursesBranch.$initialLocation,
      routes: $appRoutes,
    );
