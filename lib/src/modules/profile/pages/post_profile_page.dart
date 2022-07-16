import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/src/modules/post/logic/post_bloc.dart';

import '../widgets/card_posts/card_post_user.dart';

class PostProfilePage extends StatelessWidget {
  const PostProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Posts',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: BlocBuilder<PostBloc, PostState>(
          builder: (context, state) {
            return ListView.builder(
              itemBuilder: (context, index) =>
                  CardPostUser(data: state.listPosts.data![index]),
              itemCount: state.listPosts.data?.length,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
            );
          },
        ));
  }
}
