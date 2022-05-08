import 'package:auto_route/auto_route.dart';
import 'package:instagram/src/modules/dashboard/router/dashboard_router.dart';
import 'package:instagram/src/modules/home/pages/home_page.dart';
import 'package:instagram/src/modules/home/router/home_wrapper_router.dart';

class HomeRouters {
  static const String viewAll = 'view_all';
}

class HomeCoordinator {
  static const autoRoute = AutoRoute(
      path: DashboardTaps.homeTab,
      page: HomeWrapperPage,
      name: 'HomeTab',
      children: [
        AutoRoute(path: "", page: HomePage, name: "HomeRoute"),
        RedirectRoute(path: '*', redirectTo: ''),
      ]);
}
