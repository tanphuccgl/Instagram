import 'package:flutter/material.dart';

class BottomSheetMenuShowVideo extends StatelessWidget {
  const BottomSheetMenuShowVideo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}

List<String> _data = [
  "Report...",
  "Not Interested",
  "Copy link",
  "Share to...",
  "Save",
  "Reix This Reel"
];
