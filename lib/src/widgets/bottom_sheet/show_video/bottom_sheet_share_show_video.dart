import 'package:flutter/material.dart';
import 'package:instagram/src/modules/video_show/widgets/comment/send_card.dart';

class BottomSheetShareShowVideo extends StatelessWidget {
  const BottomSheetShareShowVideo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Column(children: [
        TextField(
          style: TextStyle(
            fontSize: 15.0,
            color: Theme.of(context).textTheme.headline6!.color,
          ),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(10.0),
            border: InputBorder.none,
            enabledBorder: InputBorder.none,
            hintText: "Write a message...",
            hintStyle: TextStyle(
              fontSize: 15.0,
              color: Theme.of(context).textTheme.headline6!.color,
            ),
          ),
          maxLines: null,
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.2),
              borderRadius: BorderRadius.circular(5)),
          child: const TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search, color: Colors.grey),
              suffixIcon: Icon(Icons.abc),
              border: InputBorder.none,
              hintText: 'Search...',
            ),
            maxLines: 1,
            minLines: 1,
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return const SendCard();
            },
            shrinkWrap: true,
            itemCount: 30,
          ),
        ),
      ]),
    );
  }
}
