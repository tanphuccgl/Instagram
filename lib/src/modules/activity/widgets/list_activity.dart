import 'package:flutter/material.dart';
import 'package:instagram/src/config/theme/my_colors.dart';
import 'package:instagram/src/config/theme/style.dart';

class ListActivity extends StatelessWidget {
  const ListActivity({Key? key, required this.name, required this.card})
      : super(key: key);
  final String name;
  final Widget card;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 13),
            child: Text(
              name,
              style: Style.textTheme().titleMedium!.copyWith(
                  color: MyColors.colorBlack2,
                  fontWeight: FontWeight.w600,
                  fontSize: 15),
            ),
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: ((context, index) {
              return card;
            }),
            itemCount: 4,
          )
        ],
      ),
    );
  }
}
