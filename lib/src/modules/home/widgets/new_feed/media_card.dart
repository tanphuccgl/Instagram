import 'package:flutter/material.dart';

class MediaCard extends StatelessWidget {
  final String path;
  const MediaCard({Key? key, required this.path}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: size.height * 7 / 10,
      child: Image.network(
        path,
        fit: BoxFit.fill,
      ),
    );
  }
}
