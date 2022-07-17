// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i35;
import 'package:flutter/material.dart' as _i36;

import '../../modules/activity/pages/activity_page.dart' as _i22;
import '../../modules/activity/router/activity_wrapper_router.dart' as _i15;
import '../../modules/chat/chats.dart' as _i27;
import '../../modules/chat/router/chat_wrapper_router.dart' as _i3;
import '../../modules/dashboard/pages/dashboard_page.dart' as _i11;
import '../../modules/dashboard/router/dashboard_wrapper_router.dart' as _i2;
import '../../modules/forgot_password/pages/access_your_account_page.dart'
    as _i31;
import '../../modules/forgot_password/pages/create_new_password_page.dart'
    as _i33;
import '../../modules/forgot_password/pages/forgot_by_email/input_token_page.dart'
    as _i32;
import '../../modules/forgot_password/pages/login_help_page.dart' as _i30;
import '../../modules/forgot_password/router/forgot_password_wrapper_router.dart'
    as _i5;
import '../../modules/home/pages/home_page.dart' as _i17;
import '../../modules/home/router/home_wrapper_router.dart' as _i12;
import '../../modules/loading/pages/loading_page.dart' as _i8;
import '../../modules/onboarding/pages/onboarding_page.dart' as _i7;
import '../../modules/post/pages/new_post_page.dart' as _i34;
import '../../modules/post/router/post_wrapper_router.dart' as _i6;
import '../../modules/profile/pages/change_infomation_page.dart' as _i29;
import '../../modules/profile/pages/comment_page.dart' as _i25;
import '../../modules/profile/pages/edit_profile_page.dart' as _i28;
import '../../modules/profile/pages/follow_page.dart' as _i26;
import '../../modules/profile/pages/post_profile_page.dart' as _i24;
import '../../modules/profile/pages/profile_page.dart' as _i23;
import '../../modules/profile/router/edit_profile_wrapper_router.dart' as _i4;
import '../../modules/profile/router/profile_wrapper_router.dart' as _i16;
import '../../modules/search/pages/detail_search_page.dart' as _i18;
import '../../modules/search/pages/follow_user_page.dart' as _i20;
import '../../modules/search/pages/profile_user_page.dart' as _i19;
import '../../modules/search/router/search_wrapper_router.dart' as _i13;
import '../../modules/sign/login/pages/login_page.dart' as _i9;
import '../../modules/sign/router/sign_wrapper_router.dart' as _i1;
import '../../modules/sign/signup/pages/signup_page.dart' as _i10;
import '../../modules/video_show/pages/video_show_page.dart' as _i21;
import '../../modules/video_show/router/video_show_wrapper_router.dart' as _i14;

