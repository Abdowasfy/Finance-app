import 'package:finance_app/core/routing/app_routes.dart';
import 'package:finance_app/core/styling/app_assets.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:finance_app/core/widgets/primary_button_widget.dart';
import 'package:finance_app/core/widgets/primary_outlined_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              AppAssets.onBoard,
              width: double.infinity,
              height: 520.h,
              fit: BoxFit.fitWidth,
            ),
            Gap(21.h),
            PrimayButtonWidget(
              width: 331.w,
              height: 56.h,
              buttonText: "Login",
              onPress: () {
                GoRouter.of(context).push(AppRoutes.loginScreen);
              },
            ),
            const Gap(20),
            PrimayOutlinedButtonWidget(
              buttonText: "Register",
              onPress: () {
                GoRouter.of(context).push(AppRoutes.registerScreen);
              },
            ),
            const Gap(46),
            TextButton(
              onPressed: () {
                GoRouter.of(context).push(AppRoutes.mainscreen);
              },
              child: Text(
                "Continue as a guest",
                style: AppStyles.black15BoldStyle.copyWith(
                  color: Color(0xff202955),
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
