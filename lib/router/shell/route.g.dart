// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $t2StatefulShellRoute,
    ];

RouteBase get $t2StatefulShellRoute => StatefulShellRouteData.$route(
      factory: $T2StatefulShellRouteExtension._fromState,
      branches: [
        StatefulShellBranchData.$branch(
          initialLocation: CoursesBranch.$initialLocation,
          routes: [
            GoRouteData.$route(
              path: '/courses',
              factory: $CoursesRouteExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: ':id',
                  factory: $CourseRouteExtension._fromState,
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          initialLocation: AssignmentsBranch.$initialLocation,
          routes: [
            GoRouteData.$route(
              path: '/assignments',
              factory: $AssignmentsRouteExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          initialLocation: NotificationsBranch.$initialLocation,
          routes: [
            GoRouteData.$route(
              path: '/notifications',
              factory: $NotificationsRouteExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          initialLocation: WebBranch.$initialLocation,
          routes: [
            GoRouteData.$route(
              path: '/web',
              factory: $WebRouteExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          initialLocation: SettingsBranch.$initialLocation,
          routes: [
            GoRouteData.$route(
              path: '/settings',
              factory: $SettingsRouteExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: 'account',
                  factory: $AccountRouteExtension._fromState,
                ),
              ],
            ),
            GoRouteData.$route(
              path: '/about/license',
              factory: $LicenseRouteExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $T2StatefulShellRouteExtension on T2StatefulShellRoute {
  static T2StatefulShellRoute _fromState(GoRouterState state) =>
      const T2StatefulShellRoute();
}

extension $CoursesRouteExtension on CoursesRoute {
  static CoursesRoute _fromState(GoRouterState state) => CoursesRoute(
        isTimetable: _$convertMapValue(
                'is-timetable', state.uri.queryParameters, _$boolConverter) ??
            false,
      );

  String get location => GoRouteData.$location(
        '/courses',
        queryParams: {
          if (isTimetable != false) 'is-timetable': isTimetable.toString(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $CourseRouteExtension on CourseRoute {
  static CourseRoute _fromState(GoRouterState state) => CourseRoute(
        int.parse(state.pathParameters['id']!),
      );

  String get location => GoRouteData.$location(
        '/courses/${Uri.encodeComponent(id.toString())}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AssignmentsRouteExtension on AssignmentsRoute {
  static AssignmentsRoute _fromState(GoRouterState state) =>
      const AssignmentsRoute();

  String get location => GoRouteData.$location(
        '/assignments',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $NotificationsRouteExtension on NotificationsRoute {
  static NotificationsRoute _fromState(GoRouterState state) =>
      const NotificationsRoute();

  String get location => GoRouteData.$location(
        '/notifications',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $WebRouteExtension on WebRoute {
  static WebRoute _fromState(GoRouterState state) => const WebRoute();

  String get location => GoRouteData.$location(
        '/web',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SettingsRouteExtension on SettingsRoute {
  static SettingsRoute _fromState(GoRouterState state) => const SettingsRoute();

  String get location => GoRouteData.$location(
        '/settings',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AccountRouteExtension on AccountRoute {
  static AccountRoute _fromState(GoRouterState state) => const AccountRoute();

  String get location => GoRouteData.$location(
        '/settings/account',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $LicenseRouteExtension on LicenseRoute {
  static LicenseRoute _fromState(GoRouterState state) => const LicenseRoute();

  String get location => GoRouteData.$location(
        '/about/license',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

T? _$convertMapValue<T>(
  String key,
  Map<String, String> map,
  T Function(String) converter,
) {
  final value = map[key];
  return value == null ? null : converter(value);
}

bool _$boolConverter(String value) {
  switch (value) {
    case 'true':
      return true;
    case 'false':
      return false;
    default:
      throw UnsupportedError('Cannot convert "$value" into a bool.');
  }
}
