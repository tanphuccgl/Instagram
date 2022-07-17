import 'package:flutter/material.dart';
import 'package:instagram/src/models/post_model.dart';
import 'package:instagram/src/modules/home/widgets/new_feed/appbar.dart';
import 'package:instagram/src/modules/home/widgets/new_feed/bottombar.dart';
import 'package:instagram/src/modules/home/widgets/new_feed/media_card.dart';
import 'package:instagram/src/modules/home/widgets/new_feed/position_tab_view.dart';
import 'package:instagram/src/modules/home/widgets/new_feed/status.dart';

class CardHome extends StatefulWidget {
  final XPostData data;
  const CardHome({Key? key, required this.data}) : super(key: key);

  @override
  State<CardHome> createState() => _CardHomeState();
}

class _CardHomeState extends State<CardHome> {
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
                AppbarCardHome(data: widget.data),
                const Spacer(),
                StatusCardHome(description: widget.data.description ?? ""),
                PositionTabView(
                    count: widget.data.files?.length ?? -1, index1: index),
                BottombarCardHome(data: widget.data),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
