import 'package:flutter/material.dart';
import 'package:instagram/src/config/theme/style.dart';
import 'package:instagram/src/widgets/text_field/scroll_text.dart';

class MusicAndLocation extends StatelessWidget {
  const MusicAndLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      child: Row(
        children: [
          Expanded(
              flex: 5,
              child: Row(
                children: [
                  const Icon(Icons.music_note),
                  Expanded(
                    child: ScrollingText(
                      ratioOfBlankToScreen: 0.1,
                      text: 'tarakellie_ • Original Audio',
                      textStyle: Style.textTheme().bodyMedium!.copyWith(
                            color: Colors.white,
                          ),
                    ),
                  )
                ],
              )),
          Expanded(
              flex: 5,
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: Style.textTheme().bodyMedium!.copyWith(
                        color: Colors.white,
                      ),
                  children: const [
                    WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        child: Icon(
                          Icons.location_on_rounded,
                        )),
                    TextSpan(
                      text: "Kyoto, Japan",
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
