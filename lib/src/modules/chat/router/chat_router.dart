import 'package:auto_route/auto_route.dart';
import 'package:instagram/src/modules/chat/chats.dart';
import 'package:instagram/src/modules/chat/router/chat_wrapper_router.dart';

class ChatRouters {}

class ChatCoordinator {
  static const autoRoute = AutoRoute(
      path: 'chat',
      page: ChatWrapperPage,
      name: 'ChatWrapperRoute',
      children: [
        AutoRoute(path: "", page: Chats, name: "ChatRoute"),
        RedirectRoute(path: '*', redirectTo: ''),
      ]);
}
