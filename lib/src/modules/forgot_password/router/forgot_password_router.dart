import 'package:auto_route/auto_route.dart';
import 'package:instagram/src/config/routes/page_routers.dart';
import 'package:instagram/src/modules/forgot_password/pages/access_your_account_page.dart';
import 'package:instagram/src/modules/forgot_password/pages/login_help_page.dart';
import 'package:instagram/src/modules/forgot_password/router/forgot_password_wrapper_router.dart';

class ForgotPasswordRouters {
  static const String loginHelp = 'login_help';
  static const String accessYourAccount = 'access_your_account';
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
      RedirectRoute(path: '*', redirectTo: ''),
    ],
  );
}
