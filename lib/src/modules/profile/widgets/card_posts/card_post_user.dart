import 'package:flutter/material.dart';
import 'package:instagram/src/models/post_model.dart';
import 'package:instagram/src/modules/home/widgets/new_feed/media_card.dart';
import 'package:instagram/src/modules/home/widgets/new_feed/position_tab_view.dart';
import 'package:instagram/src/modules/profile/widgets/card_posts/appbar.dart';
import 'package:instagram/src/modules/profile/widgets/card_posts/bottombar.dart';
import 'package:instagram/src/modules/profile/widgets/card_posts/status.dart';

class CardPostUser extends StatefulWidget {
  final XPostData data;
  const CardPostUser({Key? key, required this.data}) : super(key: key);

  @override
  State<CardPostUser> createState() => _CardPostUserState();
}

class _CardPostUserState extends State<CardPostUser> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final controller = PageController();

    return SizedBox(
      width: size.width,
      height: size.height * 7 / 10,
      child: Stack(
        fit: StackFit.passthrough,
        children: [
          PageView(
              physics: const BouncingScrollPhysics(),
              controller: controller,
              scrollDirection: Axis.horizontal,
              onPageChanged: (page) => setState(() {
                    index = page;
                  }),
              children: (widget.data.files ?? [])
                  .map((e) => MediaCard(path: e.path ?? ""))
                  .toList()),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppbarCardPosts(),
                const Spacer(),
                StatusCardPosts(description: widget.data.description ?? ""),
                PositionTabView(
                    count: widget.data.files?.length ?? -1, index1: index),
                const BottombarCardPosts(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
