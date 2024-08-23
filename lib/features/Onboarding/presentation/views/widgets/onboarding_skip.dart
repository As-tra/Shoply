import 'package:flutter/material.dart';
import 'package:shoply/constants.dart';
import 'package:shoply/core/utils/app_colors.dart';

class OnbroadingSkip extends StatelessWidget {
  const OnbroadingSkip({
    super.key,
    required this.pageController,
  });
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: () => pageController.jumpToPage(kOnboardingItems.length - 1),
            child: Text(
              'Skip',
              style: _buildStyle(),
            ),
          )
        ],
      ),
    );
  }

  TextStyle _buildStyle() {
    return const TextStyle(
      color: AppColors.primary,
      fontWeight: FontWeight.bold,
      fontSize: 15,
    );
  }
}
