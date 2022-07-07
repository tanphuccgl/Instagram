import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/src/models/infomation_any_user.dart';
import 'package:instagram/src/modules/search/router/search_router.dart';
import 'package:instagram/src/repositories/domain.dart';
import 'package:instagram/src/widgets/snackbar/snackbar.dart';

part 'profile_user_state.dart';

class ProfileUserBloc extends Cubit<ProfileUserState> {
  ProfileUserBloc() : super(ProfileUserState(data: XInformationAnyUserData()));

  final Domain _domain = Domain();

  void getInformationUser(BuildContext context, String idUser) async {
    final value = await _domain.profile.getInformationAnyUser(idUser);
    if (value.isSuccess) {
      emit(state.copyWith(data: value.data));

      // ignore: use_build_context_synchronously
      SearchCoordinator.showProfileUser(context);
    } else {
      XSnackBar.show(msg: "Error");
    }
  }
}
