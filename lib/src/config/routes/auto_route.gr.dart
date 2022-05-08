// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i18;
import 'package:flutter/material.dart' as _i19;

import '../../modules/dashboard/pages/dashboard_page.dart' as _i7;
import '../../modules/dashboard/router/dashboard_wrapper_router.dart' as _i2;
import '../../modules/favorites/pages/favorites_page.dart' as _i16;
import '../../modules/favorites/router/favorites_wrapper_router.dart' as _i11;
import '../../modules/home/pages/home_page.dart' as _i13;
import '../../modules/home/router/home_wrapper_router.dart' as _i8;
import '../../modules/loading/pages/loading_page.dart' as _i4;
import '../../modules/onboarding/pages/onboarding_page.dart' as _i3;
import '../../modules/profile/pages/profile_page.dart' as _i17;
import '../../modules/profile/router/profile_wrapper_router.dart' as _i12;
import '../../modules/search/pages/search_page.dart' as _i14;
import '../../modules/search/router/search_wrapper_router.dart' as _i9;
import '../../modules/sign/login/pages/login_page.dart' as _i5;
import '../../modules/sign/router/sign_wrapper_router.dart' as _i1;
import '../../modules/sign/signup/pages/signup_page.dart' as _i6;
import '../../modules/video_show/pages/video_show_page.dart' as _i15;
import '../../modules/video_show/router/video_show_wrapper_router.dart' as _i10;

class XRouter extends _i18.RootStackRouter {
  XRouter([_i19.GlobalKey<_i19.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i18.PageFactory> pagesMap = {
    SignRouter.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SignWrapperPage());
    },
    DashboardWrapperRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.DashboardWrapperPage());
    },
    OnboardingRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.OnboardingPage());
    },
    LoadingRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.LoadingPage());
    },
    LoginRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.LoginPage());
    },
    SignUpRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.SignUpPage());
    },
    DashboardRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.DashboardPage());
    },
    HomeTab.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.HomeWrapperPage());
    },
    SearchTab.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.SearchWrapperPage());
    },
    VideoShowTab.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.VideoShowWrapperPage());
    },
    FavoritesTab.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.FavoritesWrapperPage());
    },
    ProfileTab.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.ProfileWrapperPage());
    },
    HomeRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.HomePage());
    },
    SearchRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.SearchPage());
    },
    VideoShowRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i15.VideoShowPage());
    },
    FavoritesRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i16.FavoritesPage());
    },
    ProfileRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i17.ProfilePage());
    }
  };

  @override
  List<_i18.RouteConfig> get routes => [
        _i18.RouteConfig('/#redirect',
            path: '/', redirectTo: '/dashboard', fullMatch: true),
        _i18.RouteConfig(SignRouter.name, path: '/sign', children: [
          _i18.RouteConfig('#redirect',
              path: '',
              parent: SignRouter.name,
              redirectTo: 'login',
              fullMatch: true),
          _i18.RouteConfig(LoginRoute.name,
              path: 'login', parent: SignRouter.name),
          _i18.RouteConfig(SignUpRoute.name,
              path: 'register', parent: SignRouter.name),
          _i18.RouteConfig('*#redirect',
              path: '*',
              parent: SignRouter.name,
              redirectTo: '',
              fullMatch: true)
        ]),
        _i18.RouteConfig(DashboardWrapperRoute.name,
            path: '/dashboard',
            children: [
              _i18.RouteConfig(DashboardRoute.name,
                  path: '',
                  parent: DashboardWrapperRoute.name,
                  children: [
                    _i18.RouteConfig('#redirect',
                        path: '',
                        parent: DashboardRoute.name,
                        redirectTo: 'profile',
                        fullMatch: true),
                    _i18.RouteConfig(HomeTab.name,
                        path: 'home',
                        parent: DashboardRoute.name,
                        children: [
                          _i18.RouteConfig(HomeRoute.name,
                              path: '', parent: HomeTab.name),
                          _i18.RouteConfig('*#redirect',
                              path: '*',
                              parent: HomeTab.name,
                              redirectTo: '',
                              fullMatch: true)
                        ]),
                    _i18.RouteConfig(SearchTab.name,
                        path: 'search',
                        parent: DashboardRoute.name,
                        children: [
                          _i18.RouteConfig(SearchRoute.name,
                              path: '', parent: SearchTab.name),
                          _i18.RouteConfig('*#redirect',
                              path: '*',
                              parent: SearchTab.name,
                              redirectTo: '',
                              fullMatch: true)
                        ]),
                    _i18.RouteConfig(VideoShowTab.name,
                        path: 'video-show',
                        parent: DashboardRoute.name,
                        children: [
                          _i18.RouteConfig(VideoShowRoute.name,
                              path: '', parent: VideoShowTab.name),
                          _i18.RouteConfig('*#redirect',
                              path: '*',
                              parent: VideoShowTab.name,
                              redirectTo: '',
                              fullMatch: true)
                        ]),
                    _i18.RouteConfig(FavoritesTab.name,
                        path: 'favorites',
                        parent: DashboardRoute.name,
                        children: [
                          _i18.RouteConfig(FavoritesRoute.name,
                              path: '', parent: FavoritesTab.name),
                          _i18.RouteConfig('*#redirect',
                              path: '*',
                              parent: FavoritesTab.name,
                              redirectTo: '',
                              fullMatch: true)
                        ]),
                    _i18.RouteConfig(ProfileTab.name,
                        path: 'profile',
                        parent: DashboardRoute.name,
                        children: [
                          _i18.RouteConfig(ProfileRoute.name,
                              path: '', parent: ProfileTab.name),
                          _i18.RouteConfig('*#redirect',
                              path: '*',
                              parent: ProfileTab.name,
                              redirectTo: '',
                              fullMatch: true)
                        ]),
                    _i18.RouteConfig('*#redirect',
                        path: '*',
                        parent: DashboardRoute.name,
                        redirectTo: '',
                        fullMatch: true)
                  ]),
              _i18.RouteConfig('*#redirect',
                  path: '*',
                  parent: DashboardWrapperRoute.name,
                  redirectTo: '',
                  fullMatch: true)
            ]),
        _i18.RouteConfig(OnboardingRoute.name, path: '/onboard'),
        _i18.RouteConfig(LoadingRoute.name, path: ''),
        _i18.RouteConfig(SignRouter.name, path: '/sign', children: [
          _i18.RouteConfig('#redirect',
              path: '',
              parent: SignRouter.name,
              redirectTo: 'login',
              fullMatch: true),
          _i18.RouteConfig(LoginRoute.name,
              path: 'login', parent: SignRouter.name),
          _i18.RouteConfig(SignUpRoute.name,
              path: 'register', parent: SignRouter.name),
          _i18.RouteConfig('*#redirect',
              path: '*',
              parent: SignRouter.name,
              redirectTo: '',
              fullMatch: true)
        ]),
        _i18.RouteConfig('*#redirect',
            path: '*', redirectTo: '', fullMatch: true)
      ];
}

