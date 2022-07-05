import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/src/constants/my_network.dart';
import 'package:instagram/src/modules/profile/logic/profile/profile_bloc.dart';

class BottomSheetChangeProfilePhoto extends StatelessWidget {
  const BottomSheetChangeProfilePhoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(300.0),
                  child: Image.network(
                    state.data.avartarUrl ?? MyNetwork.urlAvatar,
                    fit: BoxFit.cover,
                    width: 50,
                    height: 50,
                  ),
                ),
                Column(
                  children: const [
                    Text('Synced profile photo'),
                    Text('Instagram, Facebook'),
                  ],
                )
              ],
            ),
            Column(
              children: ListTile.divideTiles(
                  color: Colors.transparent,
                  tiles: _data.map((item) {
                    return ListTile(
                      dense: true,
                      onTap: () {
                        switch (item) {
                          case "New Profile Photo":
                            context
                                .read<ProfileBloc>()
                                .onNewProfilePhoto(context);
                            break;
                          case "Remove photo":
                            context.read<ProfileBloc>().onRemovePhoto(context);

                            break;
                          case "Manage Sync Settings":
                            break;

                          default:
                        }
                      },
                      title: Text(
                        item,
                      ),
                    );
                  })).toList(),
            ),
          ],
        );
      },
    );
  }
}

List<String> _data = [
  "New Profile Photo",
  "Remove photo",
  "Manage Sync Settings"
];
