import 'package:flutter/material.dart';
import 'package:instagram/src/modules/video_show/widgets/bottom_info/info.dart';
import 'package:instagram/src/modules/video_show/widgets/bottom_info/music_and_location.dart';
import 'package:instagram/src/modules/video_show/widgets/bottom_info/status.dart';
import 'package:instagram/src/modules/video_show/widgets/bottom_info/tag_filter.dart';

class BottomInfo extends StatelessWidget {
  const BottomInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          TagFilter(),
          Info(),
          Status(),
          MusicAndLocation(),
        ],
      ),
    );
  }
}
