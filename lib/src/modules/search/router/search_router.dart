import 'package:auto_route/auto_route.dart';
import 'package:instagram/src/modules/dashboard/router/dashboard_router.dart';
import 'package:instagram/src/modules/search/pages/search_page.dart';
import 'package:instagram/src/modules/search/router/search_wrapper_router.dart';

class SearchRouters {
  static const String viewAll = 'view_all';
}

class SearchCoordinator {
  static const autoRoute = AutoRoute(
      path: DashboardTaps.searchTab,
      page: SearchWrapperPage,
      name: 'SearchTab',
      children: [
        AutoRoute(path: "", page: SearchPage, name: "SearchRoute"),
        RedirectRoute(path: '*', redirectTo: ''),
      ]);
}
