import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:instagram/src/config/theme/my_colors.dart';
import 'package:instagram/src/config/theme/style.dart';
import 'package:instagram/src/constants/my_network.dart';
import 'package:instagram/src/widgets/custom_button/button_primary.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard({Key? key, this.isFollow = true, this.isLike = true})
      : super(key: key);
  final bool isFollow;
  final bool isLike;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      //delete card
      onLongPress: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 7),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(300.0),
                child: Image.network(
                  MyNetwork.urlAvatar,
                  fit: BoxFit.cover,
                  width: 44,
                  height: 44,
                ),
              ),
            ),
            Expanded(
              child: RichText(
                text: TextSpan(
                    text: 'Thagdreamjng',
                    style: Style.textTheme()
                        .bodyMedium!
                        .copyWith(fontWeight: FontWeight.w500),
                    recognizer: TapGestureRecognizer()..onTap = () {},
                    children: [
                      TextSpan(
                          text: ' and ', style: Style.textTheme().bodyMedium),
                      TextSpan(
                        text: 'Trúc Thanh',
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                      TextSpan(
                          text: ' share 4 photo.',
                          style: Style.textTheme().bodyMedium),
                      TextSpan(
                          text: ' 12h',
                          style: Style.textTheme()
                              .bodyMedium!
                              .copyWith(color: MyColors.colorGray)),
                    ]),
              ),
            ),
            Offstage(
              offstage: isFollow,
              child: XButton(
                label: 'Follow',
                onPressed: () {},
                width: 90,
                height: 28,
              ),
            ),
            Offstage(
              offstage: isLike,
              child: ClipRRect(
                child: Image.network(
                  MyNetwork.urlAvatar,
                  fit: BoxFit.cover,
                  width: 44,
                  height: 44,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
