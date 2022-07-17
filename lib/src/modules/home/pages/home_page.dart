import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/src/config/theme/my_colors.dart';
import 'package:instagram/src/constants/my_images.dart';
import 'package:instagram/src/modules/account/logic/account_bloc.dart';
import 'package:instagram/src/modules/home/logic/home_bloc.dart';
import 'package:instagram/src/modules/home/widgets/new_feed/card_home.dart';
import 'package:instagram/src/modules/home/widgets/story/story_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
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
                  onPressed: () => context.read<AccountBloc>().logout(),
                  icon: const Icon(
                    Icons.add_box_outlined,
                    color: MyColors.colorBlack,
                  )),
              // IconButton(
              //     onPressed: () => XCoordinator.showChats(context),
              //     icon: const Icon(Icons.message_outlined,
              //         color: MyColors.colorBlack))
            ],
          ),
          body: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              const StoryBar(),
              SliverToBoxAdapter(
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) =>
                      CardHome(data: state.listPost[index]),
                  itemCount: state.listPost.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
