part of '../route.dart';

const coursesBranch = TypedStatefulShellBranch<CoursesBranch>(routes: [
  TypedGoRoute<CoursesRoute>(
    path: '/courses',
    routes: [TypedGoRoute<CourseRoute>(path: ':id')],
  ),
]);

class CoursesBranch extends StatefulShellBranchData {
  const CoursesBranch();

  static final $initialLocation =
      const CoursesRoute(isTimetable: true).location;
}
