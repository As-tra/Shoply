import 'package:flutter/material.dart';
import 'package:shoply/core/utils/app_colors.dart';
import 'package:svg_flutter/svg_flutter.dart';

class AuthProviderButton extends StatelessWidget {
  const AuthProviderButton({
    super.key,
    required this.text,
    required this.icon,
    required this.ontap,
  });
  final String text;
  final String icon;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 24,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.grey3),
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              width: 24,
            ),
            const Spacer(flex: 3),
            Text(
              text,
              style: _getStyle(),
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }

  TextStyle _getStyle() {
    return const TextStyle(
      color: AppColors.primaryText,
      fontSize: 18,
    );
  }
}
