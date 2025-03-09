import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
//import 'package:my_house_design/core/services/shared_preferences_singleton.dart';
import 'package:my_house_design/core/utils/app_colors.dart';
import 'package:my_house_design/core/widgets/custom_button.dart';
import 'package:my_house_design/features/auth/presentation/views/login_view.dart';
//import '../../../../../core/utils/constants.dart';
import 'on_boarding_page_view.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;
  int currentPageValue = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentPageValue = pageController.page?.round() ?? 0;
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: OnBoardingPageView(pageController: pageController),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DotsIndicator(
                dotsCount: 3,
                position: currentPageValue.toDouble(),
                decorator: DotsDecorator(
                  color: const Color(0xFFD0D0D0),
                  activeColor: AppColors.primaryColor,
                  size: const Size.square(9.0),
                  activeSize: const Size(18.0, 9.0),
                  activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
              CustomButton(
                width: 133,
                text: (pageController.hasClients &&
                        pageController.page?.round() == 2)
                    ? 'Get Started'
                    : 'Next',
                onPressed: () {
                  if (currentPageValue < 2) {
                    pageController.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  } else {
                    // Prefs.setBool(kisOnBoardingViewSeen, true);
                    Navigator.pushReplacementNamed(
                        context, LoginView.routeName);
                  }
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
