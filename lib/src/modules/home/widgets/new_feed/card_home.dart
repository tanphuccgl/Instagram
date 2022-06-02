import 'package:flutter/material.dart';
import 'package:instagram/src/config/theme/style.dart';
import 'package:instagram/src/modules/home/widgets/new_feed/appbar.dart';
import 'package:instagram/src/modules/home/widgets/new_feed/bottombar.dart';
import 'package:instagram/src/modules/home/widgets/new_feed/media_card.dart';
import 'package:instagram/src/modules/home/widgets/new_feed/position_tab_view.dart';
import 'package:instagram/src/modules/home/widgets/new_feed/status.dart';
import 'package:instagram/src/modules/home/widgets/new_feed/tag.dart';

class CardHome extends StatelessWidget {
  const CardHome({Key? key}) : super(key: key);

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
            children: const [
              MediaCard(),
              MediaCard(),
              MediaCard(),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppbarCardHome(),
                const Spacer(),
                const TagCardHome(),
                const StatusCardHome(),
                Text(
                  'Add a comment...',
                  style: Style.textTheme().bodyMedium!.copyWith(
                      color: Colors.white, fontWeight: FontWeight.w600),
                ),
                const PositionTabView(),
                const BottombarCardHome(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
