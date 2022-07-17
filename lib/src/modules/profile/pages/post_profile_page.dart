import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/src/modules/post/logic/post_bloc.dart';

import '../widgets/card_posts/card_post_user.dart';

class PostProfilePage extends StatelessWidget {
  final bool isOtherUser;
  const PostProfilePage({Key? key, this.isOtherUser = false}) : super(key: key);

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
              itemBuilder: (context, index) => CardPostUser(
                  data: isOtherUser == false
                      ? state.listPosts.data![index]
                      : state.listPosts1.data![index]),
              itemCount: isOtherUser == false
                  ? state.listPosts.data?.length
                  : state.listPosts1.data?.length,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
            );
          },
        ));
  }
}
