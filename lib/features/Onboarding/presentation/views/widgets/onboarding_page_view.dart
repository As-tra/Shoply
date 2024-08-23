import 'package:flutter/material.dart';
import 'package:shoply/core/utils/app_colors.dart';

class OnbroadingPageView extends StatelessWidget {
  const OnbroadingPageView({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: 4,
      controller: pageController,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 45),
              color: AppColors.secondaryBackground,
              child: const Column(
                children: [
                  Text(
                    'Add To Favorite',
                    style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "It's easy to add item you like in your favorites folder in Shoply",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: AppColors.secondaryText,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 50),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
