import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:shoply/core/utils/app_colors.dart';

class CustomPinCodeField extends StatelessWidget {
  final void Function(String)? oncomplete;
  final TextEditingController? controller;
  final StreamController<ErrorAnimationType>? errorController;
  const CustomPinCodeField({
    super.key,
    required this.oncomplete,
    this.errorController,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      autoFocus: true,
      appContext: context,
      errorAnimationController: errorController,
      controller: controller,
      length: 6,
      animationType: AnimationType.fade,
      keyboardType: const TextInputType.numberWithOptions(),
      pinTheme: PinTheme(
        activeColor: AppColors.primary,
        selectedFillColor: AppColors.secondaryText,
        selectedColor: AppColors.secondaryText,
        inactiveColor: AppColors.secondaryText,
        shape: PinCodeFieldShape.circle,
        fieldHeight: 50,
        fieldWidth: 50,
      ),
      animationDuration: const Duration(milliseconds: 300),
      onCompleted: oncomplete,
      beforeTextPaste: (text) {
        return true;
      },
    );
  }
}
