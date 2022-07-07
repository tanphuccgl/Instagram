import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/src/config/routes/coordinator.dart';
import 'package:instagram/src/config/theme/my_colors.dart';
import 'package:instagram/src/config/theme/my_properties.dart';
import 'package:instagram/src/config/theme/style.dart';
import 'package:instagram/src/constants/my_network.dart';
import 'package:instagram/src/modules/profile/logic/follow/follow_bloc.dart';
import 'package:instagram/src/modules/search/logic/profile_user_bloc.dart';
import 'package:instagram/src/modules/search/router/search_router.dart';
import 'package:instagram/src/widgets/bottom_sheet/bottom_sheet.dart';
import 'package:instagram/src/widgets/bottom_sheet/profile_user/bottom_sheet_following.dart';
import 'package:instagram/src/widgets/custom_button/button_outline.dart';
import 'package:instagram/src/widgets/custom_button/icon_button_outline.dart';

class InfoUserWidget extends StatelessWidget {
  const InfoUserWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileUserBloc, ProfileUserState>(
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
                    state.data.avartarUrl ?? MyNetwork.urlAvatar,
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
                        idAccount: state.data.idAccount?.id ?? "",
                        post: state.data.totalPost ?? 0,
                        followers: state.data.totalPeopleFollowedYou ?? 0,
                        following: state.data.totalPeopleYouFollowed ?? 0))
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            _nameAndBio(state.data.fullName ?? "", state.data.bio ?? ""),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                state.data.isFollow == true
                    ? XButtonOutline(
                        label: 'Following',
                        width: 150,
                        height: 29,
                        onPressed: () => XBottomSheet.show(context,
                            backgroundColor: MyColors.colorBackground,
                            widget: const BottomSheetFollowing()),
                      )
                    : XButtonOutline(
                        label: 'Follow',
                        height: 29,
                        onPressed: () {},
                        width: 150,
                      ),
                const SizedBox(
                  width: 10,
                ),
                XButtonOutline(
                  label: 'Message',
                  height: 29,
                  onPressed: () => XCoordinator.showEditProfile(context),
                  width: 150,
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

  Widget _nameAndBio(String name, String bio) {
    return RichText(
      textAlign: TextAlign.left,
      text: TextSpan(
        style: Style.textTheme().titleSmall!.copyWith(
            color: MyColors.colorBlack2,
            fontSize: 12,
            fontWeight: FontWeight.w600),
        children: [
          TextSpan(
            text: "$name\n",
          ),
          TextSpan(
            text: bio,
            style: Style.textTheme()
                .titleSmall!
                .copyWith(fontWeight: FontWeight.normal),
          )
        ],
      ),
    );
  }

  Widget _statisticsWidget(BuildContext context,
      {required int post,
      required int followers,
      required int following,
      required String idAccount}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _statisticItem(post, 'Posts'),
          GestureDetector(
              onTap: () {
                context.read<FollowBloc>().getFollowersUser(idAccount);
                SearchCoordinator.showFollow(context, 0);
              },
              child: _statisticItem(followers, 'Followers')),
          GestureDetector(
              onTap: () {
                context.read<FollowBloc>().getFollowingUser(idAccount);

                SearchCoordinator.showFollow(context, 1);
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
