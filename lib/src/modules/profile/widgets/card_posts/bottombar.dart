import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/src/config/theme/style.dart';
import 'package:instagram/src/models/post_model.dart';
import 'package:instagram/src/modules/post/logic/post_bloc.dart';

class BottombarCardPosts extends StatelessWidget {
  final XPostData data;
  const BottombarCardPosts({Key? key, required this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: data.isReaction == false
              ? () => context.read<PostBloc>().postReactionPost(data.id ?? "")
              : () =>
                  context.read<PostBloc>().removeReactionPost(data.id ?? ""),
          icon: data.isReaction == false
              ? const Icon(Icons.favorite_sharp)
              : const Icon(
                  Icons.favorite_sharp,
                  color: Colors.red,
                ),
        ),
        IconButton(
          onPressed: data.turnOffComment == false
              ? () =>
                  context.read<PostBloc>().getComment(context, data.id ?? "")
              : () {},
          icon: const Icon(Icons.chat_rounded),
        ),
        // IconButton(
        //   onPressed: () {},
        //   icon: const Icon(Icons.share),
        // ),
        const Spacer(),
        Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          data.hideCountReaction == false
              ? Text(
                  '${data.likeCount} likes',
                  style: Style.textTheme().bodyMedium!.copyWith(
                      color: Colors.white, fontWeight: FontWeight.w600),
                )
              : const SizedBox.shrink(),
          Text(
            '${data.totalComment} comments',
            style: Style.textTheme().bodyMedium!.copyWith(color: Colors.white),
          ),
        ])
      ],
    );
  }
}
