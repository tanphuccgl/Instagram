import 'package:flutter/material.dart';
import 'package:instagram/src/constants/my_network.dart';

class BottomSheetChangeProfilePhoto extends StatelessWidget {
  const BottomSheetChangeProfilePhoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(300.0),
              child: Image.network(
                MyNetwork.urlAvatar,
                fit: BoxFit.cover,
                width: 50,
                height: 50,
              ),
            ),
            Column(
              children: const [
                Text('Synced profile photo'),
                Text('Instagram, Facebook'),
              ],
            )
          ],
        ),
        Column(
          children: ListTile.divideTiles(
              color: Colors.transparent,
              tiles: _data.map((item) {
                return ListTile(
                  dense: true,
                  onTap: () {},
                  title: Text(
                    item,
                  ),
                );
              })).toList(),
        ),
      ],
    );
  }
}

List<String> _data = [
  "New Profile Photo",
  "Remove photo",
  "Manage Sync Settings"
];
