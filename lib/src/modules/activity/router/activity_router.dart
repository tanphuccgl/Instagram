import 'package:auto_route/auto_route.dart';
import 'package:instagram/src/modules/activity/pages/activity_page.dart';
import 'package:instagram/src/modules/activity/router/activity_wrapper_router.dart';
import 'package:instagram/src/modules/dashboard/router/dashboard_router.dart';

class ActivityRouters {}

class ActivityCoordinator {
  static const autoRoute = AutoRoute(
      path: DashboardTaps.favoritesTab,
      page: ActivityWrapperPage,
      name: 'ActivityTab',
      children: [
        AutoRoute(path: "", page: ActivityPage, name: "ActivityRoute"),
        RedirectRoute(path: '*', redirectTo: ''),
      ]);
}
