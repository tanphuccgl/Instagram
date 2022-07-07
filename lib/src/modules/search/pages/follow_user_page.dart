import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/src/config/theme/my_colors.dart';
import 'package:instagram/src/modules/profile/logic/follow/follow_bloc.dart';
import 'package:instagram/src/modules/search/logic/profile_user_bloc.dart';
import 'package:instagram/src/modules/search/widgets/profile_user/tab_follow_user.dart';

class FollowUserPage extends StatelessWidget {
  const FollowUserPage({Key? key, required this.initialIndex})
      : super(key: key);
  final int initialIndex;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileUserBloc, ProfileUserState>(
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
                        context
                            .read<FollowBloc>()
                            .getFollowersUser(state.data.idAccount?.id ?? "");
                      } else {
                        context
                            .read<FollowBloc>()
                            .getFollowingUser(state.data.idAccount?.id ?? "");
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
                      TabFollowUser(),
                      TabFollowUser(isFollowers: false),
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
