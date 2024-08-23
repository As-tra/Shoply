import 'package:flutter/material.dart';
import 'package:shoply/constants.dart';
import 'package:shoply/core/utils/app_colors.dart';
import 'package:shoply/features/Onboarding/presentation/views/onboarding_skip.dart';
import 'package:shoply/features/Onboarding/presentation/views/widgets/onboarding_page_view.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  late PageController pageController;
  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPadding),
          child: Column(
            children: [
              const SizedBox(height: 20),
              const OnbroadingSkip(),
              const SizedBox(height: 40),
              Expanded(
                child: OnbroadingPageView(pageController: pageController),
              ),
              Container(
                padding: const EdgeInsets.only(top: 45),
                child: Row(
                  children: [
                    Container(
                      width: 170,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Text(
                        'Next',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.secondaryBackground,
                          fontSize: 18,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
