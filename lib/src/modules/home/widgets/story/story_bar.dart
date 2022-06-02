import 'package:flutter/material.dart';

import 'package:instagram/src/modules/home/widgets/story/card_my_story.dart';
import 'package:instagram/src/modules/home/widgets/story/card_story.dart';

class StoryBar extends StatelessWidget {
  const StoryBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: SizedBox(
          height: 80,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: [
              const CardMyStory(),
              const SizedBox(
                width: 10,
              ),
              ListView.builder(
                itemBuilder: (context, index) => const CardStory(),
                itemCount: 10,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
              )
            ],
          ),
        ),
      ),
    );
  }
}
