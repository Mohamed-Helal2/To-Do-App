import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoapp/core/widget/custom_button.dart';
import '../../../../../../core/utils/app_strings.dart';
import '../../../../../../core/widget/custom_text_button.dart';
import '../../../cubit/auth_cubit.dart';

class BackNextButton extends StatelessWidget {
  const BackNextButton(
      {super.key, required this.pageController, required this.pageindex});
  final int pageindex;
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // back
        pageindex != 0
            ? CustomTextButton(
                text: AppStrings.back,
                onPressed: () {
                  pageController.previousPage(
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeIn);
                },
              )
            : const SizedBox(width: 10),
        // next button
        CustomButton(
          text: pageindex != 2 ? AppStrings.next : AppStrings.getStarted,
          onPressed: () {
            if (pageindex != 2) {
              pageController.nextPage(
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeIn);
            } else {
              context.read<AuthCubit>().savedata();
            }
          },
        ),
      ],
    );
  }
}
