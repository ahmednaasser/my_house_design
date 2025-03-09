import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
//import 'package:my_house_design/core/services/shared_preferences_singleton.dart';
import 'package:my_house_design/core/utils/app_images.dart';
//import 'package:my_house_design/core/utils/constants.dart';
//import 'package:my_house_design/features/auth/presentation/views/login_view.dart';

import '../../../../on_boarding/presentation/views/on_boarding_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    executeNavigation();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Center(
            child: SvgPicture.asset(
              Assets.imagesLogo2,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }

  void executeNavigation() {
    // bool isOnBoardingViewSeen = Prefs.getBool(kisOnBoardingViewSeen);
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
      }
    });
  }
}
