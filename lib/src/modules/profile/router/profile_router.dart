import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:instagram/src/modules/dashboard/router/dashboard_router.dart';
import 'package:instagram/src/modules/profile/pages/comment_page.dart';
import 'package:instagram/src/modules/profile/pages/follow_page.dart';
import 'package:instagram/src/modules/profile/pages/post_profile_page.dart';
import 'package:instagram/src/modules/profile/pages/profile_page.dart';
import 'package:instagram/src/modules/profile/router/profile_wrapper_router.dart';

class ProfileRouters {
  static const String post = 'post';
  static const String follow = 'follow';
  static const String comment = 'comment';
}

class ProfileCoordinator {
  static const autoRoute = AutoRoute(
      path: DashboardTaps.profileTab,
      page: ProfileWrapperPage,
      initial: true,
      name: 'ProfileTab',
      children: [
        AutoRoute(path: "", page: ProfilePage, name: "ProfileRoute"),
        AutoRoute(
            path: ProfileRouters.post,
            page: PostProfilePage,
            name: "PostProfileRoute"),
        AutoRoute(
            path: ProfileRouters.comment,
            page: CommentPage,
            name: "CommentRoute"),
        AutoRoute(
            path: ProfileRouters.follow, page: FollowPage, name: "FollowRoute"),
        RedirectRoute(path: '*', redirectTo: ''),
      ]);

  static void showPostProfilePage(BuildContext context,
          {bool isOtherUser = false}) =>
      context.router.pushWidget(PostProfilePage(isOtherUser: isOtherUser));
  static void showCommentPage(BuildContext context, String idPost) =>
      context.router.pushWidget(CommentPage(idPost: idPost));

  static void showFollow(BuildContext context, int? initialIndex) {
    context.router.pushWidget(FollowPage(
      initialIndex: initialIndex ?? 0,
    ));
  }
}
