import 'package:flutter/material.dart';
import 'package:instagram/src/config/theme/style.dart';

class Status extends StatelessWidget {
  const Status({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Text(
        'Tanphucc',
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: Style.textTheme().bodyMedium!.copyWith(
              color: Colors.white,
            ),
      ),
    );
  }
}
