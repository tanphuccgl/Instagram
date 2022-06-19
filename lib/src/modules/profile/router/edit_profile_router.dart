import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:instagram/src/config/routes/auto_route.gr.dart';
import 'package:instagram/src/modules/profile/pages/change_infomation_page.dart';
import 'package:instagram/src/modules/profile/pages/edit_profile_page.dart';
import 'package:instagram/src/modules/profile/router/edit_profile_wrapper_router.dart';

class EditProfileRouters {}

class EditProfileCoordinator {
  static const autoRoute = AutoRoute(
      path: "edit_profile",
      page: EditProfileWrapperPage,
      name: 'EditProfileWrapperRoute',
      children: [
        AutoRoute(path: "", page: EditProfilePage, name: "EditProfileRoute"),
        AutoRoute(
            path: "",
            page: ChangeInformationPage,
            name: "ChangeInformationRoute"),
        RedirectRoute(path: '*', redirectTo: ''),
      ]);

  static void showEditInformationProfile(BuildContext context) =>
      context.router.push(const ChangeInformationRoute());
}
