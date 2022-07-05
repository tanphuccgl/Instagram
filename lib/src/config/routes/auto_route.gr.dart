// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i31;
import 'package:flutter/material.dart' as _i32;

import '../../modules/activity/pages/activity_page.dart' as _i20;
import '../../modules/activity/router/activity_wrapper_router.dart' as _i14;
import '../../modules/chat/chats.dart' as _i24;
import '../../modules/chat/router/chat_wrapper_router.dart' as _i3;
import '../../modules/dashboard/pages/dashboard_page.dart' as _i10;
import '../../modules/dashboard/router/dashboard_wrapper_router.dart' as _i2;
import '../../modules/forgot_password/pages/access_your_account_page.dart'
    as _i28;
import '../../modules/forgot_password/pages/create_new_password_page.dart'
    as _i30;
import '../../modules/forgot_password/pages/forgot_by_email/input_token_page.dart'
    as _i29;
import '../../modules/forgot_password/pages/login_help_page.dart' as _i27;
import '../../modules/forgot_password/router/forgot_password_wrapper_router.dart'
    as _i5;
import '../../modules/home/pages/home_page.dart' as _i16;
import '../../modules/home/router/home_wrapper_router.dart' as _i11;
import '../../modules/loading/pages/loading_page.dart' as _i7;
import '../../modules/onboarding/pages/onboarding_page.dart' as _i6;
import '../../modules/profile/pages/change_infomation_page.dart' as _i26;
import '../../modules/profile/pages/edit_profile_page.dart' as _i25;
import '../../modules/profile/pages/follow_page.dart' as _i23;
import '../../modules/profile/pages/post_profile_page.dart' as _i22;
import '../../modules/profile/pages/profile_page.dart' as _i21;
import '../../modules/profile/router/edit_profile_wrapper_router.dart' as _i4;
import '../../modules/profile/router/profile_wrapper_router.dart' as _i15;
import '../../modules/search/pages/detail_search_page.dart' as _i18;
import '../../modules/search/pages/search_page.dart' as _i17;
import '../../modules/search/router/search_wrapper_router.dart' as _i12;
import '../../modules/sign/login/pages/login_page.dart' as _i8;
import '../../modules/sign/router/sign_wrapper_router.dart' as _i1;
import '../../modules/sign/signup/pages/signup_page.dart' as _i9;
import '../../modules/video_show/pages/video_show_page.dart' as _i19;
import '../../modules/video_show/router/video_show_wrapper_router.dart' as _i13;

