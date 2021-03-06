import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/src/models/follow_model.dart';
import 'package:instagram/src/models/follow_user_model.dart';
import 'package:instagram/src/repositories/domain.dart';
import 'package:instagram/src/widgets/loading/base_loading.dart';
import 'package:instagram/src/widgets/snackbar/snackbar.dart';

part 'follow_state.dart';

class FollowBloc extends Cubit<FollowState> {
  FollowBloc()
      : super(
            FollowState(data: XFollow.empty(), dataFollowUser: XFollowUser()));
  final Domain _domain = Domain();

  void getFollowers() async {
    BaseLoading.show();
    final value = await _domain.follow.getFollowers();

    if (value.isSuccess) {
      emit(state.copyWith(data: value.data));
    } else {
      emit(state.copyWith(data: XFollow.empty()));

      XSnackBar.show(msg: "Error");
    }
    BaseLoading.dismiss();
  }

  void getFollowing() async {
    BaseLoading.show();

    final value = await _domain.follow.getFollowing();

    if (value.isSuccess) {
      emit(state.copyWith(data: value.data));
    } else {
      emit(state.copyWith(data: XFollow.empty()));

      XSnackBar.show(msg: "Error");
    }
    BaseLoading.dismiss();
  }

  void getFollowersUser(String idAccount) async {
    final value = await _domain.follow.getFollowersUser(idAccount);

    if (value.isSuccess) {
      emit(state.copyWith(dataFollowUser: value.data));
    } else {
      emit(state.copyWith(data: XFollow.empty()));

      XSnackBar.show(msg: "Error");
    }
  }

  void getFollowingUser(String idAccount) async {
    final value = await _domain.follow.getFollowingUser(idAccount);

    if (value.isSuccess) {
      emit(state.copyWith(dataFollowUser: value.data));
    } else {
      emit(state.copyWith(data: XFollow.empty()));

      XSnackBar.show(msg: "Error");
    }
  }

  void onFollow(String idUser) async {
    final value = await _domain.follow.postFollow(idUser);

    if (value.isSuccess) {
      emit(state.copyWith(isFollow: true));
    } else {
      XSnackBar.show(msg: "Error");
    }
  }

  void onUnFollow(String idUser) async {
    final value = await _domain.follow.removeFollow(idUser);

    if (value.isSuccess) {
      emit(state.copyWith(isFollow: false));
    } else {
      XSnackBar.show(msg: "Error");
    }
  }
}
