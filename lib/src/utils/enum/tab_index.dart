import 'package:flutter/material.dart';
import 'package:instagram/src/constants/my_images.dart';

enum TabIndex {
  home,
  search,
  videoShow,
  favorite,
  profile,
}

extension PageIndexExt on TabIndex {
  Widget iconOf() {
    switch (this) {
      case TabIndex.home:
        return const ImageIcon(
          AssetImage(MyIcons.icTabHome),
          size: 30,
        );
      case TabIndex.search:
        return const ImageIcon(
          AssetImage(MyIcons.icTabHome),
          size: 30,
        );
      case TabIndex.videoShow:
        return const ImageIcon(
          AssetImage(MyIcons.icTabHome),
          size: 30,
        );
      case TabIndex.favorite:
        return const ImageIcon(
          AssetImage(MyIcons.icTabHome),
          size: 30,
        );
      case TabIndex.profile:
        return const ImageIcon(
          AssetImage(MyIcons.icTabHome),
          size: 30,
        );

      default:
        return const Icon(Icons.abc);
    }
  }

  Widget activeIconOf() {
    switch (this) {
      case TabIndex.home:
        return const ImageIcon(
          AssetImage(MyIcons.icTabHome),
          size: 30,
        );
      case TabIndex.search:
        return const ImageIcon(
          AssetImage(MyIcons.icTabHome),
          size: 30,
        );
      case TabIndex.videoShow:
        return const ImageIcon(
          AssetImage(MyIcons.icTabHome),
          size: 30,
        );
      case TabIndex.favorite:
        return const ImageIcon(
          AssetImage(MyIcons.icTabHome),
          size: 30,
        );
      case TabIndex.profile:
        return const ImageIcon(
          AssetImage(MyIcons.icTabHome),
          size: 30,
        );

      default:
        return const Icon(Icons.abc);
    }
  }
}
