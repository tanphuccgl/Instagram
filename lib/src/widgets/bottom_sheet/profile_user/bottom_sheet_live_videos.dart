import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/src/config/routes/coordinator.dart';
import 'package:instagram/src/modules/search/logic/profile_user_bloc.dart';

List<LiveVideosData> _menuLiveVideos = [
  LiveVideosData(title: 'Get all notifications', isChoose: false),
  LiveVideosData(title: 'Get some notification', isChoose: false),
  LiveVideosData(title: 'Turn off notifications', isChoose: false),
];

class BottomSheetLiveVideos extends StatelessWidget {
  const BottomSheetLiveVideos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileUserBloc, ProfileUserState>(
      builder: (context, state) {
        return Column(
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () => XCoordinator.pop(context),
                    icon: const Icon(Icons.arrow_back)),
                const Text('Live videos'),
              ],
            ),
            Column(
              children: ListTile.divideTiles(
                  color: Colors.transparent,
                  tiles: _menuLiveVideos.map((item) {
                    return ListTile(
                      trailing: CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: 10,
                        child: Container(
                          height: 10,
                          width: 10,
                          decoration: const BoxDecoration(
                            color: Colors.orange,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      dense: true,
                      onTap: () {},
                      title: Text(
                        item.title,
                      ),
                    );
                  })).toList(),
            ),
            const Text(
                "We automatically send notification about live videos that may interest you. But you can choose to always get a notification when start a live video, or to ner be notified when thay go live.")
          ],
        );
      },
    );
  }
}

class LiveVideosData {
  final String title;
  final bool isChoose;

  LiveVideosData({required this.title, required this.isChoose});
}
