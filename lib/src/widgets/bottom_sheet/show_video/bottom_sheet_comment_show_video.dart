import 'package:flutter/material.dart';
import 'package:instagram/src/constants/my_network.dart';
import 'package:instagram/src/modules/video_show/widgets/comment/comment_card.dart';

class BottomSheetCommentVideoShow extends StatelessWidget {
  const BottomSheetCommentVideoShow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Scaffold(
        appBar: AppBar(
            title: const Text('Commnets'),
            leading: const BackButton(),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.share))
            ]),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return const CommentCard();
                },
                shrinkWrap: true,
                itemCount: 30,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: BottomAppBar(
                elevation: 10,
                color: Theme.of(context).primaryColor,
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
                          MyNetwork.urlAvatar,
                          fit: BoxFit.cover,
                          width: 30,
                          height: 30,
                        ),
                      ),
                      Flexible(
                        child: TextField(
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Theme.of(context).textTheme.headline6!.color,
                          ),
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(10.0),
                            border: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            hintText: "Add a comment...",
                            hintStyle: TextStyle(
                              fontSize: 15.0,
                              color:
                                  Theme.of(context).textTheme.headline6!.color,
                            ),
                          ),
                          maxLines: null,
                        ),
                      ),
                      TextButton(
                        child: const Text('Post',
                            style: TextStyle(color: Colors.blue)),
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
