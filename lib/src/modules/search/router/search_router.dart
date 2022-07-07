import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:instagram/src/config/routes/auto_route.gr.dart';
import 'package:instagram/src/modules/dashboard/router/dashboard_router.dart';
import 'package:instagram/src/modules/search/pages/detail_search_page.dart';
import 'package:instagram/src/modules/search/pages/follow_user_page.dart';
import 'package:instagram/src/modules/search/pages/profile_user_page.dart';
import 'package:instagram/src/modules/search/pages/search_page.dart';
import 'package:instagram/src/modules/search/router/search_wrapper_router.dart';

class SearchRouters {
  static const String detailSearch = 'detail_search';
  static const String profileUser = 'profile_user';
  static const String follow = 'follow';
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
        AutoRoute(
            path: SearchRouters.profileUser,
            page: ProfileUserPage,
            name: "ProfileUserRoute"),
        AutoRoute(
            path: SearchRouters.follow,
            page: FollowUserPage,
            name: "FollowUserRoute"),
        RedirectRoute(path: '*', redirectTo: ''),
      ]);

  static void showDetailSearch(BuildContext context) =>
      context.router.push(const DetailSearchRoute());

  static void showProfileUser(BuildContext context) =>
      context.router.push(const ProfileUserRoute());
  static void showFollow(BuildContext context, int? initialIndex) {
    context.router.pushWidget(FollowUserPage(
      initialIndex: initialIndex ?? 0,
    ));
  }
}
