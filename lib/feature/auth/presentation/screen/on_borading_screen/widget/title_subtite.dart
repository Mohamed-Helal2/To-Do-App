import 'package:flutter/material.dart';
import '../../../../data/model/on_boarding_model.dart';

class TitleSubtite extends StatelessWidget {
  const TitleSubtite({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //title
        Text(OnBoardingModel.list[index].title,
            style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(height: 42),
        //subtitle
        Text(OnBoardingModel.list[index].subTitle,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.displayMedium),
      ],
    );
  }
}
