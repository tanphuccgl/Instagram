import 'package:flutter/material.dart';
import 'package:instagram/src/config/theme/my_properties.dart';
import 'package:instagram/src/constants/my_network.dart';
import 'package:instagram/src/widgets/custom_button/icon_button_outline.dart';

class StoriesProfileUser extends StatelessWidget {
  const StoriesProfileUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: MyProperties.pHorScreen,
        child: SizedBox(
          height: 64,
          child: ListView(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            children: [
              _addStoryWidget(),
              const SizedBox(
                width: 11,
              ),
              _storyWidget(),
              _storyWidget(),
              _storyWidget()
            ],
          ),
        ));
  }

  Widget _storyWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 11),
      child: XIconButtonOutline(
        icon: Container(
          height: 56,
          width: 56,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                  MyNetwork.urlAvatar,
                ),
                fit: BoxFit.cover),
            color: Colors.blue,
            shape: BoxShape.circle,
          ),
        ),
        width: 64,
        height: 64,
        isCircle: true,
        onPressed: () {},
      ),
    );
  }

  Widget _addStoryWidget() {
    return XIconButtonOutline(
      icon: const Icon(Icons.add),
      width: 64,
      height: 64,
      isCircle: true,
      onPressed: () {},
    );
  }
}
