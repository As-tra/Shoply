import 'package:flutter/material.dart';
import 'package:shoply/core/utils/app_colors.dart';

class LoginBottomSheetFormField extends StatelessWidget {
  const LoginBottomSheetFormField(
      {super.key, required this.hint, required this.icon});
  final String hint;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: _buildBorder(),
        enabledBorder: _buildBorder(),
        focusedBorder: _buildBorder(),
        prefixIcon: Icon(
          icon,
          color: AppColors.grey2,
        ),
        hintText: hint,
        hintStyle: const TextStyle(color: AppColors.grey2),
      ),
    );
  }

  OutlineInputBorder _buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: AppColors.grey3),
    );
  }
}
