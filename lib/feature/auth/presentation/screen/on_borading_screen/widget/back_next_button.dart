import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todoapp/feature/task/presentation/screen/home_screen.dart';

import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_strings.dart';

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
            ? TextButton(
                child: Text(AppStrings.back,
                    style: GoogleFonts.lato(
                        color: Colors.white.withOpacity(0.44), fontSize: 16)),
                onPressed: () {
                  pageController.previousPage(
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeIn);
                },
              )
            : const SizedBox(width: 10),
        // next button
        ElevatedButton(
            onPressed: () {
              pageindex != 2
                  ? pageController.nextPage(
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeIn)
                  : Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => const HomeScreen()
                    ));
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4))),
            child: Text(
                pageindex != 2 ? AppStrings.next : AppStrings.getStarted,
                style: const TextStyle(color: AppColors.white)))
      ],
    );
  }
}
