import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoply/core/utils/app_colors.dart';
import 'package:shoply/core/utils/assets.dart';
import 'package:shoply/features/Authentication/presentation/manager/email_auth_cubit/email_auth_cubit.dart';
import 'package:shoply/features/Authentication/presentation/views/widgets/auth_provider_button.dart';
import 'package:shoply/features/Authentication/presentation/views/widgets/custom_divider.dart';
import 'package:shoply/features/Authentication/presentation/views/widgets/login_bottom_sheet.dart';
import 'package:shoply/features/Onboarding/presentation/views/widgets/custom_button.dart';

class LoginWithEmailViewBody extends StatelessWidget {
  const LoginWithEmailViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 60),
          _buildTitle(),
          const SizedBox(height: 24),
          AuthProviderButton(
            text: 'Login with Google',
            ontap: () {},
            icon: Assets.iconsGoogle,
          ),
          const SizedBox(height: 16),
          AuthProviderButton(
            text: 'Login with Facebook',
            ontap: () {},
            icon: Assets.iconsFacebook,
          ),
          const SizedBox(height: 30),
          const CustomDivider(),
          const SizedBox(height: 30),
          Row(
            children: [
              Expanded(
                child: CustomButton(
                  ontap: () {
                    var emailAuthCubit = context.read<EmailAuthCubit>();
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (context) {
                        return BlocProvider.value(
                          value: emailAuthCubit,
                          child: const LoginBottomSheet(),
                        );
                      },
                    );
                  },
                  text: 'Login with Email',
                ),
              ),
            ],
          ),
          const Spacer(),
          _buildSignupAnchor(),
          const SizedBox(height: 36),
        ],
      ),
    );
  }

  Row _buildSignupAnchor() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account yet?",
          style: TextStyle(
            color: AppColors.primaryText,
          ),
        ),
        Text(
          ' SignUp',
          style: TextStyle(
            color: AppColors.primary,
            decoration: TextDecoration.underline,
          ),
        ),
      ],
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
