import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/src/config/theme/my_colors.dart';
import 'package:instagram/src/modules/profile/logic/follow/follow_bloc.dart';
import 'package:instagram/src/modules/profile/logic/profile/profile_bloc.dart';
import 'package:instagram/src/modules/profile/widgets/follow_widget/tab_follow.dart';

class FollowPage extends StatelessWidget {
  const FollowPage({Key? key, required this.initialIndex}) : super(key: key);
  final int initialIndex;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(title: Text(state.data.idAccount?.username ?? "")),
          body: DefaultTabController(
            initialIndex: initialIndex,
            length: 2,
            child: Column(
              children: [
                SizedBox(
                  height: 44,
                  child: TabBar(
                    onTap: (value) {
                      if (value == 0) {
                        context.read<FollowBloc>().getFollowers();
                      } else {
                        context.read<FollowBloc>().getFollowing();
                      }
                    },
                    indicatorColor: MyColors.colorBlack,
                    tabs: [
                      Tab(
                        child: Text(
                          "${state.data.totalPeopleFollowedYou ?? 0} followers",
                          style: const TextStyle(color: Colors.black),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "${state.data.totalPeopleYouFollowed ?? 0} following",
                          style: const TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 500,
                  child: TabBarView(
                    children: [
                      TabFollow(),
                      TabFollow(isFollowers: false),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
