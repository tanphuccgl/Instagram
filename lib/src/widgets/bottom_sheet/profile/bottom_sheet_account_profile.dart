import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/src/constants/my_network.dart';
import 'package:instagram/src/modules/profile/logic/profile/profile_bloc.dart';
import 'package:instagram/src/widgets/bottom_sheet/profile/data_profile.dart';

class BottomSheetAccountProfile extends StatelessWidget {
  const BottomSheetAccountProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return Column(
          children: [
            Column(
              children: ListTile.divideTiles(
                  color: Colors.transparent,
                  tiles: menuProfile.map((item) {
                    return ListTile(
                      visualDensity:
                          const VisualDensity(vertical: 3), // to expand

                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(300.0),
                        child: Image.network(
                          MyNetwork.urlAvatar,
                          fit: BoxFit.cover,
                          width: 50,
                          height: 50,
                        ),
                      ),
                      dense: true,
                      trailing: CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: 10,
                        child: Container(
                          height: 10,
                          width: 10,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      onTap: () {},
                      title: Text(
                        state.data.idAccount?.username ?? "",
                      ),
                    );
                  })).toList(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 27,
                      child: Container(
                        height: 58,
                        width: 58,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.abc,
                          color: Colors.black,
                        ),
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text("Add account")
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
