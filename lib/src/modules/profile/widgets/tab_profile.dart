import 'package:flutter/material.dart';
import 'package:instagram/src/config/theme/my_colors.dart';

class TabProfile extends StatelessWidget {
  const TabProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: const [
          SizedBox(
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
                Icon(Icons.directions_car),
                Icon(Icons.directions_transit),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
