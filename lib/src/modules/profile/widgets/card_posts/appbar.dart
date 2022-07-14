import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/src/config/theme/style.dart';
import 'package:instagram/src/modules/profile/logic/profile/profile_bloc.dart';

class AppbarCardPosts extends StatelessWidget {
  const AppbarCardPosts({Key? key}) : super(key: key);

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
                onPressed: () {}, icon: const Icon(Icons.more_vert_rounded))
          ],
        );
      },
    );
  }
}
