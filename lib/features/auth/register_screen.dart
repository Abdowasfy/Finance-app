import 'package:finance_app/core/routing/app_routes.dart';
import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:finance_app/core/widgets/custom_text_field.dart';
import 'package:finance_app/core/widgets/primary_button_widget.dart';
import 'package:finance_app/features/auth/widgets/back_button_widget.dart';
import 'package:finance_app/features/auth/widgets/custom_or_register.dart';
import 'package:finance_app/features/auth/widgets/social_login_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;
  bool isPasswordHidden = true;
  bool isConfirmPasswordHidden = true;

  @override
  void initState() {
    nameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();

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
                  width: 331.w,
                  child: Text(
                    "Hello! Register to get started",
                    style: AppStyles.primaryMeadLineStyle,
                  ),
                ),
                const Gap(32),
                CustomTextField(
                  controller: nameController,
                  hintText: "Username",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please Enter Your Name";
                    }
                    return null;
                  },
                ),
                const Gap(15),
                CustomTextField(
                  controller: emailController,
                  hintText: "Email",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please Enter Your Email";
                    }
                    return null;
                  },
                ),
                const Gap(15),
                CustomTextField(
                  controller: passwordController,
                  hintText: "Password",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please Enter Your password";
                    }
                    if (value.length < 8) {
                      return "Password must be at least 8 characters";
                    }
                    return null;
                  },
                  isPassword: isPasswordHidden,

                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isPasswordHidden = !isPasswordHidden;
                      });
                    },
                    icon: Icon(
                      isPasswordHidden
                          ? Icons.visibility_off
                          : Icons.visibility,
                      color: AppColors.greyColor,
                    ),
                  ),
                ),
                const Gap(15),
                CustomTextField(
                  controller: confirmPasswordController,
                  hintText: "Confirm password",
                  isPassword: isConfirmPasswordHidden,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please Enter Your Email";
                    }
                    if (value.length < 8) {
                      return "Password must be at least 8 characters";
                    }
                    return null;
                  },
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isConfirmPasswordHidden = !isConfirmPasswordHidden;
                      });
                    },
                    icon: Icon(
                      isConfirmPasswordHidden
                          ? Icons.visibility_off
                          : Icons.visibility,
                      color: AppColors.greyColor,
                    ),
                  ),
                ),
                const Gap(30),
                PrimayButtonWidget(
                  buttonText: "Register",
                  onPress: () {
                    if (formKey.currentState!.validate()) {
                      print(emailController.text);
                      print(passwordController.text);
                      print(confirmPasswordController.text);
                      print(isPasswordHidden);
                      print(isConfirmPasswordHidden);
                      GoRouter.of(context).push(AppRoutes.loginScreen);
                    }
                  },
                ),
                const Gap(35),
                CustomOrRegister(),
                const Gap(22),
                CustomSocialLoginIcons(),
                const Gap(50),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: AppStyles.black15BoldStyle.copyWith(
                          color: AppColors.primaryColor,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          GoRouter.of(context).push(AppRoutes.loginScreen);
                        },
                        child: Text(
                          "Login Now",
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
