import 'package:flutter/material.dart';
import 'package:instagram/src/config/theme/my_colors.dart';

class PositionTabView extends StatelessWidget {
  final int count;
  final int index1;
  const PositionTabView({Key? key, required this.count, required this.index1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        height: 5,
        child: ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return _postionBar(
                width: count == 1 ? size.width : size.width / (count + 0.5),
                color:
                    index == index1 ? MyColors.colorWhite : MyColors.colorGray);
          },
          itemCount: count,
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
