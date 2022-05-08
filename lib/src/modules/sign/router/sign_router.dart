import 'package:auto_route/auto_route.dart';

import 'package:flutter/cupertino.dart';
import 'package:instagram/src/config/routes/auto_route.gr.dart';
import 'package:instagram/src/config/routes/page_routers.dart';
import 'package:instagram/src/modules/sign/login/pages/login_page.dart';
import 'package:instagram/src/modules/sign/router/sign_wrapper_router.dart';
import 'package:instagram/src/modules/sign/signup/pages/signup_page.dart';

class SignRouters {
  static const String login = 'login';
  static const String signUp = 'register';
}

class SignCoordinator {
  static const autoRoute = AutoRoute(
    path: XRoutes.sign,
    name: "SignRouter",
    page: SignWrapperPage,
    children: [
      AutoRoute(path: SignRouters.login, page: LoginPage, initial: true),
      AutoRoute(
        path: SignRouters.signUp,
        page: SignUpPage,
      ),
      RedirectRoute(path: '*', redirectTo: ''),
    ],
  );

  static showLogin(BuildContext context) {
    context.router.pushNamed(SignRouters.login);
  }

  static showSignUp(BuildContext context) {
    context.router.replace(const SignRouter());
  }
}
