import 'package:flutter/material.dart';
import 'package:todoapp/core/utils/app_colors.dart';

import '../../../../../core/app_assets.dart';
import '../../../../../core/utils/app_strings.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
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
