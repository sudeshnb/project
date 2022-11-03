import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:onyxsio/core/configs/keyboard_unfocus.dart';
import 'core/configs/configs.dart';
import 'core/connection/bloc/connected_bloc.dart';
import 'core/responsive/size.dart';
import 'core/routes/page_route.dart';
import 'core/theme/cubit/theme_cubit.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(create: (_) => ThemeCubit()),
        BlocProvider<ConnectedBloc>(create: (context) => ConnectedBloc()),
      ],
      // child: MultiProvider(
      // providers: [
      // ChangeNotifierProvider(create: (_) => DrawerProvider()),
      // ChangeNotifierProvider(create: (_) => ScrollProvider()),
      // ],
      child: BlocBuilder<ThemeCubit, ThemeState>(builder: (context, state) {
        return Sizer(builder: (context, orientation, deviceType) {
          return KeyboardUnfocus(
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Sudesh',
              theme: AppTheme.themeData(state.isDarkThemeOn, context),
              initialRoute: "/",
              onGenerateRoute: (settings) =>
                  RouteGenerator.generateRoute(settings),
            ),
          );
        });
      }),
      // ),
    );
  }
}
