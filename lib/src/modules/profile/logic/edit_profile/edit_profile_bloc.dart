import 'package:auto_route/auto_route.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:instagram/src/modules/profile/logic/profile/profile_bloc.dart';
import 'package:instagram/src/repositories/domain.dart';
import 'package:instagram/src/widgets/snackbar/snackbar.dart';

part 'edit_profile_state.dart';

class EditProfileBloc extends Cubit<EditProfileState> {
  EditProfileBloc(EditProfileState initValue) : super(initValue);

  final Domain _domain = Domain();
  Future<void> onCheckUsername(BuildContext context) async {
    final value = await _domain.profile.putInformation(
      bio: state.bio,
      fullName: state.name,
      phoneNumber: state.phone,
      website: state.website,
      username: state.username,
    );
    if (value.isSuccess) {
      GetIt.I<ProfileBloc>().getInformation();
      context.router.pop();
    } else {
      XSnackBar.show(msg: "Error");
    }
  }

  void changeName(String value) => emit(state.copyWith(name: value));
  void changePhone(String value) => emit(state.copyWith(phone: value));
  void changeWebsite(String value) => emit(state.copyWith(website: value));
  void changeBio(String value) => emit(state.copyWith(bio: value));
}
