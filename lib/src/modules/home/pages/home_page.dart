import 'package:flutter/material.dart';
import 'package:instagram/src/config/theme/my_colors.dart';
import 'package:instagram/src/constants/my_images.dart';
import 'package:instagram/src/modules/home/widgets/new_feed/card_home.dart';
import 'package:instagram/src/modules/home/widgets/story/story_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(
          MyImages.logoFlutter,
          alignment: Alignment.center,
          height: 120.0,
          width: 120.0,
          fit: BoxFit.contain,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add_box_outlined,
                color: MyColors.colorBlack,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.message_outlined,
                  color: MyColors.colorBlack))
        ],
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          const StoryBar(),
          SliverToBoxAdapter(
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => const CardHome(),
              itemCount: 10,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
            ),
          ),
        ],
      ),
    );
  }
}
