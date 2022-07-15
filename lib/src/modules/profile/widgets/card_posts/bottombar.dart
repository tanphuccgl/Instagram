import 'package:flutter/material.dart';
import 'package:instagram/src/config/theme/style.dart';
import 'package:instagram/src/models/post_model.dart';

class BottombarCardPosts extends StatelessWidget {
  final XPostData data;
  const BottombarCardPosts({Key? key, required this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: data.isReaction == false
              ? const Icon(Icons.favorite_sharp)
              : const Icon(
                  Icons.favorite_sharp,
                  color: Colors.red,
                ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.chat_rounded),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.share),
        ),
        const Spacer(),
        Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          Text(
            '${data.likeCount} likes',
            style: Style.textTheme()
                .bodyMedium!
                .copyWith(color: Colors.white, fontWeight: FontWeight.w600),
          ),
          Text(
            '${data.totalComment} comments',
            style: Style.textTheme().bodyMedium!.copyWith(color: Colors.white),
          ),
        ])
      ],
    );
  }
}
