import 'package:flutter/material.dart';
import 'package:instagram/src/constants/my_network.dart';
import 'package:instagram/src/widgets/custom_button/button_primary.dart';

class SendCard extends StatelessWidget {
  const SendCard({Key? key}) : super(key: key);

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
            children: const [
              Text('tarakellie_'),
              Text('iamthanhtruc'),
            ],
          ),
        ),
        XButton(
          label: 'Send',
          onPressed: () {},
          width: 90,
          height: 28,
        ),
      ],
    );
  }
}
