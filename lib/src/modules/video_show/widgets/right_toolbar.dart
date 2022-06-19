import 'package:flutter/material.dart';
import 'package:instagram/src/config/theme/style.dart';
import 'package:instagram/src/constants/my_network.dart';
import 'package:instagram/src/widgets/bottom_sheet/bottom_sheet.dart';
import 'package:instagram/src/widgets/bottom_sheet/show_video/bottom_sheet_comment_show_video.dart';
import 'package:instagram/src/widgets/bottom_sheet/show_video/bottom_sheet_menu_show_video.dart';
import 'package:instagram/src/widgets/bottom_sheet/show_video/bottom_sheet_share_show_video.dart';

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
                onPressed: () => XBottomSheet.show(context,
                    isShowLineTop: false,
                    widget: const BottomSheetCommentVideoShow()),
                icon: const Icon(
                  Icons.comment,
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
                onPressed: () => XBottomSheet.show(context,
                    isShowLineTop: false,
                    widget: const BottomSheetShareShowVideo()),
                icon: const Icon(
                  Icons.share,
                )),
            IconButton(
                onPressed: () => XBottomSheet.show(context,
                    isShowLineTop: false,
                    widget: const BottomSheetMenuShowVideo()),
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
