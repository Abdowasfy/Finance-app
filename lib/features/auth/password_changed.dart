import 'package:finance_app/core/routing/app_routes.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:finance_app/core/widgets/primary_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class PasswordChanged extends StatefulWidget {
  const PasswordChanged({super.key});

  @override
  State<PasswordChanged> createState() => _PasswordChangedState();
}

class _PasswordChangedState extends State<PasswordChanged> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(22.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/icons/successmark.svg",
                width: 100.w,
                height: 100.h,
              ),
              const Gap(35),
              Text(
                "Password Changed!",
                style: AppStyles.primaryMeadLineStyle,
                textAlign: TextAlign.center,
              ),
              const Gap(8),
              SizedBox(
                width: 230.w,
                child: Text(
                  "Your password has been changed successfully.",
                  textAlign: TextAlign.center,
                  style: AppStyles.grey12wMediumStyle, 
                ),
              ),
              const Gap(40),
              PrimayButtonWidget(
                buttonText: "Back to Login",
                onPress: () {
                  GoRouter.of(context).push(AppRoutes.loginScreen);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
