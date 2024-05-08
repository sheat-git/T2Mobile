import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:t2mobile/views/features/courses/courses.dart';
import 'package:t2mobile/views/features/courses/timetable.dart';

class CoursesRoute extends GoRouteData {
  final bool isTimetable;

  const CoursesRoute({
    this.isTimetable = false,
  });

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      MaterialPage(
        child: isTimetable ? const TimetablePage() : const CoursesPage(),
      );
}
