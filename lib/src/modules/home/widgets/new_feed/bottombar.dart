import 'package:flutter/material.dart';
import 'package:instagram/src/config/theme/style.dart';

class BottombarCardHome extends StatefulWidget {
  const BottombarCardHome({Key? key}) : super(key: key);

  @override
  State<BottombarCardHome> createState() => _BottombarCardHomeState();
}

class _BottombarCardHomeState extends State<BottombarCardHome> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.favorite_sharp),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.chat_rounded),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.share),
        ),
        const Spacer(),
        Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          Text(
            '14,023 likes',
            style: Style.textTheme()
                .bodyMedium!
                .copyWith(color: Colors.white, fontWeight: FontWeight.w600),
          ),
          Text(
            '54 comments',
            style: Style.textTheme().bodyMedium!.copyWith(color: Colors.white),
          ),
        ])
      ],
    );
  }
}