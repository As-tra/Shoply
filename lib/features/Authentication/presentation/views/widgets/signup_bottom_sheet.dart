import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoply/core/utils/app_colors.dart';
import 'package:shoply/core/widgets/custom_loading_indicator.dart';
import 'package:shoply/features/Authentication/presentation/manager/email_auth_cubit/email_auth_cubit.dart';
import 'package:shoply/features/Authentication/presentation/views/widgets/custom_email_field.dart';
import 'package:shoply/features/Authentication/presentation/views/widgets/custom_password_field.dart';
import 'package:shoply/features/Onboarding/presentation/views/widgets/custom_button.dart';

class SignupBottomSheet extends StatefulWidget {
  const SignupBottomSheet({super.key});

  @override
  State<SignupBottomSheet> createState() => _SignupBottomSheetState();
}

class _SignupBottomSheetState extends State<SignupBottomSheet> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  bool isLoading = false;

  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 16,
        left: 16,
        right: 16,
        bottom: MediaQuery.of(context).viewInsets.bottom + 32,
      ),
      child: AbsorbPointer(
        absorbing: isLoading,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Form(
                key: formKey,
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
                    CustomEmailField(
                      controller: emailController,
                      hint: 'Email Id',
                      icon: Icons.email_outlined,
                    ),
                    const SizedBox(height: 16),
                    CustomPasswordField(
                      controller: passwordController,
                      hint: 'Password',
                    ),
                    const SizedBox(height: 16),
                    CustomPasswordField(
                      controller: confirmPasswordController,
                      hint: 'Confirm Password',
                    ),
                    const SizedBox(height: 6),
                    _forgetPasswordLabel(),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: CustomButton(
                            ontap: () {
                              if (formKey.currentState!.validate()) {
                                BlocProvider.of<EmailAuthCubit>(context)
                                    .loginWithEmail(
                                  email: emailController.text,
                                  password: passwordController.text,
                                );
                              }
                            },
                            text: 'Login',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            CustomLoadingIndicator(visible: isLoading),
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
      'Signup with Email',
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
