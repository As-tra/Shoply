import 'package:flutter/material.dart';
import 'package:shoply/core/utils/app_colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Divider(
            color: AppColors.grey1,
            endIndent: 10,
            height: 1,
          ),
        ),
        Text(
          'OR',
          style: TextStyle(
            color: AppColors.grey3,
            fontWeight: FontWeight.bold,
          ),
        ),
        Expanded(
          child: Divider(
            color: AppColors.grey1,
            indent: 10,
            height: 1,
          ),
        ),
      ],
    );
  }
}
