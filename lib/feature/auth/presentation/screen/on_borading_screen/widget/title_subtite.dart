import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../data/model/on_boarding_model.dart';

class TitleSubtite extends StatelessWidget {
  const TitleSubtite({super.key ,required this.index});
final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         //title
                              Text(OnBoardingModel.list[index].title,
                                  style: GoogleFonts.lato(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 32,
                                  )),
                              const SizedBox(height: 42),
                              //subtitle
                              Text(OnBoardingModel.list[index].subTitle,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.lato(
                                    color: Colors.white,
                                    fontSize: 16,
                                  )),
      ],
    );
  }
}