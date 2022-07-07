import 'package:flutter/material.dart';
import 'package:instagram/src/config/theme/my_colors.dart';
import 'package:instagram/src/constants/my_network.dart';
import 'package:instagram/src/modules/profile/router/profile_router.dart';

class TabProfileUser extends StatelessWidget {
  const TabProfileUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          const SizedBox(
            height: 44,
            child: TabBar(
              indicatorColor: MyColors.colorBlack,
              tabs: [
                Tab(
                    icon: Icon(
                  Icons.grid_3x3_outlined,
                  color: MyColors.colorBlack,
                )),
                Tab(
                    icon: Icon(Icons.people_alt_sharp,
                        color: MyColors.colorBlack)),
              ],
            ),
          ),
          SizedBox(
            height: 500,
            child: TabBarView(
              children: [
                GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 3,
                    crossAxisSpacing: 4.0,
                    physics: const NeverScrollableScrollPhysics(),
                    mainAxisSpacing: 4.0,
                    children: List.generate(13, (index) {
                      return GestureDetector(
                        onTap: () =>
                            ProfileCoordinator.showPostProfilePage(context),
                        child: Image.network(
                          MyNetwork.urlAvatar,
                          fit: BoxFit.cover,
                          width: 96,
                          height: 96,
                        ),
                      );
                    })),
                const Icon(
                  Icons.directions_transit,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