class XRouter extends _i35.RootStackRouter {
  XRouter([_i36.GlobalKey<_i36.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i35.PageFactory> pagesMap = {
    SignRouter.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SignWrapperPage());
    },
    DashboardWrapperRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.DashboardWrapperPage());
    },
    ChatWrapperRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.ChatWrapperPage());
    },
    EditProfileWrapperRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.EditProfileWrapperPage());
    },
    ForgotPasswordWrapperRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.ForgotPasswordWrapperPage());
    },
    PostWrapperRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.PostWrapperPage());
    },
    OnboardingRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.OnboardingPage());
    },
    LoadingRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.LoadingPage());
    },
    LoginRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.LoginPage());
    },
    SignUpRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.SignUpPage());
    },
    DashboardRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.DashboardPage());
    },
    HomeTab.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.HomeWrapperPage());
    },
    SearchTab.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.SearchWrapperPage());
    },
    VideoShowTab.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.VideoShowWrapperPage());
    },
    ActivityTab.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i15.ActivityWrapperPage());
    },
    ProfileTab.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i16.ProfileWrapperPage());
    },
    HomeRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i17.HomePage());
    },
    DetailSearchRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i18.DetailSearchPage());
    },
    ProfileUserRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i19.ProfileUserPage());
    },
    FollowUserRoute.name: (routeData) {
      final args = routeData.argsAs<FollowUserRouteArgs>();
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i20.FollowUserPage(
              key: args.key, initialIndex: args.initialIndex));
    },
    VideoShowRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i21.VideoShowPage());
    },
    ActivityRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i22.ActivityPage());
    },
    ProfileRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i23.ProfilePage());
    },
    PostProfileRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i24.PostProfilePage());
    },
    CommentRoute.name: (routeData) {
      final args = routeData.argsAs<CommentRouteArgs>();
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i25.CommentPage(key: args.key, idPost: args.idPost));
    },
    FollowRoute.name: (routeData) {
      final args = routeData.argsAs<FollowRouteArgs>();
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i26.FollowPage(key: args.key, initialIndex: args.initialIndex));
    },
    ChatRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i27.Chats());
    },
    EditProfileRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i28.EditProfilePage());
    },
    ChangeInformationRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i29.ChangeInformationPage());
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i30.ForgotPasswordPage());
    },
    AccessYourAccountRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i31.AccessYourAccountPage());
    },
    InputTokenRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i32.InputTokenPage());
    },
    CreateNewPasswordRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i33.CreateNewPasswordPage());
    },
    NewPostRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i34.NewPostPage());
    }
  };

  @override
  List<_i35.RouteConfig> get routes => [
        _i35.RouteConfig('/#redirect',
            path: '/', redirectTo: '', fullMatch: true),
        _i35.RouteConfig(SignRouter.name, path: '/sign', children: [
          _i35.RouteConfig('#redirect',
              path: '',
              parent: SignRouter.name,
              redirectTo: 'login',
              fullMatch: true),
          _i35.RouteConfig(LoginRoute.name,
              path: 'login', parent: SignRouter.name),
          _i35.RouteConfig(SignUpRoute.name,
              path: 'register', parent: SignRouter.name),
          _i35.RouteConfig('*#redirect',
              path: '*',
              parent: SignRouter.name,
              redirectTo: '',
              fullMatch: true)
        ]),
        _i35.RouteConfig(DashboardWrapperRoute.name,
            path: '/dashboard',
            children: [
              _i35.RouteConfig(DashboardRoute.name,
                  path: '',
                  parent: DashboardWrapperRoute.name,
                  children: [
                    _i35.RouteConfig('#redirect',
                        path: '',
                        parent: DashboardRoute.name,
                        redirectTo: 'profile',
                        fullMatch: true),
                    _i35.RouteConfig(HomeTab.name,
                        path: 'home',
                        parent: DashboardRoute.name,
                        children: [
                          _i35.RouteConfig(HomeRoute.name,
                              path: '', parent: HomeTab.name),
                          _i35.RouteConfig('*#redirect',
                              path: '*',
                              parent: HomeTab.name,
                              redirectTo: '',
                              fullMatch: true)
                        ]),
                    _i35.RouteConfig(SearchTab.name,
                        path: 'search',
                        parent: DashboardRoute.name,
                        children: [
                          _i35.RouteConfig(DetailSearchRoute.name,
                              path: '', parent: SearchTab.name),
                          _i35.RouteConfig(ProfileUserRoute.name,
                              path: 'profile_user', parent: SearchTab.name),
                          _i35.RouteConfig(FollowUserRoute.name,
                              path: 'follow', parent: SearchTab.name),
                          _i35.RouteConfig('*#redirect',
                              path: '*',
                              parent: SearchTab.name,
                              redirectTo: '',
                              fullMatch: true)
                        ]),
                    _i35.RouteConfig(VideoShowTab.name,
                        path: 'video-show',
                        parent: DashboardRoute.name,
                        children: [
                          _i35.RouteConfig(VideoShowRoute.name,
                              path: '', parent: VideoShowTab.name),
                          _i35.RouteConfig('*#redirect',
                              path: '*',
                              parent: VideoShowTab.name,
                              redirectTo: '',
                              fullMatch: true)
                        ]),
                    _i35.RouteConfig(ActivityTab.name,
                        path: 'favorites',
                        parent: DashboardRoute.name,
                        children: [
                          _i35.RouteConfig(ActivityRoute.name,
                              path: '', parent: ActivityTab.name),
                          _i35.RouteConfig('*#redirect',
                              path: '*',
                              parent: ActivityTab.name,
                              redirectTo: '',
                              fullMatch: true)
                        ]),
                    _i35.RouteConfig(ProfileTab.name,
                        path: 'profile',
                        parent: DashboardRoute.name,
                        children: [
                          _i35.RouteConfig(ProfileRoute.name,
                              path: '', parent: ProfileTab.name),
                          _i35.RouteConfig(PostProfileRoute.name,
                              path: 'post', parent: ProfileTab.name),
                          _i35.RouteConfig(CommentRoute.name,
                              path: 'comment', parent: ProfileTab.name),
                          _i35.RouteConfig(FollowRoute.name,
                              path: 'follow', parent: ProfileTab.name),
                          _i35.RouteConfig('*#redirect',
                              path: '*',
                              parent: ProfileTab.name,
                              redirectTo: '',
                              fullMatch: true)
                        ]),
                    _i35.RouteConfig('*#redirect',
                        path: '*',
                        parent: DashboardRoute.name,
                        redirectTo: '',
                        fullMatch: true)
                  ]),
              _i35.RouteConfig('*#redirect',
                  path: '*',
                  parent: DashboardWrapperRoute.name,
                  redirectTo: '',
                  fullMatch: true)
            ]),
        _i35.RouteConfig(ChatWrapperRoute.name, path: 'chat', children: [
          _i35.RouteConfig(ChatRoute.name,
              path: '', parent: ChatWrapperRoute.name),
          _i35.RouteConfig('*#redirect',
              path: '*',
              parent: ChatWrapperRoute.name,
              redirectTo: '',
              fullMatch: true)
        ]),
        _i35.RouteConfig(EditProfileWrapperRoute.name,
            path: 'edit_profile',
            children: [
              _i35.RouteConfig(EditProfileRoute.name,
                  path: '', parent: EditProfileWrapperRoute.name),
              _i35.RouteConfig(ChangeInformationRoute.name,
                  path: '', parent: EditProfileWrapperRoute.name),
              _i35.RouteConfig('*#redirect',
                  path: '*',
                  parent: EditProfileWrapperRoute.name,
                  redirectTo: '',
                  fullMatch: true)
            ]),
        _i35.RouteConfig(ForgotPasswordWrapperRoute.name,
            path: '/dashboard',
            children: [
              _i35.RouteConfig(ForgotPasswordRoute.name,
                  path: '', parent: ForgotPasswordWrapperRoute.name),
              _i35.RouteConfig(AccessYourAccountRoute.name,
                  path: 'access_your_account',
                  parent: ForgotPasswordWrapperRoute.name),
              _i35.RouteConfig(InputTokenRoute.name,
                  path: 'input_token', parent: ForgotPasswordWrapperRoute.name),
              _i35.RouteConfig(CreateNewPasswordRoute.name,
                  path: 'create_new_password',
                  parent: ForgotPasswordWrapperRoute.name),
              _i35.RouteConfig('*#redirect',
                  path: '*',
                  parent: ForgotPasswordWrapperRoute.name,
                  redirectTo: '',
                  fullMatch: true)
            ]),
        _i35.RouteConfig(PostWrapperRoute.name, path: 'new_post', children: [
          _i35.RouteConfig(NewPostRoute.name,
              path: '', parent: PostWrapperRoute.name),
          _i35.RouteConfig('*#redirect',
              path: '*',
              parent: PostWrapperRoute.name,
              redirectTo: '',
              fullMatch: true)
        ]),
        _i35.RouteConfig(OnboardingRoute.name, path: '/onboard'),
        _i35.RouteConfig(LoadingRoute.name, path: ''),
        _i35.RouteConfig('*#redirect',
            path: '*', redirectTo: '', fullMatch: true)
      ];
}

