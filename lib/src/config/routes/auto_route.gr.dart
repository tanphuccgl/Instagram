// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i20;
import 'package:flutter/material.dart' as _i21;

import '../../modules/activity/pages/activity_page.dart' as _i17;
import '../../modules/activity/router/activity_wrapper_router.dart' as _i12;
import '../../modules/chat/chats.dart' as _i19;
import '../../modules/chat/router/chat_wrapper_router.dart' as _i3;
import '../../modules/dashboard/pages/dashboard_page.dart' as _i8;
import '../../modules/dashboard/router/dashboard_wrapper_router.dart' as _i2;
import '../../modules/home/pages/home_page.dart' as _i14;
import '../../modules/home/router/home_wrapper_router.dart' as _i9;
import '../../modules/loading/pages/loading_page.dart' as _i5;
import '../../modules/onboarding/pages/onboarding_page.dart' as _i4;
import '../../modules/profile/pages/profile_page.dart' as _i18;
import '../../modules/profile/router/profile_wrapper_router.dart' as _i13;
import '../../modules/search/pages/search_page.dart' as _i15;
import '../../modules/search/router/search_wrapper_router.dart' as _i10;
import '../../modules/sign/login/pages/login_page.dart' as _i6;
import '../../modules/sign/router/sign_wrapper_router.dart' as _i1;
import '../../modules/sign/signup/pages/signup_page.dart' as _i7;
import '../../modules/video_show/pages/video_show_page.dart' as _i16;
import '../../modules/video_show/router/video_show_wrapper_router.dart' as _i11;

