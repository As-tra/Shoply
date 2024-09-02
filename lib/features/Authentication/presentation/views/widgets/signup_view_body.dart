
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoply/core/utils/app_colors.dart';
import 'package:shoply/core/utils/assets.dart';
import 'package:shoply/features/Authentication/presentation/manager/auth_cubit/auth_cubit.dart';
import 'package:shoply/features/Authentication/presentation/views/widgets/auth_provider_button.dart';
import 'package:shoply/features/Authentication/presentation/views/widgets/custom_divider.dart';
import 'package:shoply/features/Authentication/presentation/views/widgets/signup_bottom_sheet.dart';
import 'package:shoply/features/Onboarding/presentation/views/widgets/custom_button.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

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
            text: 'Signup with Google',
            ontap: () async {
              // UserCredential user =
              await BlocProvider.of<AuthCubit>(context).signInWithGoogle();
              // log(user.user?.displayName ?? '');
            },
            icon: Assets.iconsGoogle,
          ),
          const SizedBox(height: 16),
          AuthProviderButton(
            text: 'Signup with Facebook',
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
                    var emailAuthCubit = context.read<AuthCubit>();
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (context) {
                        return BlocProvider.value(
                          value: emailAuthCubit,
                          child: const SignupBottomSheet(),
                        );
                      },
                    );
                  },
                  text: 'Signup with Email',
                ),
              ),
            ],
          ),
          const Spacer(),
          _buildSignupAnchor(context),
          const SizedBox(height: 36),
        ],
      ),
    );
  }
}

Row _buildSignupAnchor(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text(
        "Already have an account?",
        style: TextStyle(
          color: AppColors.primaryText,
        ),
      ),
      GestureDetector(
        onTap: () => Navigator.of(context).pop(),
        child: const Text(
          ' Login',
          style: TextStyle(
            color: AppColors.primary,
            decoration: TextDecoration.underline,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ],
  );
}

Text _buildTitle() {
  return const Text(
    'Signup to Shoply',
    style: TextStyle(
      fontSize: 22,
      color: AppColors.primaryText,
      fontWeight: FontWeight.bold,
    ),
  );
}
