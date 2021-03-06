import 'package:flutter/material.dart';
import 'package:instagram/src/config/theme/my_colors.dart';
import 'package:instagram/src/config/theme/style.dart';
import 'package:instagram/src/constants/my_images.dart';
import 'package:instagram/src/widgets/appbar/appbar_sign.dart';
import 'package:instagram/src/widgets/bottom_bar/bottom_bar_sign.dart';
import 'package:instagram/src/widgets/custom_button/button_primary.dart';
import 'package:instagram/src/widgets/widget_custom/divider_custom.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const sizedBox = SizedBox(height: 10);
    return Scaffold(
      backgroundColor: MyColors.colorBackground,
      bottomNavigationBar: BottomBarSign(
        textLeft: 'Already have an account? ',
        textRight: 'Log in.',
        voidCallback: () {},
      ),
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
                flex: 5,
                child: Image.asset(
                  MyImages.logoFlutter,
                  alignment: Alignment.center,
                  height: 120.0,
                  width: 120.0,
                  fit: BoxFit.contain,
                ),
              ),
              Expanded(
                flex: 5,
                child: Column(
                  children: [
                    XButton(
                      label: 'Continue as Levi',
                      prefixIcon: const Icon(Icons.facebook),
                      height: 44,
                      onPressed: () {},
                    ),
                    sizedBox,
                    Text(
                        'Trần Đức Tính, Lê Phước Gia Thịnh and 145 other friends are using Instagram.',
                        textAlign: TextAlign.center,
                        style: Style.textTheme()
                            .titleSmall!
                            .copyWith(color: MyColors.colorGray, fontSize: 15)),
                    sizedBox,
                    const DividerCustom(),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Sign up with email or phone number',
                          style: Style.textTheme().titleSmall!.copyWith(
                              color: MyColors.colorBlue,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ))
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
