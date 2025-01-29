import 'package:flutter/material.dart';
import 'package:todoapp/feature/auth/presentation/screen/listner.dart';
import '../../../data/model/on_boarding_model.dart';
import 'widget/back_next_button.dart';
import 'widget/dots.dart';
import 'widget/skip.dart';
import 'widget/title_subtite.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController pageController = PageController();
  int pageindex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Skip(index: pageindex, pageController: pageController),
                    Expanded(
                      child: PageView.builder(
                        onPageChanged: (index) {
                          setState(() {
                            pageindex = index;
                          });
                        },
                        controller: pageController,
                        itemCount: OnBoardingModel.list.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              const SizedBox(height: 16),
                              //image
                              Image.asset(
                                  OnBoardingModel.list[index].imagepath),
                              const SizedBox(height: 68),
                              // title + subtitle
                              TitleSubtite(index: index),
                            ],
                          );
                        },
                      ),
                    ),
                    Dots(pageController: pageController),
                    const SizedBox(height: 50),
                    //buttons
                    BackNextButton(
                        pageController: pageController, pageindex: pageindex),
                    const CubitListner()
                  ],
                ))));
  }
}
