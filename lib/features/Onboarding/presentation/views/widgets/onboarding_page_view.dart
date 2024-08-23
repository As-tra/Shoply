import 'package:flutter/material.dart';
import 'package:shoply/constants.dart';
import 'package:shoply/features/Onboarding/presentation/views/widgets/page_view_item.dart';

class OnbroadingPageView extends StatelessWidget {
  const OnbroadingPageView({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: kOnboardingItems.length,
      controller: pageController,
      itemBuilder: (context, index) {
        return PageViewItem(index: index);
      },
    );
  }
}
