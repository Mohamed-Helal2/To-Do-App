import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoapp/core/service/service_locator.dart';
import 'package:todoapp/core/theme/theme.dart';
import 'package:todoapp/core/utils/app_strings.dart';
import 'package:todoapp/feature/auth/presentation/cubit/auth_cubit.dart';
import '../feature/auth/presentation/screen/splash/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: AppStrings.tilte,
        theme: getAppTheme(),
        themeMode: ThemeMode.light,
        home: BlocProvider(
          create: (context) => sl<AuthCubit>()..navigate(),
          child: const SplashScreen(),
        ));
  }
}
