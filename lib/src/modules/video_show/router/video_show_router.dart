import 'package:auto_route/auto_route.dart';
import 'package:instagram/src/modules/dashboard/router/dashboard_router.dart';
import 'package:instagram/src/modules/video_show/pages/video_show_page.dart';
import 'package:instagram/src/modules/video_show/router/video_show_wrapper_router.dart';

class VideoShowRouters {}

class VideoShowCoordinator {
  static const autoRoute = AutoRoute(
      path: DashboardTaps.videoShowTab,
      page: VideoShowWrapperPage,
      name: 'VideoShowTab',
      children: [
        AutoRoute(path: "", page: VideoShowPage, name: "VideoShowRoute"),
        RedirectRoute(path: '*', redirectTo: ''),
      ]);
}
