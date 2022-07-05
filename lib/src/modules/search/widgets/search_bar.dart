import 'package:flutter/material.dart';
import 'package:instagram/src/config/theme/my_colors.dart';
import 'package:instagram/src/config/theme/style.dart';
import 'package:instagram/src/modules/search/router/search_router.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => SearchCoordinator.showDetailSearch(context),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        height: 36,
        decoration: BoxDecoration(
          color: MyColors.colorGray3.withOpacity(0.12),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          children: [
            const Icon(
              Icons.search,
              color: MyColors.colorBlack,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              'Search',
              style: Style.textTheme()
                  .labelMedium!
                  .copyWith(color: MyColors.colorBlack3.withOpacity(0.6)),
            ),
          ],
        ),
      ),
    );
  }
}