class XRouter extends _i31.RootStackRouter {
  XRouter([_i32.GlobalKey<_i32.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i31.PageFactory> pagesMap = {
    SignRouter.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SignWrapperPage());
    },
    DashboardWrapperRoute.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.DashboardWrapperPage());
    },
    ChatWrapperRoute.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.ChatWrapperPage());
    },
    EditProfileWrapperRoute.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.EditProfileWrapperPage());
    },
    ForgotPasswordWrapperRoute.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.ForgotPasswordWrapperPage());
    },
    OnboardingRoute.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.OnboardingPage());
    },
    LoadingRoute.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.LoadingPage());
    },
    LoginRoute.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.LoginPage());
    },
    SignUpRoute.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.SignUpPage());
    },
    DashboardRoute.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.DashboardPage());
    },
    HomeTab.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.HomeWrapperPage());
    },
    SearchTab.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.SearchWrapperPage());
    },
    VideoShowTab.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.VideoShowWrapperPage());
    },
    ActivityTab.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.ActivityWrapperPage());
    },
    ProfileTab.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i15.ProfileWrapperPage());
    },
    HomeRoute.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i16.HomePage());
    },
    SearchRoute.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i17.SearchPage());
    },
    DetailSearchRoute.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i18.DetailSearchPage());
    },
    VideoShowRoute.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i19.VideoShowPage());
    },
    ActivityRoute.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i20.ActivityPage());
    },
    ProfileRoute.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i21.ProfilePage());
    },
    PostProfileRoute.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i22.PostProfilePage());
    },
    FollowRoute.name: (routeData) {
      final args = routeData.argsAs<FollowRouteArgs>();
      return _i31.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i23.FollowPage(key: args.key, initialIndex: args.initialIndex));
    },
    ChatRoute.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i24.Chats());
    },
    EditProfileRoute.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i25.EditProfilePage());
    },
    ChangeInformationRoute.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i26.ChangeInformationPage());
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i27.ForgotPasswordPage());
    },
    AccessYourAccountRoute.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i28.AccessYourAccountPage());
    },
    InputTokenRoute.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i29.InputTokenPage());
    },
    CreateNewPasswordRoute.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i30.CreateNewPasswordPage());
    }
  };

  @override
  List<_i31.RouteConfig> get routes => [
        _i31.RouteConfig('/#redirect',
            path: '/', redirectTo: '', fullMatch: true),
        _i31.RouteConfig(SignRouter.name, path: '/sign', children: [
          _i31.RouteConfig('#redirect',
              path: '',
              parent: SignRouter.name,
              redirectTo: 'login',
              fullMatch: true),
          _i31.RouteConfig(LoginRoute.name,
              path: 'login', parent: SignRouter.name),
          _i31.RouteConfig(SignUpRoute.name,
              path: 'register', parent: SignRouter.name),
          _i31.RouteConfig('*#redirect',
              path: '*',
              parent: SignRouter.name,
              redirectTo: '',
              fullMatch: true)
        ]),
        _i31.RouteConfig(DashboardWrapperRoute.name,
            path: '/dashboard',
            children: [
              _i31.RouteConfig(DashboardRoute.name,
                  path: '',
                  parent: DashboardWrapperRoute.name,
                  children: [
                    _i31.RouteConfig('#redirect',
                        path: '',
                        parent: DashboardRoute.name,
                        redirectTo: 'profile',
                        fullMatch: true),
                    _i31.RouteConfig(HomeTab.name,
                        path: 'home',
                        parent: DashboardRoute.name,
                        children: [
                          _i31.RouteConfig(HomeRoute.name,
                              path: '', parent: HomeTab.name),
                          _i31.RouteConfig('*#redirect',
                              path: '*',
                              parent: HomeTab.name,
                              redirectTo: '',
                              fullMatch: true)
                        ]),
                    _i31.RouteConfig(SearchTab.name,
                        path: 'search',
                        parent: DashboardRoute.name,
                        children: [
                          _i31.RouteConfig(SearchRoute.name,
                              path: '', parent: SearchTab.name),
                          _i31.RouteConfig(DetailSearchRoute.name,
                              path: 'detail_search', parent: SearchTab.name),
                          _i31.RouteConfig('*#redirect',
                              path: '*',
                              parent: SearchTab.name,
                              redirectTo: '',
                              fullMatch: true)
                        ]),
                    _i31.RouteConfig(VideoShowTab.name,
                        path: 'video-show',
                        parent: DashboardRoute.name,
                        children: [
                          _i31.RouteConfig(VideoShowRoute.name,
                              path: '', parent: VideoShowTab.name),
                          _i31.RouteConfig('*#redirect',
                              path: '*',
                              parent: VideoShowTab.name,
                              redirectTo: '',
                              fullMatch: true)
                        ]),
                    _i31.RouteConfig(ActivityTab.name,
                        path: 'favorites',
                        parent: DashboardRoute.name,
                        children: [
                          _i31.RouteConfig(ActivityRoute.name,
                              path: '', parent: ActivityTab.name),
                          _i31.RouteConfig('*#redirect',
                              path: '*',
                              parent: ActivityTab.name,
                              redirectTo: '',
                              fullMatch: true)
                        ]),
                    _i31.RouteConfig(ProfileTab.name,
                        path: 'profile',
                        parent: DashboardRoute.name,
                        children: [
                          _i31.RouteConfig(ProfileRoute.name,
                              path: '', parent: ProfileTab.name),
                          _i31.RouteConfig(PostProfileRoute.name,
                              path: 'post', parent: ProfileTab.name),
                          _i31.RouteConfig(FollowRoute.name,
                              path: 'follow', parent: ProfileTab.name),
                          _i31.RouteConfig('*#redirect',
                              path: '*',
                              parent: ProfileTab.name,
                              redirectTo: '',
                              fullMatch: true)
                        ]),
                    _i31.RouteConfig('*#redirect',
                        path: '*',
                        parent: DashboardRoute.name,
                        redirectTo: '',
                        fullMatch: true)
                  ]),
              _i31.RouteConfig('*#redirect',
                  path: '*',
                  parent: DashboardWrapperRoute.name,
                  redirectTo: '',
                  fullMatch: true)
            ]),
        _i31.RouteConfig(ChatWrapperRoute.name, path: 'chat', children: [
          _i31.RouteConfig(ChatRoute.name,
              path: '', parent: ChatWrapperRoute.name),
          _i31.RouteConfig('*#redirect',
              path: '*',
              parent: ChatWrapperRoute.name,
              redirectTo: '',
              fullMatch: true)
        ]),
        _i31.RouteConfig(EditProfileWrapperRoute.name,
            path: 'edit_profile',
            children: [
              _i31.RouteConfig(EditProfileRoute.name,
                  path: '', parent: EditProfileWrapperRoute.name),
              _i31.RouteConfig(ChangeInformationRoute.name,
                  path: '', parent: EditProfileWrapperRoute.name),
              _i31.RouteConfig('*#redirect',
                  path: '*',
                  parent: EditProfileWrapperRoute.name,
                  redirectTo: '',
                  fullMatch: true)
            ]),
        _i31.RouteConfig(ForgotPasswordWrapperRoute.name,
            path: '/dashboard',
            children: [
              _i31.RouteConfig(ForgotPasswordRoute.name,
                  path: '', parent: ForgotPasswordWrapperRoute.name),
              _i31.RouteConfig(AccessYourAccountRoute.name,
                  path: 'access_your_account',
                  parent: ForgotPasswordWrapperRoute.name),
              _i31.RouteConfig(InputTokenRoute.name,
                  path: 'input_token', parent: ForgotPasswordWrapperRoute.name),
              _i31.RouteConfig(CreateNewPasswordRoute.name,
                  path: 'create_new_password',
                  parent: ForgotPasswordWrapperRoute.name),
              _i31.RouteConfig('*#redirect',
                  path: '*',
                  parent: ForgotPasswordWrapperRoute.name,
                  redirectTo: '',
                  fullMatch: true)
            ]),
        _i31.RouteConfig(OnboardingRoute.name, path: '/onboard'),
        _i31.RouteConfig(LoadingRoute.name, path: ''),
        _i31.RouteConfig('*#redirect',
            path: '*', redirectTo: '', fullMatch: true)
      ];
}

