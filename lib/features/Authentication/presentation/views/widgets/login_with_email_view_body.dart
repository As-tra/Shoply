import 'package:flutter/material.dart';
import 'package:shoply/core/utils/app_colors.dart';
import 'package:shoply/features/Authentication/presentation/views/widgets/auth_provider_button.dart';

class LoginWithEmailViewBody extends StatelessWidget {
  const LoginWithEmailViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(height: 60),
          _buildTitle(),
          AuthProviderButton(),
        ],
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
