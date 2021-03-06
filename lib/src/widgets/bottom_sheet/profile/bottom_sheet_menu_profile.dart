import 'package:flutter/material.dart';
import 'package:instagram/src/widgets/bottom_sheet/profile/data_profile.dart';

class BottomSheetMenuProfile extends StatelessWidget {
  const BottomSheetMenuProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: ListTile.divideTiles(
          color: Colors.transparent,
          tiles: menuProfile.map((item) {
            return ListTile(
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
