import 'package:flutter/material.dart';
import 'package:instagram/src/widgets/bottom_sheet/profile/data_profile.dart';

class BottomSheetFollowing extends StatelessWidget {
  const BottomSheetFollowing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: ListTile.divideTiles(
          color: Colors.transparent,
          tiles: _menuFollowing.map((item) {
            return ListTile(
              leading: item.title == "Unfollow"
                  ? const SizedBox.expand()
                  : Icon(item.icon),
              dense: true,
              onTap: () {},
              title: Text(
                item.title,
              ),
            );
          })).toList(),
    );
  }
}

List<MenuProfile> _menuFollowing = [
  MenuProfile(title: 'Add to Close Friends list', icon: Icons.star),
  MenuProfile(title: 'Mute', icon: Icons.arrow_forward_ios_sharp),
  MenuProfile(title: 'Restrict', icon: Icons.arrow_forward_ios_sharp),
  MenuProfile(
    title: 'Unfollow',
  ),
];