/// generated route for
/// [_i1.SignWrapperPage]
class SignRouter extends _i35.PageRouteInfo<void> {
  const SignRouter({List<_i35.PageRouteInfo>? children})
      : super(SignRouter.name, path: '/sign', initialChildren: children);

  static const String name = 'SignRouter';
}

/// generated route for
/// [_i2.DashboardWrapperPage]
class DashboardWrapperRoute extends _i35.PageRouteInfo<void> {
  const DashboardWrapperRoute({List<_i35.PageRouteInfo>? children})
      : super(DashboardWrapperRoute.name,
            path: '/dashboard', initialChildren: children);

  static const String name = 'DashboardWrapperRoute';
}

/// generated route for
/// [_i3.ChatWrapperPage]
class ChatWrapperRoute extends _i35.PageRouteInfo<void> {
  const ChatWrapperRoute({List<_i35.PageRouteInfo>? children})
      : super(ChatWrapperRoute.name, path: 'chat', initialChildren: children);

  static const String name = 'ChatWrapperRoute';
}

/// generated route for
/// [_i4.EditProfileWrapperPage]
class EditProfileWrapperRoute extends _i35.PageRouteInfo<void> {
  const EditProfileWrapperRoute({List<_i35.PageRouteInfo>? children})
      : super(EditProfileWrapperRoute.name,
            path: 'edit_profile', initialChildren: children);

  static const String name = 'EditProfileWrapperRoute';
}

