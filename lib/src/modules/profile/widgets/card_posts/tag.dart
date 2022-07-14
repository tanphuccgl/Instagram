import 'package:flutter/material.dart';
import 'package:instagram/src/config/theme/style.dart';

class TagCardPosts extends StatelessWidget {
  const TagCardPosts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Suggested',
      style: Style.textTheme().labelSmall,
    );
  }
}
