import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/src/modules/home/logic/home_bloc.dart';

import 'package:instagram/src/modules/home/widgets/story/card_my_story.dart';
import 'package:instagram/src/modules/home/widgets/story/card_story.dart';

class StoryBar extends StatelessWidget {
  const StoryBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
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
                    itemBuilder: (context, index) =>
                        CardStory(data: state.listStory[index]),
                    itemCount: state.listStory.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
