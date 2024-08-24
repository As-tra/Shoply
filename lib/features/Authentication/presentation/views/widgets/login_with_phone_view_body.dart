import 'package:flutter/material.dart';
import 'package:shoply/core/utils/app_colors.dart';
import 'package:shoply/features/Authentication/presentation/views/widgets/country_picker.dart';
import 'package:shoply/features/Authentication/presentation/views/widgets/custom_button.dart';
import 'package:shoply/features/Authentication/presentation/views/widgets/custom_text_field.dart';
import 'package:shoply/features/Authentication/presentation/views/widgets/terms_and_conditions.dart';

class LoginWithPhoneViewBody extends StatefulWidget {
  const LoginWithPhoneViewBody({super.key});

  @override
  State<LoginWithPhoneViewBody> createState() => _LoginWithPhoneViewBodyState();
}

class _LoginWithPhoneViewBodyState extends State<LoginWithPhoneViewBody> {
  int phoneLength = 10;
  String errorMessage = '';
  final GlobalKey<FormState> _formKey = GlobalKey();

  void _updateState(int value) {
    phoneLength = value;
    setState(() {});
  }

  String? validateField(String? value) {
    value = value?.trim();
    if (value == null || value.isEmpty) {
      errorMessage = 'Please Enter Your Number';
    } else if (int.tryParse(value) == null) {
      errorMessage = 'Number must contain only digits';
    } else if (value.length != phoneLength) {
      errorMessage = 'Number length must be $phoneLength';
    } else {
      errorMessage = '';
    }
    setState(() {});
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            _buildTitle(),
            const SizedBox(height: 8),
            _buildSubTitle('Please enter your mobile number to login'),
            const SizedBox(height: 40),
            Row(
              children: [
                CountryPicker(
                  update: _updateState,
                ),
                const SizedBox(width: 5),
                Expanded(
                  child: CustomTextField(validate: validateField),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  errorMessage,
                  style: const TextStyle(color: Colors.red),
                ),
              ],
            ),
            const Spacer(),
            CustomButton(
                ontap: () {
                  _formKey.currentState!.validate();
                },
                text: 'Continue to Login'),
            const SizedBox(height: 20),
            const TermsAndConditions(),
            const SizedBox(height: 20),
          ],
        ),
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
