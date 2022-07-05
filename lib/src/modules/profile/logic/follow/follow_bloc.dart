import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/src/models/follow_model.dart';
import 'package:instagram/src/repositories/domain.dart';
import 'package:instagram/src/widgets/snackbar/snackbar.dart';

part 'follow_state.dart';

class FollowBloc extends Cubit<FollowState> {
  FollowBloc() : super(FollowState(data: XFollow.empty()));
  final Domain _domain = Domain();

  void getFollowers() async {
    final value = await _domain.follow.getFollowers();

    if (value.isSuccess) {
      emit(state.copyWith(data: value.data));
    } else {
      emit(state.copyWith(data: XFollow.empty()));

      XSnackBar.show(msg: "Error");
    }
  }

  void getFollowing() async {
    final value = await _domain.follow.getFollowing();

    if (value.isSuccess) {
      emit(state.copyWith(data: value.data));
    } else {
      emit(state.copyWith(data: XFollow.empty()));

      XSnackBar.show(msg: "Error");
    }
  }

  void onFollow(String idUser) async {
    final value = await _domain.follow.postFollow(idUser);

    if (value.isSuccess) {
    } else {
      XSnackBar.show(msg: "Error");
    }
  }

  void onUnFollow(String idUser) async {
    final value = await _domain.follow.removeFollow(idUser);

    if (value.isSuccess) {
    } else {
      XSnackBar.show(msg: "Error");
    }
  }
}
