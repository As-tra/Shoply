import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoply/features/Authentication/presentation/manager/auth_cubit/auth_cubit.dart';
import 'package:shoply/features/Authentication/presentation/views/widgets/login_with_email_view_body.dart';

class LoginWithEmailView extends StatelessWidget {
  const LoginWithEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => AuthCubit(),
        child: const LoginWithEmailViewBody(),
      ),
    );
  }
}
