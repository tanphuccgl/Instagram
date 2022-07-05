// ignore_for_file: use_build_context_synchronously

import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:instagram/src/config/routes/coordinator.dart';
import 'package:instagram/src/models/information_model.dart';
import 'package:instagram/src/repositories/domain.dart';
import 'package:instagram/src/widgets/loading/base_loading.dart';
import 'package:instagram/src/widgets/snackbar/snackbar.dart';

part 'profile_state.dart';

class ProfileBloc extends Cubit<ProfileState> {
  ProfileBloc() : super(ProfileState(data: XInformationData())) {
    getInformation();
  }
  final Domain _domain = Domain();

  void getInformation() async {
    final value = await _domain.profile.getInformation();

    if (value.isSuccess) {
      emit(state.copyWith(data: value.data));
    } else {
      XSnackBar.show(msg: "Error");
    }
  }

  void onNewProfilePhoto(BuildContext context) async {
    final ImagePicker picker = ImagePicker();
    XFile? image = await picker.pickImage(
      source: ImageSource.gallery,
    );
    File file = File(image!.path);

    context.read<ProfileBloc>().uploadAvatar(context, file);
  }

  Future<void> uploadAvatar(BuildContext context, File file) async {
    BaseLoading.show();

    var value = await _domain.profile.postAvatar(file);
    if (value.isSuccess) {
      getInformation();
      XCoordinator.pop(context);
      XSnackBar.show(msg: "Upload photo successfully");
    } else {
      XSnackBar.show(msg: "Photo upload failed");
    }
    BaseLoading.dismiss();
  }

  Future<void> onRemovePhoto(BuildContext context) async {
    BaseLoading.show();

    var value = await _domain.profile.deleteAvatar();
    if (value.isSuccess) {
      getInformation();
      XCoordinator.pop(context);
      XSnackBar.show(msg: "Remove photo successfully");
    } else {
      XSnackBar.show(msg: "Photo remove failed");
    }
    BaseLoading.dismiss();
  }
}
