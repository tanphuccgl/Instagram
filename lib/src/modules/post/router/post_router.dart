import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:instagram/src/config/routes/auto_route.gr.dart';
import 'package:instagram/src/modules/post/pages/new_post_page.dart';
import 'package:instagram/src/modules/post/router/post_wrapper_router.dart';

class PostRouters {}

class PostCoordinator {
  static const autoRoute = AutoRoute(
      path: "new_post",
      page: PostWrapperPage,
      name: 'PostWrapperRoute',
      children: [
        AutoRoute(path: "", page: NewPostPage, name: "NewPostRoute"),
        RedirectRoute(path: '*', redirectTo: ''),
      ]);

  static void showNewPost(BuildContext context) =>
      context.router.push(const PostWrapperRoute());
}
