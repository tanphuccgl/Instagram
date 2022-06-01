import 'package:flutter/material.dart';
import 'package:instagram/src/constants/my_network.dart';
import 'package:instagram/src/modules/video_show/widgets/bottom_info.dart';
import 'package:instagram/src/modules/video_show/widgets/right_toolbar.dart';

class VideoScreen extends StatelessWidget {
  const VideoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: size.width,
      child: Stack(
        fit: StackFit.passthrough,
        children: [
          Image.network(
            MyNetwork.urlAvatar,
            fit: BoxFit.fill,
          ),
          SizedBox(
            height: size.height,
            width: size.width,
            child: Row(
              children: const [
                Expanded(flex: 7, child: BottomInfo()),
                Expanded(flex: 3, child: RightToolbar()),
              ],
            ),
          )
        ],
      ),
    );
  }
}
