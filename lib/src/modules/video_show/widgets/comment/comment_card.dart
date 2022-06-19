import 'package:flutter/material.dart';
import 'package:instagram/src/constants/my_network.dart';

class CommentCard extends StatelessWidget {
  const CommentCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(300.0),
          child: Image.network(
            MyNetwork.urlAvatar,
            fit: BoxFit.cover,
            width: 30,
            height: 30,
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('tarakellie_'),
              SizedBox(
                width: 120,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text('2d'),
                    Text('205 like'),
                    Text('Reply'),
                  ],
                ),
              )
            ],
          ),
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite,
              color: Colors.green,
            ))
      ],
    );
  }
}
