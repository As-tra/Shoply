import 'package:flutter/material.dart';
import 'package:shoply/core/utils/app_colors.dart';
import 'package:shoply/features/Onboarding/presentation/views/widgets/onboarding_navigation.dart';
import 'package:shoply/features/Onboarding/presentation/views/widgets/onboarding_skip.dart';
import 'package:shoply/features/Onboarding/presentation/views/widgets/onboarding_page_view.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  late PageController pageController;
  int currentPage = 0;
  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryBackground,
      body: Column(
        children: [
          const SizedBox(height: 40),
          OnbroadingSkip(pageController: pageController),
          const SizedBox(height: 20),
          Expanded(
            child: OnbroadingPageView(pageController: pageController),
          ),
          OnboardingNavigation(
            currentPage: currentPage,
            pageController: pageController,
          ),
          Container(height: 40, color: AppColors.primaryBackground),
        ],
      ),
    );
  }
}
