import 'package:flutter/material.dart';
import 'package:instagram/src/config/theme/style.dart';
import 'package:instagram/src/constants/my_network.dart';
import 'package:instagram/src/models/post_model.dart';

class AppbarCardHome extends StatelessWidget {
  final XPostData data;
  const AppbarCardHome({Key? key, required this.data}) : super(key: key);

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
                        data.idProfie?.avartarUrl ?? MyNetwork.urlAvatar,
                        fit: BoxFit.cover,
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ),
                ),
                TextSpan(
                  text: data.idAccount?.username ?? "",
                ),
                // TextSpan(
                //   text: "3d ",
                //   style: Style.textTheme().bodyMedium!.copyWith(
                //         color: Colors.grey,
                //       ),
                // ),
                // TextSpan(
                //   text: " • Follow",
                //   recognizer: TapGestureRecognizer()..onTap = () {},
                // ),
              ],
            ),
          ),
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert_rounded))
      ],
    );
  }
}
