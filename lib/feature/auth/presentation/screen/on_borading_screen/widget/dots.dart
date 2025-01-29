import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../../core/utils/app_colors.dart';

class Dots extends StatelessWidget {
  const Dots({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: pageController,
      count: 3,
      effect: ExpandingDotsEffect(
        dotWidth: 10,
        dotHeight: 8,
        spacing: 8,
        activeDotColor: AppColors.primary,
        dotColor: Colors.white.withOpacity(0.44),
      ),
    );
  }
}
