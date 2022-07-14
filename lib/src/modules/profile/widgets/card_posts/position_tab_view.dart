import 'package:flutter/material.dart';
import 'package:instagram/src/config/theme/my_colors.dart';

class PositionTabView extends StatelessWidget {
  const PositionTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        height: 5,
        child: ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index) => _postionBar(
              width: size.width / (3 + 0.5),
              color: index == 1 ? MyColors.colorWhite : MyColors.colorGray),
          itemCount: 3,
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }

  Widget _postionBar({required double width, required Color color}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
          height: 5,
          width: width,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(10))),
    );
  }
}
