import 'package:flutter/material.dart';
import 'package:instagram/src/modules/video_show/widgets/video_screen.dart';

class VideoShowPage extends StatelessWidget {
  const VideoShowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.passthrough,
          children: [
            PageView(
              controller: controller,
              scrollDirection: Axis.vertical,
              children: const [
                VideoScreen(),
                VideoScreen(),
                VideoScreen(),
                VideoScreen(),
                VideoScreen(),
                VideoScreen(),
              ],
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.camera_alt_outlined)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