/// generated route for
/// [_i1.SignWrapperPage]
class SignRouter extends _i18.PageRouteInfo<void> {
  const SignRouter({List<_i18.PageRouteInfo>? children})
      : super(SignRouter.name, path: '/sign', initialChildren: children);

  static const String name = 'SignRouter';
}

/// generated route for
/// [_i2.DashboardWrapperPage]
class DashboardWrapperRoute extends _i18.PageRouteInfo<void> {
  const DashboardWrapperRoute({List<_i18.PageRouteInfo>? children})
      : super(DashboardWrapperRoute.name,
            path: '/dashboard', initialChildren: children);

  static const String name = 'DashboardWrapperRoute';
}

/// generated route for
/// [_i3.OnboardingPage]
class OnboardingRoute extends _i18.PageRouteInfo<void> {
  const OnboardingRoute() : super(OnboardingRoute.name, path: '/onboard');

  static const String name = 'OnboardingRoute';
}

/// generated route for
/// [_i4.LoadingPage]
class LoadingRoute extends _i18.PageRouteInfo<void> {
  const LoadingRoute() : super(LoadingRoute.name, path: '');

  static const String name = 'LoadingRoute';
}

/// generated route for
/// [_i5.LoginPage]
class LoginRoute extends _i18.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: 'login');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i6.SignUpPage]
class SignUpRoute extends _i18.PageRouteInfo<void> {
  const SignUpRoute() : super(SignUpRoute.name, path: 'register');

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i7.DashboardPage]
class DashboardRoute extends _i18.PageRouteInfo<void> {
  const DashboardRoute({List<_i18.PageRouteInfo>? children})
      : super(DashboardRoute.name, path: '', initialChildren: children);

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i8.HomeWrapperPage]
class HomeTab extends _i18.PageRouteInfo<void> {
  const HomeTab({List<_i18.PageRouteInfo>? children})
      : super(HomeTab.name, path: 'home', initialChildren: children);

  static const String name = 'HomeTab';
}

/// generated route for
/// [_i9.SearchWrapperPage]
class SearchTab extends _i18.PageRouteInfo<void> {
  const SearchTab({List<_i18.PageRouteInfo>? children})
      : super(SearchTab.name, path: 'search', initialChildren: children);

  static const String name = 'SearchTab';
}

/// generated route for
/// [_i10.VideoShowWrapperPage]
class VideoShowTab extends _i18.PageRouteInfo<void> {
  const VideoShowTab({List<_i18.PageRouteInfo>? children})
      : super(VideoShowTab.name, path: 'video-show', initialChildren: children);

  static const String name = 'VideoShowTab';
}

/// generated route for
/// [_i11.FavoritesWrapperPage]
class FavoritesTab extends _i18.PageRouteInfo<void> {
  const FavoritesTab({List<_i18.PageRouteInfo>? children})
      : super(FavoritesTab.name, path: 'favorites', initialChildren: children);

  static const String name = 'FavoritesTab';
}

/// generated route for
/// [_i12.ProfileWrapperPage]
class ProfileTab extends _i18.PageRouteInfo<void> {
  const ProfileTab({List<_i18.PageRouteInfo>? children})
      : super(ProfileTab.name, path: 'profile', initialChildren: children);

  static const String name = 'ProfileTab';
}

/// generated route for
/// [_i13.HomePage]
class HomeRoute extends _i18.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i14.SearchPage]
class SearchRoute extends _i18.PageRouteInfo<void> {
  const SearchRoute() : super(SearchRoute.name, path: '');

  static const String name = 'SearchRoute';
}

/// generated route for
/// [_i15.VideoShowPage]
class VideoShowRoute extends _i18.PageRouteInfo<void> {
  const VideoShowRoute() : super(VideoShowRoute.name, path: '');

  static const String name = 'VideoShowRoute';
}

/// generated route for
/// [_i16.FavoritesPage]
class FavoritesRoute extends _i18.PageRouteInfo<void> {
  const FavoritesRoute() : super(FavoritesRoute.name, path: '');

  static const String name = 'FavoritesRoute';
}

/// generated route for
/// [_i17.ProfilePage]
class ProfileRoute extends _i18.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: '');

  static const String name = 'ProfileRoute';
}
