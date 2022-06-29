import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/src/modules/forgot_password/logic/forgot_password_bloc.dart';
import 'package:instagram/src/widgets/custom_button/button_primary.dart';
import 'package:instagram/src/widgets/text_field/base_text_field.dart';
import 'package:instagram/src/widgets/widget_custom/divider_custom.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Login help",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        body: BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
          builder: (context, state) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text("Find your account"),
                    const Text(
                      "Enter your username or the email\n or phone number linked to your\n account.",
                      textAlign: TextAlign.center,
                    ),
                    BaseTextField(
                      onChanged: (value) =>
                          context.read<ForgotPasswordBloc>().changeEmail(value),
                      value: state.email,
                      hint: 'Phone number, email or username',
                    ),
                    XButton(
                      label: 'Next',
                      onPressed: () => context
                          .read<ForgotPasswordBloc>()
                          .onCheckAccount(context),
                      height: 44,
                    ),
                    const DividerCustom(),
                    XButton(
                        label: 'Continue as Tan Phucc',
                        height: 44,
                        onPressed: () {},
                        prefixIcon: const Icon(Icons.abc)),
                    const Spacer(),
                    TextButton(
                        onPressed: () {},
                        child: const Text("Can't reset your password?"))
                  ],
                ),
              ),
            );
          },
        ));
  }
}
