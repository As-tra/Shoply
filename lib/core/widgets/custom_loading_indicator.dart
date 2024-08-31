import 'package:flutter/material.dart';
import 'package:shoply/core/utils/app_colors.dart';

class CustomLoadingIndicator extends StatelessWidget {
  const CustomLoadingIndicator({
    super.key,
    required this.visible,
  });
  final bool visible;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visible,
      child: const Align(
        child: Card(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: CircularProgressIndicator(
              color: AppColors.primary,
            ),
          ),
        ),
      ),
    );
  }
}
