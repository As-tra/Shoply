import 'package:flutter/material.dart';
import 'package:shoply/core/utils/app_colors.dart';

class CustomPasswordField extends StatefulWidget {
  const CustomPasswordField({
    super.key,
    required this.hint,
    required this.controller,
  });
  final String hint;
  final TextEditingController controller;

  @override
  State<CustomPasswordField> createState() => _LoginBottomSheetFormFieldState();
}

class _LoginBottomSheetFormFieldState extends State<CustomPasswordField> {
  bool visible = false;
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
      controller: widget.controller,
      decoration: InputDecoration(
        border: _buildBorder(),
        enabledBorder: _buildBorder(),
        focusedBorder: _buildBorder(),
        prefixIcon: const Icon(
          Icons.lock_outline,
          color: AppColors.grey2,
        ),
        suffixIcon: IconButton(
          onPressed: () {
            visible = !visible;
            setState(() {});
          },
          icon: Icon(visible ? Icons.visibility : Icons.visibility_off),
        ),
        hintText: widget.hint,
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
