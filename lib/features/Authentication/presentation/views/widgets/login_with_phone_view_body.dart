import 'package:flutter/material.dart';
import 'package:shoply/core/utils/app_colors.dart';
import 'package:shoply/features/Authentication/presentation/views/widgets/country_picker.dart';
import 'package:shoply/features/Authentication/presentation/views/widgets/custom_button.dart';
import 'package:shoply/features/Authentication/presentation/views/widgets/custom_text_field.dart';

class LoginWithPhoneViewBody extends StatelessWidget {
  const LoginWithPhoneViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 40),
          _buildTitle(),
          const SizedBox(height: 8),
          _buildSubTitle('Please enter your mobile number to login'),
          const SizedBox(height: 40),
          const Row(
            children: [
              CountryPicker(),
              SizedBox(width: 5),
              Expanded(
                child: CustomTextField(),
              ),
            ],
          ),
          const Spacer(),
          CustomButton(ontap: () {}, text: 'Continue to Login'),
          // change this to rich text
          Wrap(
            children: [
              _buildSubTitle('By continuing you agree to our '),
              const Text(
                'Terms & conditions',
                style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 14,
                    decoration: TextDecoration.underline),
              ),
            ],
          )
        ],
      ),
    );
  }

  Text _buildSubTitle(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 14,
        color: AppColors.secondaryText,
      ),
    );
  }

  Text _buildTitle() {
    return const Text(
      'Login to Shoply',
      style: TextStyle(
        fontSize: 22,
        color: AppColors.primaryText,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
