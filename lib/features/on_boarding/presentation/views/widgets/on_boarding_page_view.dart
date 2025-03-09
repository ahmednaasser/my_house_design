import 'package:flutter/material.dart';
import 'package:my_house_design/core/utils/app_images.dart';
import 'package:my_house_design/features/on_boarding/presentation/views/widgets/page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      physics: const BouncingScrollPhysics(), 
      children: const [
        PageViewItem(
          isVisible: true,
          image: Assets.imagesPageViewItem1Image,
          title: 'Comfortable Space',
          subTitle: 'Transform your home into a cozy sanctuary designed for ultimate comfort',
          
        ),
        PageViewItem(
          isVisible: true,
          image: Assets.imagesPageViewItem2Image,
          title: 'Modern Design',
          subTitle: 'Discover sleek, stylish interiors that redefine contemporary living',
          
        ),
        PageViewItem(
          isVisible: false,
          image: Assets.imagesPageViewItem3Image,
          title: 'Relaxing',
          subTitle: 'Unwind in a perfectly curated space that soothes your mind and soul',
          
        ),
      ],
    );
  }
}
