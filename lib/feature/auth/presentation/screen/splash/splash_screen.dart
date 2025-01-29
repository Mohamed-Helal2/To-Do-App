import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoapp/feature/auth/presentation/cubit/auth_cubit.dart';
import '../../../../../core/app_assets.dart';
import '../../../../../core/utils/app_strings.dart';
import '../listner.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return Scaffold(
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppAssets.logo),
              const SizedBox(height: 24),
              Text(
                AppStrings.appName,
                style: Theme.of(context)
                    .textTheme
                    .displayLarge!
                    .copyWith(fontSize: 40),
              ),
              const CubitListner(),
            ],
          )),
        );
      },
    );
  }
}
