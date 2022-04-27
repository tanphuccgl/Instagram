import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:instagram/src/config/theme/my_colors.dart';
import 'package:instagram/src/config/theme/style.dart';
import 'package:instagram/src/constants/my_images.dart';
import 'package:instagram/src/widgets/custom_button/button_primary.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const _sizedBox = SizedBox(height: 10);
    return Scaffold(
      backgroundColor: MyColors.colorBackground,
      bottomNavigationBar: _bottomNavigationBar(),
      appBar: _appBar(),
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
                    _sizedBox,
                    Text(
                        'Trần Đức Tính, Lê Phước Gia Thịnh and 145 other friends are using Instagram.',
                        textAlign: TextAlign.center,
                        style: Style.textTheme()
                            .titleSmall!
                            .copyWith(color: MyColors.colorGray, fontSize: 15)),
                    _sizedBox,
                    RichText(
                      maxLines: 1,
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                          WidgetSpan(
                            alignment: PlaceholderAlignment.middle,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Container(
                                color: MyColors.colorBlack.withOpacity(0.2),
                                width: 130,
                                height: 1,
                              ),
                            ),
                          ),
                          TextSpan(
                              text: "OR",
                              style: Style.textTheme().titleSmall!.copyWith(
                                  color: MyColors.colorGray,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)),
                          WidgetSpan(
                            alignment: PlaceholderAlignment.middle,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Container(
                                color: MyColors.colorBlack.withOpacity(0.2),
                                width: 130,
                                height: 1,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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

  AppBar _appBar() {
    return AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        flexibleSpace: SafeArea(
            child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                  text: "English (United States)",
                  style: Style.textTheme()
                      .titleSmall!
                      .copyWith(color: MyColors.colorGray)),
              const WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: Icon(
                    Icons.arrow_drop_down_sharp,
                    color: MyColors.colorGray,
                  )),
            ],
          ),
        )));
  }

  Widget _bottomNavigationBar() {
    return ListTile(
        title: RichText(
      textAlign: TextAlign.center,
      text: TextSpan(children: [
        WidgetSpan(
          alignment: PlaceholderAlignment.middle,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Container(
              color: MyColors.colorBlack.withOpacity(0.1),
              width: double.infinity,
              height: 1,
            ),
          ),
        ),
        TextSpan(
          text: 'Already have an account? ',
          style:
              Style.textTheme().titleSmall!.copyWith(color: MyColors.colorGray),
        ),
        TextSpan(
          text: 'Log in.',
          style: Style.textTheme().titleSmall!.copyWith(
              color: MyColors.colorBlue,
              fontSize: 12,
              fontWeight: FontWeight.w600),
          recognizer: TapGestureRecognizer()..onTap = () {},
        )
      ]),
    ));
  }
}
