import 'package:flutter/material.dart';
import 'package:shoply/constants.dart';
import 'package:shoply/core/utils/app_colors.dart';

class PageViewProgressIndicator extends StatelessWidget {
  const PageViewProgressIndicator({
    super.key,
    required this.index,
  });
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        kOnboardingItems.length,
        (i) => Padding(
          padding: const EdgeInsets.only(right: 6),
          child: CircleAvatar(
            radius: 4,
            backgroundColor: index == i ? AppColors.primary : AppColors.grey1,
          ),
        ),
      ),
    );
  }
}
