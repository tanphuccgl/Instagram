import 'package:flutter/material.dart';
import 'package:instagram/src/config/theme/style.dart';

class StatusCardHome extends StatelessWidget {
  const StatusCardHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        'đúng kiểu mới ngủ dậy bắt đi chụp ớ =))fiuastfiusdghfuis',
        overflow: TextOverflow.ellipsis,
        style: Style.textTheme().bodyMedium!.copyWith(
              color: Colors.white,
            ),
      ),
    );
  }
}
