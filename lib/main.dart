import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:instagram/src/config/routes/auto_route.gr.dart';
import 'package:instagram/src/models/prefs.dart';
import 'package:instagram/src/modules/profile/logic/profile/profile_bloc.dart';
import 'package:instagram/src/modules/search/logic/profile_user_bloc.dart';
import 'package:instagram/src/modules/sign/login/logic/login_bloc.dart';
import 'package:instagram/src/repositories/domain.dart';

import 'src/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  GetIt.I.registerLazySingleton(() => XRouter());
  _locator();
  await Prefs.init();

  BlocOverrides.runZoned(
    () => runApp(const MyApp()),
    //  blocObserver: XBlocObserver()
  );
}

void _locator() {
  GetIt.I
    ..registerLazySingleton(() => Domain())
    ..registerLazySingleton(() => LoginBloc())
    ..registerLazySingleton(() => ProfileUserBloc())
    ..registerLazySingleton(() => ProfileBloc());
}
