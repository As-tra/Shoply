import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shoply/constants.dart';
import 'package:shoply/core/utils/app_colors.dart';
import 'package:shoply/core/utils/app_router.dart';
import 'package:shoply/features/Onboarding/presentation/views/widgets/custom_button.dart';
import 'package:shoply/features/Onboarding/presentation/views/widgets/page_view_progress_indicator.dart';

class OnboardingNavigation extends StatelessWidget {
  const OnboardingNavigation({
    super.key,
    required this.currentPage,
    required this.pageController,
  });

  final int currentPage;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryBackground,
      padding: const EdgeInsets.symmetric(horizontal: kPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PageViewProgressIndicator(index: currentPage),
          CustomButton(
            text: currentPage < kOnboardingItems.length - 1
                ? 'Next'
                : 'Get Started',
            ontap: () {
              currentPage < kOnboardingItems.length - 1
                  ? pageController.nextPage(
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.linear,
                    )
                  : GoRouter.of(context).push(AppRouter.kLoginWithEmail);
            },
          )
        ],
      ),
    );
  }
}
