import 'package:flutter/material.dart';
import 'package:shoply/core/utils/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.ontap,
    required this.text,
  });
  final VoidCallback ontap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: _getDecoration(),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: _getStyle(),
        ),
      ),
    );
  }

  BoxDecoration _getDecoration() {
    return BoxDecoration(
      color: AppColors.primary,
      borderRadius: BorderRadius.circular(8),
    );
  }

  TextStyle _getStyle() {
    return const TextStyle(
      color: AppColors.secondaryBackground,
      fontSize: 16,
    );
  }
}
