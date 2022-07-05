import 'package:flutter/material.dart';
import 'package:instagram/src/constants/my_network.dart';
import 'package:instagram/src/models/search_user_name_model.dart';

class SearchCard extends StatelessWidget {
  final XSearchUserNameData user;
  const SearchCard({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(300.0),
          child: Image.network(
            user.idProfile?.avartarUrl ?? MyNetwork.urlAvatar,
            fit: BoxFit.cover,
            width: 30,
            height: 30,
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(user.username ?? ""),
              Text(user.idProfile?.fullName ?? ""),
            ],
          ),
        ),
      ],
    );
  }
}
