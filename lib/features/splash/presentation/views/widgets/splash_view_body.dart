import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_house_design/core/utils/app_images.dart';

import '../../../../on_boarding/presentation/views/on_boarding_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
@override
  void initState() {
    
    executeNavigation();
    
        super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Center(child: SvgPicture.asset(Assets.imagesLogo)),
        ),
      ],
    );
  }
  
  void executeNavigation() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
    });

  }
}
