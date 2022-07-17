import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/src/modules/post/logic/post_bloc.dart';

class BottomSheetMenuPost extends StatelessWidget {
  final String idPost;
  const BottomSheetMenuPost({Key? key, required this.idPost}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Posts'),
        Column(
          children: ListTile.divideTiles(
              color: Colors.black,
              tiles: _data.map((item) {
                return ListTile(
                  dense: true,
                  onTap: () {
                    switch (item) {
                      case "Delete":
                        break;
                      case "Hide like count":
                        context
                            .read<PostBloc>()
                            .postHandleCountReaction(context, idPost);
                        break;
                      case "Turn off commenting":
                        context
                            .read<PostBloc>()
                            .postHandleTurnOffComment(context, idPost);

                        break;

                      default:
                    }
                  },
                  title: Text(
                    item,
                  ),
                );
              })).toList(),
        ),
      ],
    );
  }
}

List<String> _data = ["Delete", "Hide like count", "Turn off commenting"];
