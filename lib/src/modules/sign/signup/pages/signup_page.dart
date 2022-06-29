import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/src/modules/sign/signup/logic/signup_bloc.dart';
import 'package:instagram/src/widgets/custom_button/button_primary.dart';
import 'package:instagram/src/widgets/text_field/base_text_field.dart';
import 'package:instagram/src/widgets/text_field/text_field_check.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Signup'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: BlocProvider(
                create: (context) => SignUpBloc(),
                child: BlocBuilder<SignUpBloc, SignUpState>(
                  builder: (context, state) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            TextFieldCheck(
                              pureUsername: state.pureEmail,
                              onEditingComplete: () =>
                                  context.read<SignUpBloc>().onCheckEmail(),
                              onChanged: (value) =>
                                  context.read<SignUpBloc>().changeEmail(value),
                              value: state.email,
                              hint: 'Email',
                            ),
                            BaseTextField(
                              onChanged: (value) =>
                                  context.read<SignUpBloc>().changeName(value),
                              value: state.name,
                              hint: 'Full Name',
                            ),
                            TextFieldCheck(
                              pureUsername: state.pureUsername,
                              hideSuggest: false,
                              onChanged: (value) => context
                                  .read<SignUpBloc>()
                                  .changeUsername(value),
                              value: state.username,
                              onEditingComplete: () =>
                                  context.read<SignUpBloc>().onCheckUsername(),
                              hint: 'Username',
                            ),
                            BaseTextField(
                              onChanged: (value) => context
                                  .read<SignUpBloc>()
                                  .changePassword(value),
                              value: state.password,
                              hint: 'Password',
                            ),
                            RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                style: const TextStyle(color: Colors.black),
                                children: [
                                  const TextSpan(
                                    text:
                                        'People who use our service may have uploaded your conteact information on Instagram. ',
                                  ),
                                  TextSpan(
                                      text: 'Learn More',
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w600),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {})
                                ],
                              ),
                            ),
                            RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                style: const TextStyle(color: Colors.black),
                                children: [
                                  const TextSpan(
                                    text: 'By signing up, you agree to our ',
                                  ),
                                  TextSpan(
                                      text: 'Terms, Data',
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w600),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {}),
                                  const TextSpan(
                                    text: ' and ',
                                  ),
                                  TextSpan(
                                      text: 'Cookies Policy',
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w600),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {})
                                ],
                              ),
                            ),
                            XButton(
                              label: 'Sign up',
                              height: 44,
                              onPressed: () =>
                                  context.read<SignUpBloc>().onSignUp(context),
                            ),
                          ],
                        )
                      ],
                    );
                  },
                ))),
      ),
    );
  }
}
