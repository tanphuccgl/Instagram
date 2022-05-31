import 'package:flutter/material.dart';
import 'package:instagram/src/constants/my_network.dart';

class MediaCard extends StatelessWidget {
  const MediaCard({Key? key, this.isVideo = false, this.isImages = false})
      : super(key: key);
  final bool? isVideo;
  final bool? isImages;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 124,
      width: 124,
      child: Stack(
        fit: StackFit.passthrough,
        children: [
          Image.network(
            MyNetwork.urlAvatar,
            fit: BoxFit.fill,
          ),
          Offstage(
            offstage: isVideo == false && isImages == false,
            child: Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                      isVideo == true
                          ? Icons.video_call_outlined
                          : Icons.perm_media_sharp,
                      size: 15),
                )),
          )
        ],
      ),
    );
  }
}
