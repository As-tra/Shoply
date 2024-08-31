

import 'package:flutter/material.dart';
import 'package:shoply/features/Authentication/presentation/views/widgets/login_with_email_view_body.dart';

class LoginWithEmailView extends StatelessWidget {
  const LoginWithEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoginWithEmailViewBody(),
    );
  }
}