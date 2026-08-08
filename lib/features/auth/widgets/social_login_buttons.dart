import 'package:finance_app/core/styling/app_assets.dart';
import 'package:finance_app/features/auth/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class CustomSocialLoginIcons extends StatelessWidget {
  const CustomSocialLoginIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomIconButton(onTap: () {}, iconPath: AppAssets.facebookSvgIcon),
        CustomIconButton(onTap: () {}, iconPath: AppAssets.googlesvgIcon),
        CustomIconButton(onTap: () {}, iconPath: AppAssets.applesvgIcon),
      ],
    );
  }
}
