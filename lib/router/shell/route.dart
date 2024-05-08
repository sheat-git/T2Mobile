import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:t2mobile/providers/navigation_state.dart';
import 'package:t2mobile/providers/settings.dart';
import 'package:t2mobile/router/routes/about/license.dart';
import 'package:t2mobile/router/routes/assignments/assignments.dart';
import 'package:t2mobile/router/routes/courses/course.dart';
import 'package:t2mobile/router/routes/courses/courses.dart';
import 'package:t2mobile/router/routes/notifications/notifications.dart';
import 'package:t2mobile/router/routes/settings/account.dart';
import 'package:t2mobile/router/routes/settings/auth_info.dart';
import 'package:t2mobile/router/routes/settings/settings.dart';
import 'package:t2mobile/router/routes/web.dart';
import 'package:t2mobile/views/components/navigation_bar.dart';
import 'package:t2mobile/views/components/web_bottom_bar.dart';

part 'branches/assignments.dart';
part 'branches/courses.dart';
part 'branches/notifications.dart';
part 'branches/settings.dart';
part 'branches/web.dart';

part 'route.g.dart';

const branches = [
  coursesBranch,
  assignmentsBranch,
  notificationsBranch,
  webBranch,
  settingsBranch,
];

@TypedStatefulShellRoute<T2StatefulShellRoute>(branches: branches)
class T2StatefulShellRoute extends StatefulShellRouteData {
  const T2StatefulShellRoute();

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) =>
      Scaffold(
        body: navigationShell,
        bottomNavigationBar: HookConsumer(
          builder: (context, ref, child) {
            useEffect(() {
              ref
                  .read(navigationStateProvider.notifier)
                  .setGoBranch(navigationShell.goBranch);
              return null;
            }, const []);

            final controller = useAnimationController(
              initialValue: 1,
              duration: const Duration(milliseconds: 200),
            );
            useAnimation(controller);
            ref.listen(
              navigationStateProvider.select((value) => value.showBar),
              (_, next) {
                if (next) {
                  controller.forward();
                } else {
                  controller.reverse();
                }
              },
            );

            final showWebBottomBar = ref.watch(navigationStateProvider
                .select((value) => value.branch == BranchType.web));

            const webBottomBarHeight = 40.0;
            const navigationBarHeight = 80.0;
            final height = (showWebBottomBar ? webBottomBarHeight : 0) +
                navigationBarHeight +
                MediaQuery.viewPaddingOf(context).bottom;

            final canHideBottomBar = navigationShell.currentIndex ==
                    BranchType.web.index &&
                ref.watch(
                    settingsProvider.select((value) => value.hideWebBottomBar));

            return SizedOverflowBox(
              size: Size.fromHeight(
                height * (canHideBottomBar ? controller.value : 1),
              ),
              alignment: Alignment.topCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (showWebBottomBar)
                    const SizedOverflowBox(
                      size: Size.fromHeight(webBottomBarHeight),
                      alignment: Alignment.center,
                      child: WebBottomBar(),
                    ),
                  child!,
                ],
              ),
            );
          },
          child: const T2NavigationBar(),
        ),
      );
}
