import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/src/modules/profile/logic/follow/follow_bloc.dart';
import 'package:instagram/src/modules/search/widgets/profile_user/follow_card.dart';
import 'package:instagram/src/modules/search/widgets/search_bar.dart';

class TabFollowUser extends StatelessWidget {
  const TabFollowUser({Key? key, this.isFollowers = true}) : super(key: key);
  final bool isFollowers;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FollowBloc, FollowState>(builder: (context, state) {
      return Column(
        children: [
          const SearchBar(),
          ListView.builder(
            itemBuilder: (context, index) {
              return FollowUserCard(
                data: (state.dataFollowUser.data ?? [])[index],
                isFollowers: isFollowers,
              );
            },
            shrinkWrap: true,
            itemCount: (state.dataFollowUser.meta?.total ?? 0),
          ),
        ],
      );
    });
  }
}
