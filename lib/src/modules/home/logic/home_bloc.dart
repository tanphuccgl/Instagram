import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/src/models/post_model.dart';
import 'package:instagram/src/repositories/domain.dart';
import 'package:instagram/src/widgets/loading/base_loading.dart';
import 'package:instagram/src/widgets/snackbar/snackbar.dart';

part "home_state.dart";

class HomeBloc extends Cubit<HomeState> {
  HomeBloc() : super(const HomeState(listPost: [], listStory: [])) {
    getStory();
    getPost();
  }

  final Domain _domain = Domain();

  Future<void> getPost() async {
    BaseLoading.show();
    var value = await _domain.post.getPostHome(
      0,
    );
    if (value.isSuccess) {
      emit(state.copyWith(listPost: value.data));
    } else {
      XSnackBar.show(msg: "Get Photo failed");
    }
    BaseLoading.dismiss();
  }

  Future<void> getStory() async {
    BaseLoading.show();
    var value = await _domain.post.getPostHome(
      1,
    );
    if (value.isSuccess) {
      emit(state.copyWith(listStory: value.data));
    } else {
      XSnackBar.show(msg: "Get Photo failed");
    }
    BaseLoading.dismiss();
  }
}
