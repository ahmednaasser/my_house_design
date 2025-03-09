import 'package:flutter/material.dart';
import 'package:my_house_design/core/utils/app_colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final double borderRadius;
  final double? width;
  final double height;

  static const List<Color> gradientColors = [
    AppColors.primaryColor,
    AppColors.secondaryColor,
  ];

  static const TextStyle defaultTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );

  const CustomButton({
    super.key,
    required this.text,
    this.onPressed,
    this.borderRadius = 12.17,
    this.width,
    this.height = 42.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
              colors: gradientColors,
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onPressed,
            borderRadius: BorderRadius.circular(borderRadius),
            child: Center(
              child: Text(
                text,
                style: defaultTextStyle,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
