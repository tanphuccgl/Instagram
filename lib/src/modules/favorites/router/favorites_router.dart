import 'package:auto_route/auto_route.dart';
import 'package:instagram/src/modules/dashboard/router/dashboard_router.dart';
import 'package:instagram/src/modules/favorites/pages/favorites_page.dart';
import 'package:instagram/src/modules/favorites/router/favorites_wrapper_router.dart';

class FavoritesRouters {}

class FavoritesCoordinator {
  static const autoRoute = AutoRoute(
      path: DashboardTaps.favoritesTab,
      page: FavoritesWrapperPage,
      name: 'FavoritesTab',
      children: [
        AutoRoute(path: "", page: FavoritesPage, name: "FavoritesRoute"),
        RedirectRoute(path: '*', redirectTo: ''),
      ]);
}
