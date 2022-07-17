import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/src/modules/post/logic/post_bloc.dart';
import 'package:instagram/src/widgets/bottom_sheet/profile/data_profile.dart';

class BottomSheetCreateProfile extends StatelessWidget {
  const BottomSheetCreateProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Create'),
        Column(
          children: ListTile.divideTiles(
              color: const Color.fromARGB(255, 240, 227, 227),
              tiles: createProfile.map((item) {
                return ListTile(
                  dense: true,
                  onTap: () {
                    context.read<PostBloc>().onChangeType(item.title);

                    switch (item.title) {
                      case "Post":
                        context.read<PostBloc>().onCreatePost(context);
                        break;
                      case "Reel":
                        break;
                      case "Story":
                        context.read<PostBloc>().onCreateStory(context);

                        break;
                      case "Story Highlight":
                        break;
                      case "Live":
                        break;
                      case "Guide":
                        break;

                      default:
                    }
                  },
                  title: Text(
                    item.title,
                  ),
                );
              })).toList(),
        ),
      ],
    );
  }
}
