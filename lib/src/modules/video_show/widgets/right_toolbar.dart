import 'package:flutter/material.dart';
import 'package:instagram/src/config/theme/style.dart';
import 'package:instagram/src/constants/my_network.dart';

class RightToolbar extends StatelessWidget {
  const RightToolbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Align(
        alignment: Alignment.bottomRight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_border_outlined,
                )),
            Text(
              '306k',
              style: Style.textTheme().bodySmall!.copyWith(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.share,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert_outlined,
                )),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: NetworkImage(
                          MyNetwork.urlAvatar,
                        ),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.white, width: 2)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
