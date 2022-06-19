import 'package:auto_route/auto_route.dart';
import 'package:instagram/src/config/routes/page_routers.dart';
import 'package:instagram/src/modules/chat/router/chat_router.dart';
import 'package:instagram/src/modules/dashboard/router/dashboard_router.dart';
import 'package:instagram/src/modules/loading/pages/loading_page.dart';
import 'package:instagram/src/modules/onboarding/pages/onboarding_page.dart';
import 'package:instagram/src/modules/sign/router/sign_router.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    SignCoordinator.autoRoute,
    DashboardCoordinator.autoRoute,
    ChatCoordinator.autoRoute,

    AutoRoute(
      path: XRoutes.onboard,
      page: OnboardingPage,
    ),
    AutoRoute(
      path: XRoutes.loading,
      page: LoadingPage,
//      initial: true,
    ),

    // redirect all other paths
    RedirectRoute(path: '*', redirectTo: ''),
  ],
)
class $XRouter {}
