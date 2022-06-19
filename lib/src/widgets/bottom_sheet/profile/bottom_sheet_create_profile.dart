import 'package:flutter/material.dart';
import 'package:instagram/src/widgets/bottom_sheet/profile/data_profile.dart';

class BottomSheetCreateProfile extends StatelessWidget {
  const BottomSheetCreateProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Create'),
        Column(
          children: ListTile.divideTiles(
              color: Colors.black,
              tiles: createProfile.map((item) {
                return ListTile(
                  leading: Icon(item.icon),
                  dense: true,
                  onTap: () {},
                  title: Text(
                    item.title,
                  ),
                );
              })).toList(),
        ),
      ],
    );
  }
}
