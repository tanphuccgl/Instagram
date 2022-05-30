import 'package:flutter/material.dart';
import 'package:instagram/src/config/theme/my_properties.dart';
import 'package:instagram/src/config/theme/style.dart';
import 'package:instagram/src/modules/activity/widgets/activity_card.dart';
import 'package:instagram/src/modules/activity/widgets/activity_sugges_card.dart';
import 'package:instagram/src/modules/activity/widgets/list_activity.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Acivity",
          style: Style.textTheme().titleMedium,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: const Padding(
          padding: MyProperties.pHorScreen,
          child: CustomScrollView(
            slivers: [
              ListActivity(name: 'New', card: ActivityCard()),
              ListActivity(
                  name: 'This Month',
                  card: ActivityCard(
                    isFollow: false,
                  )),
              ListActivity(
                  name: 'Earlier',
                  card: ActivityCard(
                    isLike: false,
                  )),
              ListActivity(
                  name: 'Suggestions for you', card: ActivitySuggesCard()),
            ],
          )),
    );
  }
}
