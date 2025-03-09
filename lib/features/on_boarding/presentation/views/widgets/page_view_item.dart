import 'package:flutter/material.dart';
//import 'package:my_house_design/core/services/shared_preferences_singleton.dart';
import 'package:my_house_design/core/utils/app_colors.dart';
import 'package:my_house_design/core/utils/app_text_styles.dart';
//import 'package:my_house_design/core/utils/constants.dart';

import '../../../../auth/presentation/views/login_view.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.isVisible,
  });

  final String image;
  final String title;
  final String subTitle;
  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Image.asset(
              image,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            Visibility(
              visible: isVisible,
              child: GestureDetector(
                onTap: () {
                  //Prefs.setBool(kisOnBoardingViewSeen, true);
                  Navigator.pushReplacementNamed(context, LoginView.routeName);
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 40.0, left: 20.0),
                  child: Text("Skip"),
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 76),
        Text(
          title,
          style: TextStyles.bold30.copyWith(color: AppColors.primaryColor),
        ),
        SizedBox(height: 26),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Text(subTitle,
              textAlign: TextAlign.center, style: TextStyles.bold12),
        ),
      ],
    );
  }
}
