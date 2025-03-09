import 'package:flutter/material.dart';
import 'package:my_house_design/core/utils/app_colors.dart';
import 'widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  static const routeName = 'splash';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      body: SplashViewBody(),
    );
  }
}
