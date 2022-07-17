import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:instagram/src/config/routes/auto_route.gr.dart';
import 'package:instagram/src/config/theme/my_colors.dart';
import 'package:instagram/src/utils/enum/tab_index.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
        routes: const [
          HomeTab(),
          SearchTab(),
          // VideoShowTab(),
          // ActivityTab(),
          ProfileTab(),
        ],
        bottomNavigationBuilder: (_, tabsRouter) {
          return BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            selectedItemColor: MyColors.colorPrimary,
            backgroundColor: MyColors.colorWhite,
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: true,
            onTap: (index) {
              if (index == tabsRouter.activeIndex) {
                tabsRouter.stackRouterOfIndex(index)?.popUntilRoot();
              } else {
                tabsRouter.setActiveIndex(index);
              }
            },
            items: [
              for (final item in TabIndex.values)
                BottomNavigationBarItem(
                    activeIcon: item.activeIconOf(),
                    icon: item.iconOf(),
                    label: ''),
            ],
          );
        });
  }
}
