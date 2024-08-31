
import 'package:flutter/material.dart';
import 'package:shoply/core/utils/app_colors.dart';
import 'package:shoply/core/utils/assets.dart';

class AuthProviderButton extends StatelessWidget {
  const AuthProviderButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: Image.asset(Assets.iconsSearch),
        title: Text(
          'Login with Google',
          style: TextStyle(
            color: AppColors.primaryText,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