/// generated route for
/// [_i5.ForgotPasswordWrapperPage]
class ForgotPasswordWrapperRoute extends _i35.PageRouteInfo<void> {
  const ForgotPasswordWrapperRoute({List<_i35.PageRouteInfo>? children})
      : super(ForgotPasswordWrapperRoute.name,
            path: '/dashboard', initialChildren: children);

  static const String name = 'ForgotPasswordWrapperRoute';
}

/// generated route for
/// [_i6.PostWrapperPage]
class PostWrapperRoute extends _i35.PageRouteInfo<void> {
  const PostWrapperRoute({List<_i35.PageRouteInfo>? children})
      : super(PostWrapperRoute.name,
            path: 'new_post', initialChildren: children);

  static const String name = 'PostWrapperRoute';
}

/// generated route for
/// [_i7.OnboardingPage]
class OnboardingRoute extends _i35.PageRouteInfo<void> {
  const OnboardingRoute() : super(OnboardingRoute.name, path: '/onboard');

  static const String name = 'OnboardingRoute';
}

/// generated route for
/// [_i8.LoadingPage]
class LoadingRoute extends _i35.PageRouteInfo<void> {
  const LoadingRoute() : super(LoadingRoute.name, path: '');

  static const String name = 'LoadingRoute';
}

/// generated route for
/// [_i9.LoginPage]
class LoginRoute extends _i35.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: 'login');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i10.SignUpPage]
class SignUpRoute extends _i35.PageRouteInfo<void> {
  const SignUpRoute() : super(SignUpRoute.name, path: 'register');

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i11.DashboardPage]
class DashboardRoute extends _i35.PageRouteInfo<void> {
  const DashboardRoute({List<_i35.PageRouteInfo>? children})
      : super(DashboardRoute.name, path: '', initialChildren: children);

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i12.HomeWrapperPage]
class HomeTab extends _i35.PageRouteInfo<void> {
  const HomeTab({List<_i35.PageRouteInfo>? children})
      : super(HomeTab.name, path: 'home', initialChildren: children);

  static const String name = 'HomeTab';
}

/// generated route for
/// [_i13.SearchWrapperPage]
class SearchTab extends _i35.PageRouteInfo<void> {
  const SearchTab({List<_i35.PageRouteInfo>? children})
      : super(SearchTab.name, path: 'search', initialChildren: children);

  static const String name = 'SearchTab';
}

/// generated route for
/// [_i14.VideoShowWrapperPage]
class VideoShowTab extends _i35.PageRouteInfo<void> {
  const VideoShowTab({List<_i35.PageRouteInfo>? children})
      : super(VideoShowTab.name, path: 'video-show', initialChildren: children);

  static const String name = 'VideoShowTab';
}

/// generated route for
/// [_i15.ActivityWrapperPage]
class ActivityTab extends _i35.PageRouteInfo<void> {
  const ActivityTab({List<_i35.PageRouteInfo>? children})
      : super(ActivityTab.name, path: 'favorites', initialChildren: children);

  static const String name = 'ActivityTab';
}

/// generated route for
/// [_i16.ProfileWrapperPage]
class ProfileTab extends _i35.PageRouteInfo<void> {
  const ProfileTab({List<_i35.PageRouteInfo>? children})
      : super(ProfileTab.name, path: 'profile', initialChildren: children);

  static const String name = 'ProfileTab';
}

/// generated route for
/// [_i17.HomePage]
class HomeRoute extends _i35.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i18.DetailSearchPage]
class DetailSearchRoute extends _i35.PageRouteInfo<void> {
  const DetailSearchRoute() : super(DetailSearchRoute.name, path: '');

  static const String name = 'DetailSearchRoute';
}

/// generated route for
/// [_i19.ProfileUserPage]
class ProfileUserRoute extends _i35.PageRouteInfo<void> {
  const ProfileUserRoute() : super(ProfileUserRoute.name, path: 'profile_user');

  static const String name = 'ProfileUserRoute';
}

/// generated route for
/// [_i20.FollowUserPage]
class FollowUserRoute extends _i35.PageRouteInfo<FollowUserRouteArgs> {
  FollowUserRoute({_i36.Key? key, required int initialIndex})
      : super(FollowUserRoute.name,
            path: 'follow',
            args: FollowUserRouteArgs(key: key, initialIndex: initialIndex));

  static const String name = 'FollowUserRoute';
}

class FollowUserRouteArgs {
  const FollowUserRouteArgs({this.key, required this.initialIndex});

