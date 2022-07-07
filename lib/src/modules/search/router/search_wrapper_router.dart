import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/src/modules/search/logic/profile_user_bloc.dart';

class SearchWrapperPage extends StatelessWidget {
  const SearchWrapperPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileUserBloc(),
      child: const Scaffold(body: AutoRouter()),
    );
  }
}
