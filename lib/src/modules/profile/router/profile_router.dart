import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:instagram/src/config/routes/auto_route.gr.dart';
import 'package:instagram/src/modules/dashboard/router/dashboard_router.dart';
import 'package:instagram/src/modules/profile/pages/post_profile_page.dart';
import 'package:instagram/src/modules/profile/pages/profile_page.dart';
import 'package:instagram/src/modules/profile/router/profile_wrapper_router.dart';

class ProfileRouters {}

class ProfileCoordinator {
  static const autoRoute = AutoRoute(
      path: DashboardTaps.profileTab,
      page: ProfileWrapperPage,
      initial: true,
      name: 'ProfileTab',
      children: [
        AutoRoute(path: "", page: ProfilePage, name: "ProfileRoute"),
        AutoRoute(path: "", page: PostProfilePage, name: "PostProfileRoute"),
        RedirectRoute(path: '*', redirectTo: ''),
      ]);
  static void showPostProfilePage(BuildContext context) =>
      context.router.push(const PostProfileRoute());
}
