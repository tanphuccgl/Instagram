import 'package:flutter/material.dart';
import 'package:instagram/src/constants/my_network.dart';
import 'package:instagram/src/models/follow_model.dart';
import 'package:instagram/src/widgets/custom_button/button_primary.dart';

class FollowCard extends StatelessWidget {
  final XUserData data;
  final bool isFollowers;

  const FollowCard({
    Key? key,
    this.isFollowers = true,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(300.0),
          child: Image.network(
            MyNetwork.urlAvatar,
            fit: BoxFit.cover,
            width: 30,
            height: 30,
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(isFollowers == true
                  ? data.idAccountFollow?.username ?? ""
                  : data.idAccountFollowed?.username ?? ""),
              Text(isFollowers == true ? "" : ""),
            ],
          ),
        ),
        XButton(
          label: 'Remove',
          onPressed: () {},
          width: 90,
          height: 28,
        ),
      ],
    );
  }
}
