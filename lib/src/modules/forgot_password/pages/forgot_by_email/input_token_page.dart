import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/src/config/theme/my_properties.dart';
import 'package:instagram/src/modules/forgot_password/logic/forgot_password_bloc.dart';
import 'package:instagram/src/widgets/custom_button/button_primary.dart';
import 'package:instagram/src/widgets/text_field/base_text_field.dart';

class InputTokenPage extends StatelessWidget {
  const InputTokenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Input token")),
        body: BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
          builder: (context, state) {
            return Padding(
              padding: MyProperties.pHorScreen,
              child: Column(children: [
                BaseTextField(
                    value: state.token,
                    hint: 'Token is contains 6 numbers',
                    onChanged: (value) =>
                        context.read<ForgotPasswordBloc>().changeToken(value)),
                XButton(
                  label: 'Next',
                  onPressed: () => context
                      .read<ForgotPasswordBloc>()
                      .onSendTokenEmail(context),
                  height: 44,
                ),
              ]),
            );
          },
        ));
  }
}
