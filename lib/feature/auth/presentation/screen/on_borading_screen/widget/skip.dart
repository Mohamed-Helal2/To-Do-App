import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            child: TextButton(
              child: Text(AppStrings.skip,
                  style: GoogleFonts.lato(
                    color: Colors.white.withOpacity(0.44),
                    fontSize: 16,
                  )),
              onPressed: () {
                pageController.jumpToPage(2);
              },
            ))
        : const SizedBox(height: 50);
  }
}
