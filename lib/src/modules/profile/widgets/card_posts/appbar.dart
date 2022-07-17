import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/src/config/theme/my_colors.dart';
import 'package:instagram/src/config/theme/style.dart';
import 'package:instagram/src/modules/profile/logic/profile/profile_bloc.dart';
import 'package:instagram/src/widgets/bottom_sheet/bottom_sheet.dart';
import 'package:instagram/src/widgets/bottom_sheet/profile/bottom_sheet_menu_post.dart';

class AppbarCardPosts extends StatelessWidget {
  final String idPost;
  const AppbarCardPosts({Key? key, required this.idPost}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {},
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: Style.textTheme().bodyMedium!.copyWith(
                      color: Colors.white, fontWeight: FontWeight.w600),
                  children: [
                    WidgetSpan(
                      alignment: PlaceholderAlignment.middle,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(300.0),
                          child: Image.network(
                            state.data.avartarUrl ?? "",
                            fit: BoxFit.cover,
                            width: 30,
                            height: 30,
                          ),
                        ),
                      ),
                    ),
                    TextSpan(
                      text: state.data.idAccount?.username ?? "",
                    ),
                  ],
                ),
              ),
            ),
            IconButton(
                onPressed: () => XBottomSheet.show(context,
                    backgroundColor: MyColors.colorBackground,
                    widget: BottomSheetMenuPost(
                      idPost: idPost,
                    )),
                icon: const Icon(Icons.more_vert_rounded))
          ],
        );
      },
    );
  }
}
