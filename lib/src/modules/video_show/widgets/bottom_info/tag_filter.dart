import 'package:flutter/material.dart';
import 'package:instagram/src/config/theme/style.dart';

class TagFilter extends StatelessWidget {
  const TagFilter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 5.0),
            padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 5.0),
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.2),
                borderRadius: BorderRadius.circular(20.0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.star_border_rounded, size: 13),
                Text(
                  'Avatar',
                  style: Style.textTheme().bodySmall!.copyWith(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                      ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
