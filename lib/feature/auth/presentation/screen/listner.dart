import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoapp/core/commos/commons.dart';
import 'package:todoapp/feature/auth/presentation/cubit/auth_cubit.dart';
import 'package:todoapp/feature/auth/presentation/screen/on_borading/on_boarding_screen.dart';
import 'package:todoapp/feature/task/presentation/screen/home_screen.dart';

import '../../../../core/service/service_locator.dart';

class CubitListner extends StatelessWidget {
  const CubitListner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is OnBordingSucess) {
          navigate(
              context: context,
              screen: state.onbarding
                  ? const HomeScreen()
                  : BlocProvider.value(
                      value: sl<AuthCubit>(),
                      child: const OnBoardingScreen(),
                    ));
        }
      },
      child: const SizedBox.shrink(),
    );
  }
}
