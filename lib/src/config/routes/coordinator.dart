import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:instagram/src/config/routes/auto_route.gr.dart';

class XCoordinator {
  static XRouter get rootRouter => GetIt.I<XRouter>();

  static BuildContext get context =>
      rootRouter.navigatorKey.currentState!.context;

  static pop(BuildContext context) => context.router.pop();
  static showChats(BuildContext context) {
    context.router.push(const ChatWrapperRoute());
  }
}
