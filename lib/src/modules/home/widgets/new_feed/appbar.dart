import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:instagram/src/config/theme/style.dart';
import 'package:instagram/src/constants/my_network.dart';

class AppbarCardHome extends StatelessWidget {
  const AppbarCardHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {},
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: Style.textTheme()
                  .bodyMedium!
                  .copyWith(color: Colors.white, fontWeight: FontWeight.w600),
              children: [
                WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(300.0),
                      child: Image.network(
                        MyNetwork.urlAvatar,
                        fit: BoxFit.cover,
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ),
                ),
                const TextSpan(
                  text: "n_nhii_ ",
                ),
                TextSpan(
                  text: "3d ",
                  style: Style.textTheme().bodyMedium!.copyWith(
                        color: Colors.grey,
                      ),
                ),
                TextSpan(
                  text: " • Follow",
                  recognizer: TapGestureRecognizer()..onTap = () {},
                ),
              ],
            ),
          ),
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert_rounded))
      ],
    );
  }
}
