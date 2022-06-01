import 'package:flutter/material.dart';
import 'package:instagram/src/config/theme/style.dart';
import 'package:instagram/src/constants/my_network.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(300.0),
          child: Image.network(
            MyNetwork.urlAvatar,
            fit: BoxFit.cover,
            width: 40,
            height: 40,
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          'Tanphucc',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Style.textTheme().titleMedium!.copyWith(
                color: Colors.white,
                fontSize: 17,
              ),
        ),
        const SizedBox(
          width: 10,
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 5.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(color: Colors.white, width: 2)),
            child: Text(
              'Follow',
              style: Style.textTheme().titleMedium!.copyWith(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ],
    );
  }
}
