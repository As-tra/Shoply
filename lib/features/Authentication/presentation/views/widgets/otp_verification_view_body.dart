import 'dart:async';
import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:shoply/core/utils/app_colors.dart';
import 'package:shoply/features/Authentication/data/models/otp_view_model.dart';
import 'package:shoply/features/Authentication/presentation/views/widgets/custom_button.dart';
import 'package:shoply/features/Authentication/presentation/views/widgets/custom_pin_code_field.dart';
import 'package:shoply/features/Authentication/presentation/views/widgets/terms_and_conditions.dart';
import 'package:shoply/features/Home/home_view.dart';

class OtpVerificationViewBody extends StatefulWidget {
  const OtpVerificationViewBody({super.key, required this.otpViewModel});

  final OtpViewModel otpViewModel;

  @override
  State<OtpVerificationViewBody> createState() =>
      _LoginWithPhoneViewBodyState();
}

class _LoginWithPhoneViewBodyState extends State<OtpVerificationViewBody> {
  final TextEditingController textEditingController = TextEditingController();
   final StreamController<ErrorAnimationType> _errorController =
      StreamController<ErrorAnimationType>();
  @override
  void dispose() {
    super.dispose();
    textEditingController.dispose();
  
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 40),
          _buildTitle(),
          const SizedBox(height: 8),
          _buildSubTitle('Please Enter The OTP Sent to '),
          const SizedBox(height: 8),
          _buildNumber(),
          const SizedBox(height: 20),
          CustomPinCodeField(
            controller: textEditingController,
            errorController: _errorController,
            oncomplete: (value) async {
              try {
                // do the real job here :)
                log(textEditingController.text);
                var cred = PhoneAuthProvider.credential(
                  verificationId: widget.otpViewModel.verficationId,
                  smsCode: textEditingController.text,
                );
                await FirebaseAuth.instance.signInWithCredential(cred);
                if (context.mounted) {
                  Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const HomeView(),
                  ),
                );
                }
                
              } catch (e) {
                 _errorController.add(ErrorAnimationType.shake);
                log(e.toString());
              }
            },
          ),
          const SizedBox(height: 10),
          _buildResend(),
          const SizedBox(height: 40),
          const Spacer(),
          CustomButton(ontap: () {}, text: 'Verify'),
          const SizedBox(height: 20),
          const TermsAndConditions(),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Row _buildNumber() {
    return Row(
      children: [
        Text(
          widget.otpViewModel.number,
          style: const TextStyle(
            fontSize: 15,
            color: AppColors.primaryText,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(width: 5),
        const Icon(
          Icons.edit,
          size: 16,
        ),
      ],
    );
  }

  Text _buildSubTitle(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 16,
        color: AppColors.secondaryText,
      ),
    );
  }

  Text _buildTitle() {
    return const Text(
      'Enter OTP',
      style: TextStyle(
        fontSize: 24,
        color: AppColors.primaryText,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

Row _buildResend() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Text(
        'Resend OTP ?',
        style: TextStyle(
          fontSize: 14,
          color: AppColors.primary,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  );
}
