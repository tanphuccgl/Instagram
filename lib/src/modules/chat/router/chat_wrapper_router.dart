import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class ChatWrapperPage extends StatelessWidget {
  const ChatWrapperPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: AutoRouter());
  }
}
