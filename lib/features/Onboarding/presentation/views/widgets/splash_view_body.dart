import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'SHOPLY.',
            style: TextStyle(
              color: Colors.white,
              fontSize: 36,
              letterSpacing: 1.3,
            ),
          ),
        ],
      ),
    );
  }
}
