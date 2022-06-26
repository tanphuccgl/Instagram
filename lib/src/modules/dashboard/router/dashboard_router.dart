import 'package:auto_route/auto_route.dart';

import 'package:instagram/src/config/routes/page_routers.dart';
import 'package:instagram/src/modules/activity/router/activity_router.dart';
import 'package:instagram/src/modules/dashboard/pages/dashboard_page.dart';
import 'package:instagram/src/modules/dashboard/router/dashboard_wrapper_router.dart';
import 'package:instagram/src/modules/home/router/home_router.dart';
import 'package:instagram/src/modules/profile/router/profile_router.dart';
import 'package:instagram/src/modules/search/router/search_router.dart';
import 'package:instagram/src/modules/video_show/router/video_show_router.dart';

class DashboardTaps {
  static const String homeTab = 'home';
  static const String searchTab = 'search';
  static const String videoShowTab = 'video-show';
  static const String favoritesTab = 'favorites';
  static const String profileTab = 'profile';
}

class DashboardRouters {}

class DashboardCoordinator {
  static const autoRoute = AutoRoute(
    path: XRoutes.dashboard,
    name: "DashboardWrapperRoute",
    page: DashboardWrapperPage,
    children: [
      AutoRoute(
          name: "DashboardRoute",
          page: DashboardPage,
          initial: true,
          children: [
            HomeCoordinator.autoRoute,
            SearchCoordinator.autoRoute,
            VideoShowCoordinator.autoRoute,
            ActivityCoordinator.autoRoute,
            ProfileCoordinator.autoRoute,
            RedirectRoute(path: '*', redirectTo: ''),
          ]),
      RedirectRoute(path: '*', redirectTo: ''),
    ],
  );
}
