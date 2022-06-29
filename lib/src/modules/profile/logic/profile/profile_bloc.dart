import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/src/models/information_model.dart';
import 'package:instagram/src/repositories/domain.dart';
import 'package:instagram/src/widgets/snackbar/snackbar.dart';

part 'profile_state.dart';

class ProfileBloc extends Cubit<ProfileState> {
  ProfileBloc() : super(ProfileState(data: XInformationData.empty())) {
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
}
