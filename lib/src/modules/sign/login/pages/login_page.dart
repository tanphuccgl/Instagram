import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:instagram/src/config/theme/my_colors.dart';
import 'package:instagram/src/config/theme/style.dart';
import 'package:instagram/src/constants/my_images.dart';
import 'package:instagram/src/widgets/appbar/appbar_sign.dart';
import 'package:instagram/src/widgets/bottom_bar/bottom_bar_sign.dart';
import 'package:instagram/src/widgets/custom_button/button_primary.dart';
import 'package:instagram/src/widgets/text_field/base_text_field.dart';
import 'package:instagram/src/widgets/widget_custom/divider_custom.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const sizedBox = SizedBox(height: 10);

    return Scaffold(
      bottomNavigationBar: BottomBarSign(
          textLeft: 'Dont\'t have an account? ',
          textRight: 'Sign up.',
          voidCallback: () {}),
      appBar: const AppBarSign(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: SizedBox(
                  height: 120.0,
                  child: Image.asset(
                    MyImages.logoFlutter,
                    alignment: Alignment.center,
                    height: 120.0,
                    width: 120.0,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Column(
                children: [
                  BaseTextField(
                    onChanged: (value) {},
                    value: '',
                    hint: 'Phone number, email or username',
                  ),
                  BaseTextField(
                    onChanged: (value) {},
                    value: '',
                    hint: 'Password',
                  ),
                  sizedBox,

                  XButton(
                    label: 'Login',
                    height: 44,
                    onPressed: () {},
                  ),
                  sizedBox,
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: Style.textTheme().titleSmall!.copyWith(
                          color: MyColors.colorGray,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                      children: [
                        const TextSpan(
                          text: 'Forgot your login details? ',
                        ),
                        TextSpan(
                            text: 'Get help logging in.',
                            style: Style.textTheme().titleSmall!.copyWith(
                                  color: MyColors.colorBlue,
                                ),
                            recognizer: TapGestureRecognizer()..onTap = () {}),
                      ],
                    ),
                  ),
                  sizedBox,
                  const DividerCustom(),
                  sizedBox,
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        const WidgetSpan(
                            alignment: PlaceholderAlignment.middle,
                            child: Icon(
                              Icons.facebook,
                              color: MyColors.colorBlue,
                            )),
                        TextSpan(
                          text: 'Login in with Facebook',
                          style: Style.textTheme().titleSmall!.copyWith(
                              color: MyColors.colorBlue,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  )
                  // TextButton(
                  //     onPressed: () {},
                  //     child: Text(
                  //       'Login in with Facebook',
                  //       style: Style.textTheme().titleSmall!.copyWith(
                  //           color: MyColors.colorBlue,
                  //           fontSize: 15,
                  //           fontWeight: FontWeight.w600),
                  //     ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
