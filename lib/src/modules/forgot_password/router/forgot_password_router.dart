import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:instagram/src/config/routes/auto_route.gr.dart';
import 'package:instagram/src/config/routes/page_routers.dart';
import 'package:instagram/src/modules/forgot_password/pages/access_your_account_page.dart';
import 'package:instagram/src/modules/forgot_password/pages/create_new_password_page.dart';
import 'package:instagram/src/modules/forgot_password/pages/forgot_by_email/input_token_page.dart';
import 'package:instagram/src/modules/forgot_password/pages/login_help_page.dart';
import 'package:instagram/src/modules/forgot_password/router/forgot_password_wrapper_router.dart';

class ForgotPasswordRouters {
  static const String loginHelp = 'login_help';
  static const String accessYourAccount = 'access_your_account';
  static const String inputToken = 'input_token';
  static const String createNewPassword = 'create_new_password';
}

class ForgotPasswordCoordinator {
  static const autoRoute = AutoRoute(
    path: XRoutes.dashboard,
    name: "ForgotPasswordWrapperRoute",
    page: ForgotPasswordWrapperPage,
    children: [
      AutoRoute(
          name: "ForgotPasswordRoute", page: ForgotPasswordPage, path: ""),
      AutoRoute(
          name: "AccessYourAccountRoute",
          page: AccessYourAccountPage,
          path: ForgotPasswordRouters.accessYourAccount),
      AutoRoute(
          name: "InputTokenRoute",
          page: InputTokenPage,
          path: ForgotPasswordRouters.inputToken),
      AutoRoute(
          name: "CreateNewPasswordRoute",
          page: CreateNewPasswordPage,
          path: ForgotPasswordRouters.createNewPassword),
      RedirectRoute(path: '*', redirectTo: ''),
    ],
  );
  static void showAccessYourAccount(BuildContext context) {
    context.router.push(const AccessYourAccountRoute());
  }

  static void showInputToken(BuildContext context) {
    context.router.push(const InputTokenRoute());
  }

  static void showCreateNewPassword(BuildContext context) {
    context.router.push(const CreateNewPasswordRoute());
  }
}
