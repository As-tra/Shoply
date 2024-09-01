import 'package:flutter/material.dart';
import 'package:shoply/core/utils/app_colors.dart';

class CustomEmailField extends StatelessWidget {
  const CustomEmailField({
    super.key,
    required this.hint,
    required this.icon,
    required this.controller,
    this.visible = false,
  });
  final String hint;
  final IconData icon;
  final TextEditingController controller;
  final bool visible;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: visible,
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return '* Field is Required';
        }
        return null;
      },
      controller: controller,
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
