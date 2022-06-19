import 'package:flutter/material.dart';
import 'package:instagram/src/modules/home/widgets/new_feed/card_home.dart';

class PostProfilePage extends StatelessWidget {
  const PostProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Posts',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => const CardHome(),
        itemCount: 10,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
