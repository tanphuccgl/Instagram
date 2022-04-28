import 'package:flutter/material.dart';
import 'package:instagram/src/config/theme/my_colors.dart';
import 'package:instagram/src/config/theme/style.dart';
import 'package:instagram/src/constants/my_images.dart';
import 'package:instagram/src/widgets/appbar/appbar_sign.dart';
import 'package:instagram/src/widgets/bottom_bar/bottom_%20bar_sign.dart';
import 'package:instagram/src/widgets/custom_button/button_primary.dart';
import 'package:instagram/src/widgets/widget_custom/divider_custom.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const _sizedBox = SizedBox(height: 10);

    return Scaffold(
      bottomNavigationBar: BottomBarSign(
          textLeft: 'Dont\'t have an account? ',
          textRight: 'Sign up.',
          voidCallback: () {}),
      appBar: const AppBarSign(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 3,
                child: Image.asset(
                  MyImages.logoFlutter,
                  alignment: Alignment.center,
                  height: 120.0,
                  width: 120.0,
                  fit: BoxFit.contain,
                ),
              ),
              Expanded(
                flex: 7,
                child: Column(
                  children: [
                    XButton(
                      label: 'Continue as Levi',
                      prefixIcon: const Icon(Icons.facebook),
                      height: 44,
                      onPressed: () {},
                    ),
                    _sizedBox,
                    Text(
                        'Trần Đức Tính, Lê Phước Gia Thịnh and 145 other friends are using Instagram.',
                        textAlign: TextAlign.center,
                        style: Style.textTheme()
                            .titleSmall!
                            .copyWith(color: MyColors.colorGray, fontSize: 15)),
                    _sizedBox,
                    const DividerCustom(),
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
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
