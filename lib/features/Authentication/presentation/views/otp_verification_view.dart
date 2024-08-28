import 'package:flutter/material.dart';
import 'package:shoply/features/Authentication/data/models/otp_view_model.dart';
import 'package:shoply/features/Authentication/presentation/views/widgets/otp_verification_view_body.dart';

class OtpVerificationView extends StatelessWidget {
  const OtpVerificationView({super.key, required this.otpViewModel});
  final OtpViewModel otpViewModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: OtpVerificationViewBody(
          otpViewModel: otpViewModel,
        ),
      ),
    );
  }
}
