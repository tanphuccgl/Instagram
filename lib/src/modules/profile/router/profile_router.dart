import 'package:auto_route/auto_route.dart';
import 'package:instagram/src/modules/dashboard/router/dashboard_router.dart';
import 'package:instagram/src/modules/profile/pages/profile_page.dart';
import 'package:instagram/src/modules/profile/router/profile_wrapper_router.dart';

class ProfileRouters {}

class ProfileCoordinator {
  static const autoRoute = AutoRoute(
      path: DashboardTaps.profileTab,
      page: ProfileWrapperPage,
      name: 'ProfileTab',
      children: [
        AutoRoute(path: "", page: ProfilePage, name: "ProfileRoute"),
        RedirectRoute(path: '*', redirectTo: ''),
      ]);
}
