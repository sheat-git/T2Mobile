import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:t2mobile/views/features/courses/course.dart';

class CourseRoute extends GoRouteData {
  final int id;

  CourseRoute(this.id);

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      MaterialPage(child: CoursePage(id: id));
}
