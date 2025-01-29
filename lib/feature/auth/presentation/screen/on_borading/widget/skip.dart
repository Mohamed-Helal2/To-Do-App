import 'package:flutter/material.dart';
import 'package:todoapp/core/widget/custom_text_button.dart';
import '../../../../../../core/utils/app_strings.dart';

class Skip extends StatelessWidget {
  const Skip({super.key, required this.index, required this.pageController});
  final int index;
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return index != 2
        ? Align(
            alignment: Alignment.centerLeft,
            child: CustomTextButton(
              text: AppStrings.skip,
              onPressed: () {
                pageController.jumpToPage(2);
              },
            ))
        : const SizedBox(height: 50);
  }
}
