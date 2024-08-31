import 'package:flutter/material.dart';
import 'package:shoply/core/utils/app_colors.dart';
import 'package:shoply/features/Authentication/presentation/views/widgets/login_bottom_sheet_form_field.dart';
import 'package:shoply/features/Onboarding/presentation/views/widgets/custom_button.dart';

class LoginBottomSheet extends StatelessWidget {
  const LoginBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 16,
        left: 16,
        right: 16,
        bottom: MediaQuery.of(context).viewInsets.bottom + 32,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildTitle(),
                IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(Icons.close),
                )
              ],
            ),
            const SizedBox(height: 16),
            const LoginBottomSheetFormField(
              hint: 'Email Id',
              icon: Icons.email_outlined,
            ),
            const SizedBox(height: 16),
            const LoginBottomSheetFormField(
              hint: 'Password',
              icon: Icons.lock_outline,
            ),
            const SizedBox(height: 6),
            _forgetPasswordLabel(),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: CustomButton(ontap: () {}, text: 'Login'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Text _forgetPasswordLabel() {
    return const Text(
      'Forget Password ?',
      style: TextStyle(
        color: AppColors.primary,
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
    );
  }

  Text _buildTitle() {
    return const Text(
      'Login with Email',
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
