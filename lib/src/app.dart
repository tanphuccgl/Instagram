import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_it/get_it.dart';
import 'package:instagram/src/config/theme/themes.dart';
import 'package:instagram/src/modules/account/logic/account_bloc.dart';
import 'package:instagram/src/modules/account/logic/check_account_bloc.dart';
import 'package:instagram/src/modules/profile/logic/profile/profile_bloc.dart';

import 'config/routes/auto_route.gr.dart';
import 'localization/localization_util.dart';

/// The Widget that configures your application.
class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appRouter = GetIt.I<XRouter>();

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AccountBloc(),
        ),
        BlocProvider(
          create: (context) => ProfileBloc(),
        ),
        BlocProvider(
          create: (context) => CheckAccountBloc(),
        ),
      ],
      child: MaterialApp.router(
        theme: XTheme.light(),
        builder: EasyLoading.init(builder: BotToastInit()),
        debugShowCheckedModeBanner: false,
        darkTheme: XTheme.dark(),
        themeMode: ThemeMode.light,
        restorationScopeId: 'app',
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en', ''),
        ],
        onGenerateTitle: (BuildContext context) => S.of(context).appTitle,
        routeInformationParser: appRouter.defaultRouteParser(
          includePrefixMatches: true,
        ),
        routerDelegate: AutoRouterDelegate(appRouter),
      ),
    );
  }
}
