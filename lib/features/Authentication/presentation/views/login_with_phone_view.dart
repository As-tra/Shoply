import 'package:flutter/material.dart';
import 'package:shoply/core/utils/app_colors.dart';
import 'package:shoply/features/Authentication/presentation/views/widgets/login_with_phone_view_body.dart';

class LoginWithPhoneView extends StatelessWidget {
  const LoginWithPhoneView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.primaryBackground,
      body: LoginWithPhoneViewBody(),
    );
  }
}
