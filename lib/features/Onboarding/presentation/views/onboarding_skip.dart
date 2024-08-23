import 'package:flutter/material.dart';
import 'package:shoply/core/utils/app_colors.dart';

class OnbroadingSkip extends StatelessWidget {
  const OnbroadingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          'Skip',
          style: TextStyle(
            color: AppColors.primary,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
