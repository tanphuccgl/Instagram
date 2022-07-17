import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/src/config/theme/my_properties.dart';
import 'package:instagram/src/constants/my_network.dart';
import 'package:instagram/src/modules/post/logic/post_bloc.dart';
import 'package:instagram/src/modules/profile/logic/profile/profile_bloc.dart';
import 'package:instagram/src/modules/profile/widgets/card_comment/card_comment.dart';
import 'package:instagram/src/modules/profile/widgets/card_comment/text_field_comment.dart';

class CommentPage extends StatelessWidget {
  final String idPost;
  const CommentPage({Key? key, required this.idPost}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, profileState) {
        return BlocBuilder<PostBloc, PostState>(
          builder: (context, state) {
            return Scaffold(
                appBar: AppBar(
                  title: const Text("Comment"),
                ),
                body: Padding(
                  padding: MyProperties.pHorScreen,
                  child: Stack(
                    children: [
                      ListView.builder(
                        itemBuilder: (context, index) {
                          return CardComment(
                            data: state.listComments[index],
                          );
                        },
                        itemCount: state.listComments.length,
                        shrinkWrap: true,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: BottomAppBar(
                          elevation: 10,
                          child: Container(
                            constraints: const BoxConstraints(
                              maxHeight: 100,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(300.0),
                                  child: Image.network(
                                    profileState.data.avartarUrl ??
                                        MyNetwork.urlAvatar,
                                    fit: BoxFit.cover,
                                    width: 30,
                                    height: 30,
                                  ),
                                ),
                                Flexible(
                                    child: TextFieldComment(
                                  onChanged: (value) => context
                                      .read<PostBloc>()
                                      .onChangeCmt(value),
                                  value: state.cmt,
                                )),
                                TextButton(
                                  child: const Text('Post',
                                      style: TextStyle(color: Colors.blue)),
                                  onPressed: () => context
                                      .read<PostBloc>()
                                      .postComment(context, idPost),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ));
          },
        );
      },
    );
  }
}
