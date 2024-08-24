import 'package:flutter/material.dart';
import 'package:shoply/core/utils/app_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.validate});
  final String? Function(String?)? validate;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      validator: validate,
      keyboardType: const TextInputType.numberWithOptions(),
      decoration: InputDecoration(
        border: _buildBorder(),
        enabledBorder: _buildBorder(),
        focusedBorder: _buildBorder(),
        hintText: 'Your Mobile Number',
        hintStyle: const TextStyle(
          color: AppColors.secondaryText,
          fontSize: 15,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }

  OutlineInputBorder _buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: AppColors.grey1),
    );
  }
}
