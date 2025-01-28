import 'package:flutter/material.dart';
import 'package:todoapp/core/utils/app_colors.dart';

import '../../../../../core/app_assets.dart';
import '../../../../../core/utils/app_strings.dart';
import 'package:google_fonts/google_fonts.dart';

import '../on_borading_screen/on_boarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    navigate();
    
  }
void navigate() {
  Future.delayed(const Duration(seconds: 3), () {
    if (mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) =>   OnBoardingScreen(),
        ),
      );
    }
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AppAssets.logo),
          const SizedBox(height: 24),
          Text(
            AppStrings.appName,
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      )),
    );
  }
}
