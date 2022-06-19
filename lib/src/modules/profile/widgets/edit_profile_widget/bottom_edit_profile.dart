import 'package:flutter/material.dart';

class BottomEditProfile extends StatelessWidget {
  const BottomEditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: ListTile.divideTiles(
          color: Colors.black,
          tiles: _data.map((item) {
            return ListTile(
              dense: true,
              onTap: () {},
              title: Text(
                item,
                style: const TextStyle(color: Colors.blue),
              ),
            );
          })).toList(),
    );
  }
}

List<String> _data = [
  "Switch to professional account",
  "Create avatar",
  "Personal information settings"
];
