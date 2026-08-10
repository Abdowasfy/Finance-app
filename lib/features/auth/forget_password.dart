import 'package:finance_app/core/routing/app_routes.dart';
import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:finance_app/core/widgets/custom_text_field.dart';
import 'package:finance_app/core/widgets/primary_button_widget.dart';
import 'package:finance_app/features/auth/widgets/back_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController emailController;

  initState() {
    emailController = TextEditingController();
    super.initState();
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
                  width: 250.w,
                  child: Text(
                    "Forgot Password?",
                    style: AppStyles.primaryMeadLineStyle,
                  ),
                ),
                const Gap(10),
                SizedBox(
                  width: 500.w,
                  child: Text(
                    "Don't worry! It occurs. Please enter the email address linked with your account.",
                    style: AppStyles.subtitleStyle,
                  ),
                ),
                const Gap(32),
                CustomTextField(
                  controller: emailController,
                  hintText: "Enter your email",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please Enter Your Email";
                    }
                    return null;
                  },
                ),
                const Gap(15),

                const Gap(30),
                PrimayButtonWidget(
                  buttonText: "Send Code",
                  onPress: () {
                    if (formKey.currentState!.validate()) {
                      print(emailController.text);
                    }
                    GoRouter.of(context).push(AppRoutes.verifyOtpScreen);
                  },
                ),
                const Gap(360),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Remember Password?",
                        style: AppStyles.black15BoldStyle.copyWith(
                          color: AppColors.primaryColor,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          GoRouter.of(context).push(AppRoutes.loginScreen);
                        },
                        child: Text(
                          "Login",
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
