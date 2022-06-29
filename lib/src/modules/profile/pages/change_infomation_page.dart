import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/src/config/routes/coordinator.dart';
import 'package:instagram/src/config/theme/my_properties.dart';
import 'package:instagram/src/modules/account/logic/check_account_bloc.dart';
import 'package:instagram/src/modules/profile/widgets/edit_profile_widget/app_bar_edit_profile.dart';
import 'package:instagram/src/modules/profile/widgets/edit_profile_widget/text_field_edit_profile.dart';

class ChangeInformationPage extends StatelessWidget {
  const ChangeInformationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarEditProfile(iconCheck: _iconButtonCheck()),
      body: Padding(
        padding: MyProperties.pHorScreen,
        child: ListView(
          shrinkWrap: true,
          children: [
            BlocBuilder<CheckAccountBloc, CheckAccountState>(
              builder: (context, state) {
                return TextFieldEditProfile(
                    label: 'Username',
                    onEditingComplete: () =>
                        context.read<CheckAccountBloc>().onCheckUsername(),
                    onChanged: (value) =>
                        context.read<CheckAccountBloc>().changeUsername(value),
                    value: state.username,
                    isLoading: state.isLoading);
              },
            ),
            const Text(
              'You\'ll be able to change your username back to leviii2k for another 14 days',
            ),
            const Text(
              'Learn More',
              style: TextStyle(color: Colors.blue),
            )
          ],
        ),
      ),
    );
  }

  Widget _iconButtonCheck() {
    return BlocBuilder<CheckAccountBloc, CheckAccountState>(
      buildWhen: (previous, current) => previous.isCheck != current.isCheck,
      builder: (context, state) {
        return IconButton(
            onPressed:
                state.isCheck == false ? null : () => XCoordinator.pop(context),
            icon: Icon(
              Icons.check,
              color: state.isCheck == false
                  ? Colors.blue.withOpacity(0.5)
                  : Colors.blue,
            ));
      },
    );
  }
}
