import 'package:flutter/material.dart';
import 'package:instagram/src/constants/my_network.dart';
import 'package:instagram/src/widgets/bottom_sheet/profile/data_profile.dart';

class BottomSheetAccountProfile extends StatelessWidget {
  const BottomSheetAccountProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: ListTile.divideTiles(
          color: Colors.transparent,
          tiles: menuProfile.map((item) {
            return ListTile(
              visualDensity: const VisualDensity(vertical: 3), // to expand

              leading: ClipRRect(
                borderRadius: BorderRadius.circular(300.0),
                child: Image.network(
                  MyNetwork.urlAvatar,
                  fit: BoxFit.cover,
                  width: 50,
                  height: 50,
                ),
              ),
              dense: true,
              trailing: CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 10,
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: const BoxDecoration(
                    color: Colors.orange,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              onTap: () {},
              title: const Text(
                'leviii2k',
              ),
            );
          })).toList(),
    );
  }
}
