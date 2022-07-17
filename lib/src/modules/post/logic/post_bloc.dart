// ignore_for_file: use_build_context_synchronously

import 'package:equatable/equatable.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/src/config/routes/coordinator.dart';
import 'package:instagram/src/models/comment_model.dart';
import 'package:instagram/src/models/post_model.dart';
import 'package:instagram/src/models/prefs.dart';
import 'package:instagram/src/modules/post/router/post_router.dart';
import 'package:instagram/src/modules/profile/router/profile_router.dart';
import 'package:instagram/src/repositories/domain.dart';
import 'package:instagram/src/widgets/loading/base_loading.dart';
import 'package:instagram/src/widgets/snackbar/snackbar.dart';

part 'post_state.dart';

class PostBloc extends Cubit<PostState> {
  PostBloc()
      : super(PostState(
          type: -1,
          files: const [],
          listPosts: XPost(),
          listPosts1: XPost(),
          listReels: const [],
          listStorys: const [],
          listStorys1: const [],
          cmt: "",
          listComments: const [],
        )) {
    getPost();
    getReel();
    getStory();
  }

  Future<void> getPostWithId(String idUser) async {
    BaseLoading.show();
    var value = await _domain.post.getPost(0, idUser);
    if (value.isSuccess) {
      emit(state.copyWith(listPosts1: value.data));
    } else {
      XSnackBar.show(msg: "Get Photo failed");
    }
    BaseLoading.dismiss();
  }

  Future<void> getStoryWithUser(String idUser) async {
    var value = await _domain.post.getPost(1, idUser);
    if (value.isSuccess) {
      emit(state.copyWith(listStorys1: value.data?.data ?? []));
    } else {
      XSnackBar.show(msg: "Get Photo failed");
    }
  }

  final Domain _domain = Domain();

  Future<void> postReactionCommnet(
      BuildContext context, String idComment, String idPost) async {
    BaseLoading.show();

    var value = await _domain.post.postReactionComment(idComment);
    if (value.isSuccess) {
      var value1 = await _domain.post.getComment(idPost);
      if (value1.isSuccess) {
        emit(state.copyWith(listComments: value1.data));
      } else {
        XSnackBar.show(msg: "Get Commnet failed");
      }
    } else {
      XSnackBar.show(msg: "Post Reaction failed");
    }
    BaseLoading.dismiss();
  }

  Future<void> removeReactionComment(
      BuildContext context, String idComment, String idPost) async {
    BaseLoading.show();

    var value = await _domain.post.removeReactionComment(idComment);
    if (value.isSuccess) {
      var value1 = await _domain.post.getComment(idPost);
      if (value1.isSuccess) {
        emit(state.copyWith(listComments: value1.data));
      } else {
        XSnackBar.show(msg: "Get Commnet failed");
      }
    } else {
      XSnackBar.show(msg: "Remove Reaction failed");
    }
    BaseLoading.dismiss();
  }

  Future<void> getComment(BuildContext context, String idPost) async {
    BaseLoading.show();
    var value = await _domain.post.getComment(idPost);
    if (value.isSuccess) {
      emit(state.copyWith(listComments: value.data));
      ProfileCoordinator.showCommentPage(context, idPost);
    } else {
      XSnackBar.show(msg: "Get Commnet failed");
    }
    BaseLoading.dismiss();
  }

  Future<void> postComment(BuildContext context, String idPost) async {
    BaseLoading.show();
    var value = await _domain.post.postComment(idPost, state.cmt);
    if (value.isSuccess) {
      var value1 = await _domain.post.getComment(idPost);
      if (value1.isSuccess) {
        emit(state.copyWith(listComments: value1.data));
      } else {
        XSnackBar.show(msg: "Get Commnet failed");
      }
    } else {
      XSnackBar.show(msg: "Commnet failed");
    }
    emit(state.copyWith(cmt: ''));
    BaseLoading.dismiss();
  }

  void onChangeCmt(String value) => emit(state.copyWith(cmt: value));

  Future<void> getPost() async {
    BaseLoading.show();
    var value = await _domain.post.getPost(0, Prefs.getIdAccount());
    if (value.isSuccess) {
      emit(state.copyWith(listPosts: value.data));
    } else {
      XSnackBar.show(msg: "Get Photo failed");
    }
    BaseLoading.dismiss();
  }

  Future<void> postReactionPost(String idPost) async {
    BaseLoading.show();

    var value = await _domain.post.postReactionPost(idPost);
    if (value.isSuccess) {
      getPost();
    } else {
      XSnackBar.show(msg: "Post Reaction failed");
    }
    BaseLoading.dismiss();
  }

  Future<void> removeReactionPost(String idPost) async {
    BaseLoading.show();

    var value = await _domain.post.removeReactionPost(idPost);
    if (value.isSuccess) {
      getPost();
    } else {
      XSnackBar.show(msg: "Remove Reaction failed");
    }
    BaseLoading.dismiss();
  }

  Future<void> postHandleCountReaction(
      BuildContext context, String idPost) async {
    BaseLoading.show();

    var value = await _domain.post.postHandleCountReaction(idPost);
    if (value.isSuccess) {
      getPost();
      XCoordinator.pop(context);
    } else {
      XSnackBar.show(msg: "Error");
    }
    BaseLoading.dismiss();
  }

  Future<void> postHandleTurnOffComment(
      BuildContext context, String idPost) async {
    BaseLoading.show();

    var value = await _domain.post.postHandleTurnOffComment(idPost);
    if (value.isSuccess) {
      getPost();
      XCoordinator.pop(context);
    } else {
      XSnackBar.show(msg: "Error");
    }
    BaseLoading.dismiss();
  }

  Future<void> getReel() async {
    var value = await _domain.post.getPost(2, Prefs.getIdAccount());
    if (value.isSuccess) {
      emit(state.copyWith(listReels: value.data?.data ?? []));
    } else {
      XSnackBar.show(msg: "Get Photo failed");
    }
  }

  Future<void> getStory() async {
    var value = await _domain.post.getPost(1, Prefs.getIdAccount());
    if (value.isSuccess) {
      emit(state.copyWith(listStorys: value.data?.data ?? []));
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
      getStory();
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
