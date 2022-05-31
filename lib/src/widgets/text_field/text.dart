import 'package:flutter/material.dart';
import 'package:instagram/src/config/theme/style.dart';

class XText extends StatelessWidget {
  const XText({Key? key, required this.text, this.style}) : super(key: key);
  final String text;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: style ?? Style.textTheme().bodySmall,
    );
  }
}
