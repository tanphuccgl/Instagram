import 'package:flutter/material.dart';
import 'package:instagram/src/constants/my_network.dart';

class MediaCard extends StatelessWidget {
  const MediaCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: size.height * 7 / 10,
      child: Image.network(
        MyNetwork.urlAvatar,
        fit: BoxFit.fill,
      ),
    );
  }
}