  final _i36.Key? key;

  final int initialIndex;

  @override
  String toString() {
    return 'FollowUserRouteArgs{key: $key, initialIndex: $initialIndex}';
  }
}

/// generated route for
/// [_i21.VideoShowPage]
class VideoShowRoute extends _i35.PageRouteInfo<void> {
  const VideoShowRoute() : super(VideoShowRoute.name, path: '');

  static const String name = 'VideoShowRoute';
}

/// generated route for
/// [_i22.ActivityPage]
class ActivityRoute extends _i35.PageRouteInfo<void> {
  const ActivityRoute() : super(ActivityRoute.name, path: '');

  static const String name = 'ActivityRoute';
}

/// generated route for
/// [_i23.ProfilePage]
class ProfileRoute extends _i35.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: '');

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i24.PostProfilePage]
class PostProfileRoute extends _i35.PageRouteInfo<void> {
  const PostProfileRoute() : super(PostProfileRoute.name, path: 'post');

  static const String name = 'PostProfileRoute';
}

/// generated route for
/// [_i25.CommentPage]
class CommentRoute extends _i35.PageRouteInfo<CommentRouteArgs> {
  CommentRoute({_i36.Key? key, required String idPost})
      : super(CommentRoute.name,
            path: 'comment', args: CommentRouteArgs(key: key, idPost: idPost));

  static const String name = 'CommentRoute';
}

class CommentRouteArgs {
  const CommentRouteArgs({this.key, required this.idPost});

  final _i36.Key? key;

  final String idPost;

  @override
  String toString() {
    return 'CommentRouteArgs{key: $key, idPost: $idPost}';
  }
}

/// generated route for
/// [_i26.FollowPage]
class FollowRoute extends _i35.PageRouteInfo<FollowRouteArgs> {
  FollowRoute({_i36.Key? key, required int initialIndex})
      : super(FollowRoute.name,
            path: 'follow',
            args: FollowRouteArgs(key: key, initialIndex: initialIndex));

  static const String name = 'FollowRoute';
}

class FollowRouteArgs {
  const FollowRouteArgs({this.key, required this.initialIndex});

  final _i36.Key? key;

  final int initialIndex;

  @override
  String toString() {
    return 'FollowRouteArgs{key: $key, initialIndex: $initialIndex}';
  }
}

/// generated route for
/// [_i27.Chats]
class ChatRoute extends _i35.PageRouteInfo<void> {
  const ChatRoute() : super(ChatRoute.name, path: '');

  static const String name = 'ChatRoute';
}

/// generated route for
/// [_i28.EditProfilePage]
class EditProfileRoute extends _i35.PageRouteInfo<void> {
  const EditProfileRoute() : super(EditProfileRoute.name, path: '');

  static const String name = 'EditProfileRoute';
}

/// generated route for
/// [_i29.ChangeInformationPage]
class ChangeInformationRoute extends _i35.PageRouteInfo<void> {
  const ChangeInformationRoute() : super(ChangeInformationRoute.name, path: '');

  static const String name = 'ChangeInformationRoute';
}

/// generated route for
/// [_i30.ForgotPasswordPage]
class ForgotPasswordRoute extends _i35.PageRouteInfo<void> {
  const ForgotPasswordRoute() : super(ForgotPasswordRoute.name, path: '');

  static const String name = 'ForgotPasswordRoute';
}

/// generated route for
/// [_i31.AccessYourAccountPage]
class AccessYourAccountRoute extends _i35.PageRouteInfo<void> {
  const AccessYourAccountRoute()
      : super(AccessYourAccountRoute.name, path: 'access_your_account');

  static const String name = 'AccessYourAccountRoute';
}

/// generated route for
/// [_i32.InputTokenPage]
class InputTokenRoute extends _i35.PageRouteInfo<void> {
  const InputTokenRoute() : super(InputTokenRoute.name, path: 'input_token');

  static const String name = 'InputTokenRoute';
}

/// generated route for
/// [_i33.CreateNewPasswordPage]
class CreateNewPasswordRoute extends _i35.PageRouteInfo<void> {
  const CreateNewPasswordRoute()
      : super(CreateNewPasswordRoute.name, path: 'create_new_password');

  static const String name = 'CreateNewPasswordRoute';
}

/// generated route for
/// [_i34.NewPostPage]
class NewPostRoute extends _i35.PageRouteInfo<void> {
  const NewPostRoute() : super(NewPostRoute.name, path: '');

  static const String name = 'NewPostRoute';
}
