import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/src/config/theme/my_colors.dart';
import 'package:instagram/src/constants/my_images.dart';
import 'package:instagram/src/constants/my_network.dart';
import 'package:instagram/src/modules/post/logic/post_bloc.dart';
import 'package:instagram/src/modules/profile/router/profile_router.dart';

class TabProfile extends StatelessWidget {
  const TabProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostBloc, PostState>(
      builder: (context, state) {
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
                    //     icon: Image.asset(MyIcons.icPhotoForYou,
                    //         fit: BoxFit.cover,
                    //         height: 20,
                    //         width: 20,
                    //         color: MyColors.colorBlack)),
                  ],
                ),
              ),
              SizedBox(
                height: (((state.listPosts.data ?? []).length + 1) ~/ 3) * 140,
                child: TabBarView(
                  children: [
                    GridView.builder(
                      itemBuilder: (context, index) {
                        return GestureDetector(
                            onTap: () =>
                                ProfileCoordinator.showPostProfilePage(context),
                            child: Stack(
                              children: [
                                Positioned.fill(
                                  child: Image.network(
                                    state.listPosts.data?[index].files?.first
                                            .path ??
                                        MyNetwork.urlAvatar,
                                    fit: BoxFit.cover,
                                    width: 96,
                                    height: 96,
                                  ),
                                ),
                                (state.listPosts.data?[index].files?.length ??
                                            0) >
                                        1
                                    ? const Positioned.fill(
                                        child: Align(
                                        alignment: Alignment.topRight,
                                        child: Icon(
                                          Icons.image,
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
                      itemCount: (state.listPosts.data ?? []).length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                    ),
                    // GridView.builder(
                    //   itemBuilder: (context, index) {
                    //     return GestureDetector(
                    //         onTap: () =>
                    //             ProfileCoordinator.showPostProfilePage(context),
                    //         child: Stack(
                    //           children: [
                    //             Positioned.fill(
                    //               child: Image.network(
                    //                 state.listPosts[index].files?.first.path ??
                    //                     "",
                    //                 fit: BoxFit.cover,
                    //                 width: 96,
                    //                 height: 96,
                    //               ),
                    //             ),
                    //             (state.listPosts[index].files?.length ?? 0) > 1
                    //                 ? const Positioned.fill(
                    //                     child: Align(
                    //                     alignment: Alignment.topRight,
                    //                     child: Icon(
                    //                       Icons.abc_outlined,
                    //                       color: Colors.black,
                    //                     ),
                    //                   ))
                    //                 : const SizedBox.shrink()
                    //           ],
                    //         ));
                    //   },
                    //   gridDelegate:
                    //       const SliverGridDelegateWithFixedCrossAxisCount(
                    //           crossAxisCount: 3,
                    //           crossAxisSpacing: 4.0,
                    //           mainAxisSpacing: 4.0),
                    //   itemCount: state.listPosts.length,
                    //   shrinkWrap: true,
                    //   physics: const NeverScrollableScrollPhysics(),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
