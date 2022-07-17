// ignore_for_file: use_build_context_synchronously

import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/src/models/infomation_any_user.dart';
import 'package:instagram/src/models/prefs.dart';
import 'package:instagram/src/modules/post/logic/post_bloc.dart';
import 'package:instagram/src/modules/search/router/search_router.dart';
import 'package:instagram/src/repositories/domain.dart';
import 'package:instagram/src/widgets/loading/base_loading.dart';
import 'package:instagram/src/widgets/snackbar/snackbar.dart';

part 'profile_user_state.dart';

class ProfileUserBloc extends Cubit<ProfileUserState> {
  ProfileUserBloc()
      : super(ProfileUserState(
            data: XInformationAnyUserData(),
            data1: XInformationAnyUserData())) {
    getInformationUser1();
  }

  final Domain _domain = Domain();

  void getInformationUser(BuildContext context, String idUser) async {
    BaseLoading.show();
    final value = await _domain.profile.getInformationAnyUser(idUser);
    if (value.isSuccess) {
      emit(state.copyWith(data: value.data));
      context.read<PostBloc>().getPostWithId(idUser);
      context.read<PostBloc>().getStoryWithUser(idUser);

      SearchCoordinator.showProfileUser(context);
    } else {
      XSnackBar.show(msg: "Error");
    }
    BaseLoading.dismiss();
  }

  void getInformationUser1() async {
    final value =
        await _domain.profile.getInformationAnyUser(Prefs.getIdAccount());
    if (value.isSuccess) {
      emit(state.copyWith(data1: value.data));
    } else {
      XSnackBar.show(msg: "Error");
    }
  }
}