class XRouter extends _i20.RootStackRouter {
  XRouter([_i21.GlobalKey<_i21.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i20.PageFactory> pagesMap = {
    SignRouter.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SignWrapperPage());
    },
    DashboardWrapperRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.DashboardWrapperPage());
    },
    ChatWrapperRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.ChatWrapperPage());
    },
    OnboardingRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.OnboardingPage());
    },
    LoadingRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.LoadingPage());
    },
    LoginRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.LoginPage());
    },
    SignUpRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.SignUpPage());
    },
    DashboardRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.DashboardPage());
    },
    HomeTab.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.HomeWrapperPage());
    },
    SearchTab.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.SearchWrapperPage());
    },
    VideoShowTab.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.VideoShowWrapperPage());
    },
    ActivityTab.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.ActivityWrapperPage());
    },
    ProfileTab.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.ProfileWrapperPage());
    },
    HomeRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.HomePage());
    },
    SearchRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i15.SearchPage());
    },
    VideoShowRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i16.VideoShowPage());
    },
    ActivityRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i17.ActivityPage());
    },
    ProfileRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i18.ProfilePage());
    },
    ChatRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i19.Chats());
    }
  };

  @override
  List<_i20.RouteConfig> get routes => [
        _i20.RouteConfig('/#redirect',
            path: '/', redirectTo: '/dashboard', fullMatch: true),
        _i20.RouteConfig(SignRouter.name, path: '/sign', children: [
          _i20.RouteConfig('#redirect',
              path: '',
              parent: SignRouter.name,
              redirectTo: 'login',
              fullMatch: true),
          _i20.RouteConfig(LoginRoute.name,
              path: 'login', parent: SignRouter.name),
          _i20.RouteConfig(SignUpRoute.name,
              path: 'register', parent: SignRouter.name),
          _i20.RouteConfig('*#redirect',
              path: '*',
              parent: SignRouter.name,
              redirectTo: '',
              fullMatch: true)
        ]),
        _i20.RouteConfig(DashboardWrapperRoute.name,
            path: '/dashboard',
            children: [
              _i20.RouteConfig(DashboardRoute.name,
                  path: '',
                  parent: DashboardWrapperRoute.name,
                  children: [
                    _i20.RouteConfig('#redirect',
                        path: '',
                        parent: DashboardRoute.name,
                        redirectTo: 'profile',
                        fullMatch: true),
                    _i20.RouteConfig(HomeTab.name,
                        path: 'home',
                        parent: DashboardRoute.name,
                        children: [
                          _i20.RouteConfig(HomeRoute.name,
                              path: '', parent: HomeTab.name),
                          _i20.RouteConfig('*#redirect',
                              path: '*',
                              parent: HomeTab.name,
                              redirectTo: '',
                              fullMatch: true)
                        ]),
                    _i20.RouteConfig(SearchTab.name,
                        path: 'search',
                        parent: DashboardRoute.name,
                        children: [
                          _i20.RouteConfig(SearchRoute.name,
                              path: '', parent: SearchTab.name),
                          _i20.RouteConfig('*#redirect',
                              path: '*',
                              parent: SearchTab.name,
                              redirectTo: '',
                              fullMatch: true)
                        ]),
                    _i20.RouteConfig(VideoShowTab.name,
                        path: 'video-show',
                        parent: DashboardRoute.name,
                        children: [
                          _i20.RouteConfig(VideoShowRoute.name,
                              path: '', parent: VideoShowTab.name),
                          _i20.RouteConfig('*#redirect',
                              path: '*',
                              parent: VideoShowTab.name,
                              redirectTo: '',
                              fullMatch: true)
                        ]),
                    _i20.RouteConfig(ActivityTab.name,
                        path: 'favorites',
                        parent: DashboardRoute.name,
                        children: [
                          _i20.RouteConfig(ActivityRoute.name,
                              path: '', parent: ActivityTab.name),
                          _i20.RouteConfig('*#redirect',
                              path: '*',
                              parent: ActivityTab.name,
                              redirectTo: '',
                              fullMatch: true)
                        ]),
                    _i20.RouteConfig(ProfileTab.name,
                        path: 'profile',
                        parent: DashboardRoute.name,
                        children: [
                          _i20.RouteConfig(ProfileRoute.name,
                              path: '', parent: ProfileTab.name),
                          _i20.RouteConfig('*#redirect',
                              path: '*',
                              parent: ProfileTab.name,
                              redirectTo: '',
                              fullMatch: true)
                        ]),
                    _i20.RouteConfig('*#redirect',
                        path: '*',
                        parent: DashboardRoute.name,
                        redirectTo: '',
                        fullMatch: true)
                  ]),
              _i20.RouteConfig('*#redirect',
                  path: '*',
                  parent: DashboardWrapperRoute.name,
                  redirectTo: '',
                  fullMatch: true)
            ]),
        _i20.RouteConfig(ChatWrapperRoute.name, path: 'chat', children: [
          _i20.RouteConfig(ChatRoute.name,
              path: '', parent: ChatWrapperRoute.name),
          _i20.RouteConfig('*#redirect',
              path: '*',
              parent: ChatWrapperRoute.name,
              redirectTo: '',
              fullMatch: true)
        ]),
        _i20.RouteConfig(OnboardingRoute.name, path: '/onboard'),
        _i20.RouteConfig(LoadingRoute.name, path: ''),
        _i20.RouteConfig('*#redirect',
            path: '*', redirectTo: '', fullMatch: true)
      ];
}

/// generated route for
/// [_i1.SignWrapperPage]
class SignRouter extends _i20.PageRouteInfo<void> {
  const SignRouter({List<_i20.PageRouteInfo>? children})
      : super(SignRouter.name, path: '/sign', initialChildren: children);

  static const String name = 'SignRouter';
}

/// generated route for
/// [_i2.DashboardWrapperPage]
class DashboardWrapperRoute extends _i20.PageRouteInfo<void> {
  const DashboardWrapperRoute({List<_i20.PageRouteInfo>? children})
      : super(DashboardWrapperRoute.name,
            path: '/dashboard', initialChildren: children);

  static const String name = 'DashboardWrapperRoute';
}

