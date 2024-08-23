import 'package:flutter/material.dart';
import 'package:shoply/constants.dart';
import 'package:shoply/core/utils/app_colors.dart';
import 'package:shoply/features/Onboarding/data/models/onboarding_model.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.index,
  });
  final int index;

  @override
  Widget build(BuildContext context) {
    OnboardingModel item = kOnboardingItems[index];
    return Container(
      color: AppColors.primaryBackground,
      child: Column(
        children: [
          Container(
            color: AppColors.secondaryBackground,
            padding: const EdgeInsets.symmetric(horizontal: kPadding),
            child: Image.asset(item.image),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kPadding),
            child: Column(
              children: [
                const SizedBox(height: 40),
                Text(
                  item.title,
                  style: _getTitleStyle(),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                Text(
                  item.descreption,
                  style: _getDescStyle(),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  TextStyle _getDescStyle() {
    return const TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w500,
      color: AppColors.secondaryText,
    );
  }

  TextStyle _getTitleStyle() {
    return const TextStyle(
      color: AppColors.primaryText,
      fontSize: 24,
      fontWeight: FontWeight.bold,
    );
  }
}
