// ignore_for_file: use_build_context_synchronously

import 'package:equatable/equatable.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/src/config/routes/coordinator.dart';
import 'package:instagram/src/models/post_model.dart';
import 'package:instagram/src/models/prefs.dart';
import 'package:instagram/src/modules/post/router/post_router.dart';
import 'package:instagram/src/repositories/domain.dart';
import 'package:instagram/src/widgets/loading/base_loading.dart';
import 'package:instagram/src/widgets/snackbar/snackbar.dart';

part 'post_state.dart';

class PostBloc extends Cubit<PostState> {
  PostBloc()
      : super(const PostState(
            type: -1,
            files: [],
            listPosts: [],
            listReels: [],
            listStorys: [])) {
    getPost();
    getReel();
    getStory();
  }
  final Domain _domain = Domain();

  Future<void> getPost() async {
    var value = await _domain.post.getPost(0, Prefs.getIdAccount());
    if (value.isSuccess) {
      emit(state.copyWith(listPosts: value.data));
    } else {
      XSnackBar.show(msg: "Get Photo failed");
    }
  }

  Future<void> getReel() async {
    var value = await _domain.post.getPost(2, Prefs.getIdAccount());
    if (value.isSuccess) {
      emit(state.copyWith(listReels: value.data));
    } else {
      XSnackBar.show(msg: "Get Photo failed");
    }
  }

  Future<void> getStory() async {
    var value = await _domain.post.getPost(1, Prefs.getIdAccount());
    if (value.isSuccess) {
      emit(state.copyWith(listStorys: value.data));
    } else {
      XSnackBar.show(msg: "Get Photo failed");
    }
  }

  Future<void> uploadPost(BuildContext context) async {
    BaseLoading.show();

    var value = await _domain.post.postPost(
        listFile: state.files,
        type: state.type,
        description: state.description);
    if (value.isSuccess) {
      getPost();
      XCoordinator.pop(context);
      XCoordinator.pop(context);
      XSnackBar.show(msg: "Upload photo successfully");
    } else {
      XSnackBar.show(msg: "Photo upload failed");
    }
    BaseLoading.dismiss();
  }

  void onCreatePost(BuildContext context) async {
    List<PlatformFile> listFile = [];

    FilePickerResult? result =
        await FilePicker.platform.pickFiles(allowMultiple: true);
    List<PlatformFile>? listFile1 = [];

    if (result != null) {
      listFile1 = result.files;
    }

    listFile.addAll(listFile1);
    emit(state.copyWith(files: listFile));
    PostCoordinator.showNewPost(context);
  }

  void onCreateStory(BuildContext context) async {
    List<PlatformFile> listFile = [];

    FilePickerResult? result =
        await FilePicker.platform.pickFiles(allowMultiple: false);
    List<PlatformFile>? listFile1 = [];

    if (result != null) {
      listFile1 = result.files;
    }

    listFile.addAll(listFile1);
    emit(state.copyWith(files: listFile));
    uploadPost(context);
  }

  void changeDescription(String value) =>
      emit(state.copyWith(description: value));

  void onChangeType(String value) {
    emit(state.copyWith(type: -1, files: [], description: ""));

    int type = -1;
    switch (value) {
      case "Post":
        type = 0;
        break;
      case "Reel":
        type = 2;
        break;
      case "Story":
        type = 1;
        break;
      default:
        type = -1;
    }
    emit(state.copyWith(type: type));
  }
}
