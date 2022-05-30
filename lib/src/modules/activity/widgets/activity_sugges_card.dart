import 'package:flutter/material.dart';
import 'package:instagram/src/config/theme/my_colors.dart';
import 'package:instagram/src/config/theme/style.dart';
import 'package:instagram/src/constants/my_network.dart';
import 'package:instagram/src/widgets/custom_button/button_primary.dart';
import 'package:instagram/src/widgets/text_field/text.dart';

class ActivitySuggesCard extends StatelessWidget {
  const ActivitySuggesCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 7),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(300.0),
                child: Image.network(
                  MyNetwork.urlAvatar,
                  fit: BoxFit.cover,
                  width: 50,
                  height: 50,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const XText(
                  text: 't_hhien',
                ),
                XText(
                    text: 'Hiển Nguyễn',
                    style: Style.textTheme()
                        .bodySmall!
                        .copyWith(color: MyColors.colorGray)),
                XText(
                    text: 'Follows you',
                    style: Style.textTheme()
                        .bodySmall!
                        .copyWith(color: MyColors.colorGray))
              ],
            ),
            const Spacer(),
            XButton(
              label: 'Follow',
              onPressed: () {},
              width: 90,
              height: 28,
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.clear,
                  size: 18,
                ))
          ],
        ),
      ),
    );
  }
}
