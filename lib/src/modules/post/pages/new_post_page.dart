import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/src/config/routes/coordinator.dart';
import 'package:instagram/src/config/theme/my_colors.dart';
import 'package:instagram/src/config/theme/my_properties.dart';
import 'package:instagram/src/modules/post/logic/post_bloc.dart';
import 'package:instagram/src/modules/post/widgets/text_field_caption.dart';

class NewPostPage extends StatelessWidget {
  const NewPostPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          elevation: 0,
          leading: BackButton(
            color: Colors.black,
            onPressed: () => XCoordinator.pop(context),
          ),
          backgroundColor: MyColors.colorWhite,
          title: const Text(
            'New Post',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            IconButton(
                onPressed: () => context.read<PostBloc>().uploadPost(context),
                icon: const Icon(
                  Icons.check,
                  color: Colors.blue,
                )),
          ],
        ),
        body: BlocBuilder<PostBloc, PostState>(
          builder: (context, state) {
            return Padding(
              padding: MyProperties.pHorScreen,
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Image.file(
                          File(state.files.first.path!),
                          fit: BoxFit.fill,
                          height: 120,
                          width: 100,
                        ),
                      ),
                      Expanded(
                          child: TextFieldCaption(
                        value: state.description ?? "",
                        onChanged: (value) =>
                            context.read<PostBloc>().changeDescription(value),
                      ))
                    ],
                  )
                ],
              ),
            );
          },
        ));
  }
}
