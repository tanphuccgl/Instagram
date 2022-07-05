import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:instagram/src/config/routes/auto_route.gr.dart';
import 'package:instagram/src/modules/dashboard/router/dashboard_router.dart';
import 'package:instagram/src/modules/search/pages/detail_search_page.dart';
import 'package:instagram/src/modules/search/pages/search_page.dart';
import 'package:instagram/src/modules/search/router/search_wrapper_router.dart';

class SearchRouters {
  static const String detailSearch = 'detail_search';
}

class SearchCoordinator {
  static const autoRoute = AutoRoute(
      path: DashboardTaps.searchTab,
      page: SearchWrapperPage,
      name: 'SearchTab',
      children: [
        AutoRoute(path: "", page: SearchPage, name: "SearchRoute"),
        AutoRoute(
            path: SearchRouters.detailSearch,
            page: DetailSearchPage,
            name: "DetailSearchRoute"),
        RedirectRoute(path: '*', redirectTo: ''),
      ]);

  static void showDetailSearch(BuildContext context) =>
      context.router.push(const DetailSearchRoute());
}
