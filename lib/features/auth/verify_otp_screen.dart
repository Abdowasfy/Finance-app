import 'package:finance_app/core/routing/app_routes.dart' show AppRoutes;
import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:finance_app/core/widgets/primary_button_widget.dart';
import 'package:finance_app/features/auth/widgets/back_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:gap/gap.dart';

class VerifyOtpScreen extends StatefulWidget {
  const VerifyOtpScreen({super.key});

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  final formKey = GlobalKey<FormState>();
  final PinInputController pinController = PinInputController();

  @override
  void dispose() {
    pinController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22.0),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(50),
                const BackButtonWidget(),
                const Gap(28),
                SizedBox(
                  width: 300.w,
                  child: Text(
                    "OTP Verification",
                    style: AppStyles.primaryMeadLineStyle,
                  ),
                ),
                const Gap(10),
                Text(
                  "Enter the verification code we just sent on your email address.",
                  style: AppStyles.subtitleStyle,
                ),
                const Gap(32),
                Center(
                  child: MaterialPinField(
                    length: 4,
                    pinController: pinController,
                    theme: MaterialPinTheme(
                      shape: MaterialPinShape.outlined,
                      cellSize: Size(70.w, 60.h),
                      spacing: 15.w,
                      borderRadius: BorderRadius.circular(12),
                      borderWidth: 1.5,
                      borderColor: AppColors.whiteColor,
                      focusedBorderColor: AppColors.primaryColor,
                      filledBorderColor: AppColors.primaryColor,
                      fillColor: AppColors.greyColor,
                      focusedFillColor: Colors.white,
                      filledFillColor: Colors.white,
                      textStyle: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF6C6FF0),
                      ),
                      entryAnimation: MaterialPinAnimation.fade,
                      animationDuration: const Duration(milliseconds: 200),
                    ),
                    onChanged: (value) {},
                    onCompleted: (value) {},
                  ),
                ),

                const Gap(38),
                PrimayButtonWidget(
                  buttonText: "Verify",
                  onPress: () {
                    final code = pinController.text;

                    if (code.length < 4) {
                      pinController.triggerError();
                      return;
                    }
                    GoRouter.of(context).push(AppRoutes.newpassword);
                  },
                ),

                const Gap(380),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Didn’t received code?",
                        style: AppStyles.black15BoldStyle.copyWith(
                          color: AppColors.primaryColor,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Resend",
                          style: AppStyles.black15BoldStyle.copyWith(
                            color: AppColors.balckColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