/// generated route for
/// [_i1.SignWrapperPage]
class SignRouter extends _i31.PageRouteInfo<void> {
  const SignRouter({List<_i31.PageRouteInfo>? children})
      : super(SignRouter.name, path: '/sign', initialChildren: children);

  static const String name = 'SignRouter';
}

/// generated route for
/// [_i2.DashboardWrapperPage]
class DashboardWrapperRoute extends _i31.PageRouteInfo<void> {
  const DashboardWrapperRoute({List<_i31.PageRouteInfo>? children})
      : super(DashboardWrapperRoute.name,
            path: '/dashboard', initialChildren: children);

  static const String name = 'DashboardWrapperRoute';
}

/// generated route for
/// [_i3.ChatWrapperPage]
class ChatWrapperRoute extends _i31.PageRouteInfo<void> {
  const ChatWrapperRoute({List<_i31.PageRouteInfo>? children})
      : super(ChatWrapperRoute.name, path: 'chat', initialChildren: children);

  static const String name = 'ChatWrapperRoute';
}

/// generated route for
/// [_i4.EditProfileWrapperPage]
class EditProfileWrapperRoute extends _i31.PageRouteInfo<void> {
  const EditProfileWrapperRoute({List<_i31.PageRouteInfo>? children})
      : super(EditProfileWrapperRoute.name,
            path: 'edit_profile', initialChildren: children);

  static const String name = 'EditProfileWrapperRoute';
}

/// generated route for
/// [_i5.ForgotPasswordWrapperPage]
class ForgotPasswordWrapperRoute extends _i31.PageRouteInfo<void> {
  const ForgotPasswordWrapperRoute({List<_i31.PageRouteInfo>? children})
      : super(ForgotPasswordWrapperRoute.name,
            path: '/dashboard', initialChildren: children);

  static const String name = 'ForgotPasswordWrapperRoute';
}

/// generated route for
/// [_i6.OnboardingPage]
class OnboardingRoute extends _i31.PageRouteInfo<void> {
  const OnboardingRoute() : super(OnboardingRoute.name, path: '/onboard');

  static const String name = 'OnboardingRoute';
}

/// generated route for
/// [_i7.LoadingPage]
class LoadingRoute extends _i31.PageRouteInfo<void> {
  const LoadingRoute() : super(LoadingRoute.name, path: '');

  static const String name = 'LoadingRoute';
}

/// generated route for
/// [_i8.LoginPage]
class LoginRoute extends _i31.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: 'login');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i9.SignUpPage]
class SignUpRoute extends _i31.PageRouteInfo<void> {
  const SignUpRoute() : super(SignUpRoute.name, path: 'register');

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i10.DashboardPage]
class DashboardRoute extends _i31.PageRouteInfo<void> {
  const DashboardRoute({List<_i31.PageRouteInfo>? children})
      : super(DashboardRoute.name, path: '', initialChildren: children);

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i11.HomeWrapperPage]
class HomeTab extends _i31.PageRouteInfo<void> {
  const HomeTab({List<_i31.PageRouteInfo>? children})
      : super(HomeTab.name, path: 'home', initialChildren: children);

  static const String name = 'HomeTab';
}

/// generated route for
/// [_i12.SearchWrapperPage]
class SearchTab extends _i31.PageRouteInfo<void> {
  const SearchTab({List<_i31.PageRouteInfo>? children})
      : super(SearchTab.name, path: 'search', initialChildren: children);

  static const String name = 'SearchTab';
}

/// generated route for
/// [_i13.VideoShowWrapperPage]
class VideoShowTab extends _i31.PageRouteInfo<void> {
  const VideoShowTab({List<_i31.PageRouteInfo>? children})
      : super(VideoShowTab.name, path: 'video-show', initialChildren: children);

