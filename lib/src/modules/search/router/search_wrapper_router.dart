import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class SearchWrapperPage extends StatelessWidget {
  const SearchWrapperPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: AutoRouter());
  }
}
