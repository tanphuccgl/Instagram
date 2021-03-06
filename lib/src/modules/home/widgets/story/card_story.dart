import 'package:flutter/material.dart';
import 'package:instagram/src/config/theme/style.dart';
import 'package:instagram/src/constants/my_network.dart';
import 'package:instagram/src/models/post_model.dart';
import 'package:instagram/src/widgets/custom_button/icon_button_outline.dart';

class CardStory extends StatelessWidget {
  final XPostData data;
  const CardStory({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: XIconButtonOutline(
            side: const BorderSide(color: Colors.red, width: 2),
            icon: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      data.files?.first.path ?? MyNetwork.urlAvatar,
                    ),
                    fit: BoxFit.cover),
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
            ),
            width: 64,
            height: 64,
            isCircle: true,
            onPressed: () {},
          ),
        ),
        Text(
          data.idAccount?.username ?? "",
          style: Style.textTheme().titleSmall,
        )
      ],
    );
  }
}
