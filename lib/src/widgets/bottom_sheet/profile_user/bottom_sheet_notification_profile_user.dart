import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/src/config/theme/my_colors.dart';
import 'package:instagram/src/modules/search/logic/profile_user_bloc.dart';
import 'package:instagram/src/widgets/bottom_sheet/bottom_sheet.dart';
import 'package:instagram/src/widgets/bottom_sheet/profile_user/bottom_sheet_live_videos.dart';

List<NotificationData> _menuProfile = [
  NotificationData(title: 'Posts', isSwitch: false),
  NotificationData(title: 'Stories', isSwitch: false),
  NotificationData(title: 'Videos', isSwitch: false),
  NotificationData(title: 'Reels', isSwitch: false),
  NotificationData(title: 'Goes live', isSwitch: false),
];

class BottomSheetNotificationProfileUser extends StatelessWidget {
  const BottomSheetNotificationProfileUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileUserBloc, ProfileUserState>(
      builder: (context, state) {
        return Column(
          children: [
            const Text('Notifications'),
            Column(
              children: ListTile.divideTiles(
                  color: Colors.transparent,
                  tiles: _menuProfile.map((item) {
                    return ListTile(
                      trailing: item.title == "Goes live"
                          ? GestureDetector(
                              onTap: () => XBottomSheet.show(context,
                                  backgroundColor: MyColors.colorBackground,
                                  widget: const BottomSheetLiveVideos()),
                              child: Row(
                                children: const [
                                  Text('Some'),
                                  Icon(Icons.arrow_forward_ios_outlined)
                                ],
                              ),
                            )
                          : Switch(onChanged: (value) {}, value: item.isSwitch),
                      dense: true,
                      onTap: () {},
                      title: Text(
                        item.title,
                      ),
                    );
                  })).toList(),
            ),
            Text(
                "Get notifications when ${state.data.idAccount?.username ?? ""} share photos or videos ")
          ],
        );
      },
    );
  }
}

class NotificationData {
  final String title;
  final bool isSwitch;

  NotificationData({required this.title, required this.isSwitch});
}