/// generated route for
/// [_i3.ChatWrapperPage]
class ChatWrapperRoute extends _i20.PageRouteInfo<void> {
  const ChatWrapperRoute({List<_i20.PageRouteInfo>? children})
      : super(ChatWrapperRoute.name, path: 'chat', initialChildren: children);

  static const String name = 'ChatWrapperRoute';
}

/// generated route for
/// [_i4.OnboardingPage]
class OnboardingRoute extends _i20.PageRouteInfo<void> {
  const OnboardingRoute() : super(OnboardingRoute.name, path: '/onboard');

  static const String name = 'OnboardingRoute';
}

/// generated route for
/// [_i5.LoadingPage]
class LoadingRoute extends _i20.PageRouteInfo<void> {
  const LoadingRoute() : super(LoadingRoute.name, path: '');

  static const String name = 'LoadingRoute';
}

/// generated route for
/// [_i6.LoginPage]
class LoginRoute extends _i20.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: 'login');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i7.SignUpPage]
class SignUpRoute extends _i20.PageRouteInfo<void> {
  const SignUpRoute() : super(SignUpRoute.name, path: 'register');

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i8.DashboardPage]
class DashboardRoute extends _i20.PageRouteInfo<void> {
  const DashboardRoute({List<_i20.PageRouteInfo>? children})
      : super(DashboardRoute.name, path: '', initialChildren: children);

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i9.HomeWrapperPage]
class HomeTab extends _i20.PageRouteInfo<void> {
  const HomeTab({List<_i20.PageRouteInfo>? children})
      : super(HomeTab.name, path: 'home', initialChildren: children);

  static const String name = 'HomeTab';
}

/// generated route for
/// [_i10.SearchWrapperPage]
class SearchTab extends _i20.PageRouteInfo<void> {
  const SearchTab({List<_i20.PageRouteInfo>? children})
      : super(SearchTab.name, path: 'search', initialChildren: children);

  static const String name = 'SearchTab';
}

/// generated route for
/// [_i11.VideoShowWrapperPage]
class VideoShowTab extends _i20.PageRouteInfo<void> {
  const VideoShowTab({List<_i20.PageRouteInfo>? children})
      : super(VideoShowTab.name, path: 'video-show', initialChildren: children);

  static const String name = 'VideoShowTab';
}

/// generated route for
/// [_i12.ActivityWrapperPage]
class ActivityTab extends _i20.PageRouteInfo<void> {
  const ActivityTab({List<_i20.PageRouteInfo>? children})
      : super(ActivityTab.name, path: 'favorites', initialChildren: children);

  static const String name = 'ActivityTab';
}

/// generated route for
/// [_i13.ProfileWrapperPage]
class ProfileTab extends _i20.PageRouteInfo<void> {
  const ProfileTab({List<_i20.PageRouteInfo>? children})
      : super(ProfileTab.name, path: 'profile', initialChildren: children);

  static const String name = 'ProfileTab';
}

/// generated route for
/// [_i14.HomePage]
class HomeRoute extends _i20.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i15.SearchPage]
class SearchRoute extends _i20.PageRouteInfo<void> {
  const SearchRoute() : super(SearchRoute.name, path: '');

  static const String name = 'SearchRoute';
}

/// generated route for
/// [_i16.VideoShowPage]
class VideoShowRoute extends _i20.PageRouteInfo<void> {
  const VideoShowRoute() : super(VideoShowRoute.name, path: '');

  static const String name = 'VideoShowRoute';
}

/// generated route for
/// [_i17.ActivityPage]
class ActivityRoute extends _i20.PageRouteInfo<void> {
  const ActivityRoute() : super(ActivityRoute.name, path: '');

  static const String name = 'ActivityRoute';
}

/// generated route for
/// [_i18.ProfilePage]
class ProfileRoute extends _i20.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: '');

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i19.Chats]
class ChatRoute extends _i20.PageRouteInfo<void> {
  const ChatRoute() : super(ChatRoute.name, path: '');

  static const String name = 'ChatRoute';
}
