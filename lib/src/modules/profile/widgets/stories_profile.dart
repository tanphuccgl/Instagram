import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/src/config/theme/my_properties.dart';
import 'package:instagram/src/modules/post/logic/post_bloc.dart';
import 'package:instagram/src/widgets/custom_button/icon_button_outline.dart';

class StoriesProfile extends StatelessWidget {
  const StoriesProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostBloc, PostState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Padding(
              padding: MyProperties.pHorScreen,
              child: SizedBox(
                  height: 64,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      _addStoryWidget(),
                      const SizedBox(
                        width: 11,
                      ),
                      ListView(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          children: state.listStorys
                              .map((e) =>
                                  _storyWidget(e.files?.first.path ?? ""))
                              .toList()),
                    ],
                  ))),
        );
      },
    );
  }

  Widget _storyWidget(String path) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 11),
      child: XIconButtonOutline(
        icon: Container(
          height: 56,
          width: 56,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                  path,
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
