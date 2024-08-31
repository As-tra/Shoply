import 'package:flutter/material.dart';
import 'package:shoply/core/utils/app_colors.dart';
import 'package:shoply/features/Onboarding/presentation/views/widgets/custom_button.dart';

void showFailureBottomSheetInfo(BuildContext context, String message) {
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            children: [
              const Icon(
                Icons.error_outline_outlined,
                color: AppColors.primary,
                size: 80,
              ),
              const SizedBox(height: 10),
              Text(
                message,
                style: getTitleStyle(),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: CustomButton(
                        ontap: () {
                          Navigator.of(context).pop();
                        },
                        text: 'Back'),
                  ),
                ],
              )
            ],
          ),
        ),
      );
    },
  );
}

void showSuccessBottomSheetInfo(BuildContext context, String message) {
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            children: [
              const Icon(
                Icons.check_circle_outline,
                color: AppColors.primary,
                size: 80,
              ),
              Text(
                'Login Succesful!',
                style: getTitleStyle(),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: CustomButton(
                        ontap: () {
                          // guide him to the Home or whatever
                        },
                        text: 'Done'),
                  ),
                ],
              )
            ],
          ),
        ),
      );
    },
  );
}

TextStyle getTitleStyle() {
  return const TextStyle(
    fontSize: 20,
    color: AppColors.primaryText,
    fontWeight: FontWeight.bold,
  );
}
