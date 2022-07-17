import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/src/config/theme/my_colors.dart';
import 'package:instagram/src/constants/my_images.dart';
import 'package:instagram/src/constants/my_network.dart';
import 'package:instagram/src/modules/post/logic/post_bloc.dart';
import 'package:instagram/src/modules/profile/router/profile_router.dart';

class TabProfileUser extends StatelessWidget {
  const TabProfileUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostBloc, PostState>(builder: (context, state) {
      return DefaultTabController(
        length: 1,
        child: Column(
          children: [
            SizedBox(
              height: 44,
              child: TabBar(
                indicatorColor: MyColors.colorBlack,
                tabs: [
                  Tab(
                      icon: Image.asset(
                    MyIcons.icGrid,
                    fit: BoxFit.cover,
                    height: 20,
                    width: 20,
                    color: MyColors.colorBlack,
                  )),
                  // Tab(
                  //     icon: Icon(Icons.people_alt_sharp,
                  //         color: MyColors.colorBlack)),
                ],
              ),
            ),
            SizedBox(
              height: 500,
              child: TabBarView(
                children: [
                  GridView.builder(
                    itemBuilder: (context, index) {
                      return GestureDetector(
                          onTap: () => ProfileCoordinator.showPostProfilePage(
                              context,
                              isOtherUser: true),
                          child: Stack(
                            children: [
                              Positioned.fill(
                                child: Image.network(
                                  state.listPosts1.data?[index].files?.first
                                          .path ??
                                      MyNetwork.urlAvatar,
                                  fit: BoxFit.cover,
                                  width: 96,
                                  height: 96,
                                ),
                              ),
                              (state.listPosts1.data?[index].files?.length ??
                                          0) >
                                      1
                                  ? const Positioned.fill(
                                      child: Align(
                                      alignment: Alignment.topRight,
                                      child: Icon(
                                        Icons.abc_outlined,
                                        color: Colors.black,
                                      ),
                                    ))
                                  : const SizedBox.shrink()
                            ],
                          ));
                    },
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 4.0,
                            mainAxisSpacing: 4.0),
                    itemCount: (state.listPosts1.data ?? []).length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                  ),
                  // const Icon(
                  //   Icons.directions_transit,
                  //   color: Colors.black,
                  // ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
