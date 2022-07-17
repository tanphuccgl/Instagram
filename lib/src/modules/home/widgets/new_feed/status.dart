import 'package:flutter/material.dart';
import 'package:instagram/src/config/theme/style.dart';

class StatusCardHome extends StatelessWidget {
  final String description;
  const StatusCardHome({Key? key, required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        description,
        overflow: TextOverflow.ellipsis,
        style: Style.textTheme().bodyMedium!.copyWith(
              color: Colors.white,
            ),
      ),
    );
  }
}
