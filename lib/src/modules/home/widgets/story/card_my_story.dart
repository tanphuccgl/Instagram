import 'package:flutter/material.dart';
import 'package:instagram/src/config/theme/style.dart';
import 'package:instagram/src/constants/my_network.dart';

class CardMyStory extends StatelessWidget {
  const CardMyStory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(300.0),
              child: Image.network(
                MyNetwork.urlAvatar,
                fit: BoxFit.cover,
                width: 60,
                height: 60,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                    border: Border.all(color: Colors.white, width: 2)),
                child: const Icon(Icons.add, size: 15),
              ),
            )
          ],
        ),
        Text(
          'Your story',
          style: Style.textTheme().titleSmall,
        )
      ],
    );
  }
}
