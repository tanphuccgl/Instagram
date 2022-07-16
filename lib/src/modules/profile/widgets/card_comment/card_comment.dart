import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/src/config/theme/style.dart';
import 'package:instagram/src/constants/my_network.dart';
import 'package:instagram/src/models/comment_model.dart';
import 'package:instagram/src/modules/post/logic/post_bloc.dart';

class CardComment extends StatelessWidget {
  final XCommentData data;
  const CardComment({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      key: Key(data.id ?? ""),
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(300.0),
          child: Image.network(
            data.idProfie?.avartarUrl ?? MyNetwork.urlAvatar,
            fit: BoxFit.cover,
            width: 40,
            height: 40,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                  text: data.idAccount?.username ?? "",
                  style: Style.textTheme()
                      .bodyMedium!
                      .copyWith(fontWeight: FontWeight.w500),
                  children: [
                    TextSpan(
                        text: "\t${data.description}",
                        style: Style.textTheme().bodyMedium),
                  ]),
            ),
            Row(
              children: [
                Text(
                    "${(DateTime.now().hour - int.parse(data.createdAt!.substring(11, 13))).abs()}h"),
                TextButton(onPressed: () {}, child: const Text("Reply")),
                TextButton(onPressed: () {}, child: const Text("Send"))
              ],
            )
          ],
        ),
        const Spacer(),
        IconButton(
            onPressed: data.isReaction == false
                ? () => context.read<PostBloc>().postReactionCommnet(
                    context, data.id ?? "", data.idPost ?? "")
                : () => context.read<PostBloc>().removeReactionComment(
                    context, data.id ?? "", data.idPost ?? ""),
            icon: data.isReaction == false
                ? const Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.grey,
                  )
                : const Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ))
      ],
    );
  }
}
