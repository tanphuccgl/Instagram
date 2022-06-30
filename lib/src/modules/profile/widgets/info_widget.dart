import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/src/config/routes/coordinator.dart';
import 'package:instagram/src/config/theme/my_colors.dart';
import 'package:instagram/src/config/theme/my_properties.dart';
import 'package:instagram/src/config/theme/style.dart';
import 'package:instagram/src/constants/my_network.dart';
import 'package:instagram/src/modules/profile/logic/follow/follow_bloc.dart';
import 'package:instagram/src/modules/profile/logic/profile/profile_bloc.dart';
import 'package:instagram/src/modules/profile/router/profile_router.dart';
import 'package:instagram/src/widgets/custom_button/button_outline.dart';
import 'package:instagram/src/widgets/custom_button/icon_button_outline.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return Padding(
          padding: MyProperties.pHorScreen,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(300.0),
                  child: Image.network(
                    MyNetwork.urlAvatar,
                    fit: BoxFit.cover,
                    width: 96,
                    height: 96,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: _statisticsWidget(context,
                        post: 54,
                        followers: state.data.totalPeopleFollowedYou ?? 0,
                        following: state.data.totalPeopleYouFollowed ?? 0))
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            _nameAndBio(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: XButtonOutline(
                      label: 'Edit Profile',
                      height: 29,
                      onPressed: () => XCoordinator.showEditProfile(context)),
                ),
                const SizedBox(
                  width: 10,
                ),
                XIconButtonOutline(
                    height: 29,
                    width: 29,
                    icon: const Icon(
                      Icons.add_a_photo_outlined,
                      color: MyColors.colorBlack,
                      size: 20,
                    ),
                    onPressed: () {}),
              ],
            )
          ]),
        );
      },
    );
  }

  Widget _nameAndBio() {
    return RichText(
      textAlign: TextAlign.left,
      text: TextSpan(
        style: Style.textTheme().titleSmall!.copyWith(
            color: MyColors.colorBlack2,
            fontSize: 12,
            fontWeight: FontWeight.w600),
        children: [
          const TextSpan(
            text: "Jacob West\n",
          ),
          TextSpan(
            text:
                'Digital goodies designer @pixsellz \nEverything is designed.',
            style: Style.textTheme()
                .titleSmall!
                .copyWith(fontWeight: FontWeight.normal),
          )
        ],
      ),
    );
  }

  Widget _statisticsWidget(BuildContext context,
      {required int post, required int followers, required int following}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _statisticItem(post, 'Posts'),
          GestureDetector(
              onTap: () {
                context.read<FollowBloc>().getFollowers();
                ProfileCoordinator.showFollow(context, 0);
              },
              child: _statisticItem(followers, 'Followers')),
          GestureDetector(
              onTap: () {
                context.read<FollowBloc>().getFollowing();

                ProfileCoordinator.showFollow(context, 1);
              },
              child: _statisticItem(following, 'Following'))
        ],
      ),
    );
  }

  Widget _statisticItem(int number, String name) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: Style.textTheme().titleSmall!.copyWith(
            color: MyColors.colorBlack2,
            fontSize: 21,
            fontWeight: FontWeight.w600),
        children: [
          TextSpan(
            text: "$number\n",
          ),
          TextSpan(
            text: name,
            style: Style.textTheme().titleSmall!.copyWith(
                  fontSize: 13,
                ),
          )
        ],
      ),
    );
  }
}