  static const String name = 'VideoShowTab';
}

/// generated route for
/// [_i14.ActivityWrapperPage]
class ActivityTab extends _i31.PageRouteInfo<void> {
  const ActivityTab({List<_i31.PageRouteInfo>? children})
      : super(ActivityTab.name, path: 'favorites', initialChildren: children);

  static const String name = 'ActivityTab';
}

/// generated route for
/// [_i15.ProfileWrapperPage]
class ProfileTab extends _i31.PageRouteInfo<void> {
  const ProfileTab({List<_i31.PageRouteInfo>? children})
      : super(ProfileTab.name, path: 'profile', initialChildren: children);

  static const String name = 'ProfileTab';
}

/// generated route for
/// [_i16.HomePage]
class HomeRoute extends _i31.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i17.SearchPage]
class SearchRoute extends _i31.PageRouteInfo<void> {
  const SearchRoute() : super(SearchRoute.name, path: '');

  static const String name = 'SearchRoute';
}

/// generated route for
/// [_i18.DetailSearchPage]
class DetailSearchRoute extends _i31.PageRouteInfo<void> {
  const DetailSearchRoute()
      : super(DetailSearchRoute.name, path: 'detail_search');

  static const String name = 'DetailSearchRoute';
}

/// generated route for
/// [_i19.VideoShowPage]
class VideoShowRoute extends _i31.PageRouteInfo<void> {
  const VideoShowRoute() : super(VideoShowRoute.name, path: '');

  static const String name = 'VideoShowRoute';
}

/// generated route for
/// [_i20.ActivityPage]
class ActivityRoute extends _i31.PageRouteInfo<void> {
  const ActivityRoute() : super(ActivityRoute.name, path: '');

  static const String name = 'ActivityRoute';
}

/// generated route for
/// [_i21.ProfilePage]
class ProfileRoute extends _i31.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: '');

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i22.PostProfilePage]
class PostProfileRoute extends _i31.PageRouteInfo<void> {
  const PostProfileRoute() : super(PostProfileRoute.name, path: 'post');

  static const String name = 'PostProfileRoute';
}

/// generated route for
/// [_i23.FollowPage]
class FollowRoute extends _i31.PageRouteInfo<FollowRouteArgs> {
  FollowRoute({_i32.Key? key, required int initialIndex})
      : super(FollowRoute.name,
            path: 'follow',
            args: FollowRouteArgs(key: key, initialIndex: initialIndex));

  static const String name = 'FollowRoute';
}

class FollowRouteArgs {
  const FollowRouteArgs({this.key, required this.initialIndex});

  final _i32.Key? key;

  final int initialIndex;

  @override
  String toString() {
    return 'FollowRouteArgs{key: $key, initialIndex: $initialIndex}';
  }
}

/// generated route for
/// [_i24.Chats]
class ChatRoute extends _i31.PageRouteInfo<void> {
  const ChatRoute() : super(ChatRoute.name, path: '');

  static const String name = 'ChatRoute';
}

/// generated route for
/// [_i25.EditProfilePage]
class EditProfileRoute extends _i31.PageRouteInfo<void> {
  const EditProfileRoute() : super(EditProfileRoute.name, path: '');

  static const String name = 'EditProfileRoute';
}

/// generated route for
/// [_i26.ChangeInformationPage]
class ChangeInformationRoute extends _i31.PageRouteInfo<void> {
  const ChangeInformationRoute() : super(ChangeInformationRoute.name, path: '');

  static const String name = 'ChangeInformationRoute';
}

/// generated route for
/// [_i27.ForgotPasswordPage]
class ForgotPasswordRoute extends _i31.PageRouteInfo<void> {
  const ForgotPasswordRoute() : super(ForgotPasswordRoute.name, path: '');

  static const String name = 'ForgotPasswordRoute';
}

/// generated route for
/// [_i28.AccessYourAccountPage]
class AccessYourAccountRoute extends _i31.PageRouteInfo<void> {
  const AccessYourAccountRoute()
      : super(AccessYourAccountRoute.name, path: 'access_your_account');

  static const String name = 'AccessYourAccountRoute';
}

/// generated route for
/// [_i29.InputTokenPage]
class InputTokenRoute extends _i31.PageRouteInfo<void> {
  const InputTokenRoute() : super(InputTokenRoute.name, path: 'input_token');

  static const String name = 'InputTokenRoute';
}

/// generated route for
/// [_i30.CreateNewPasswordPage]
class CreateNewPasswordRoute extends _i31.PageRouteInfo<void> {
  const CreateNewPasswordRoute()
      : super(CreateNewPasswordRoute.name, path: 'create_new_password');

  static const String name = 'CreateNewPasswordRoute';
}
