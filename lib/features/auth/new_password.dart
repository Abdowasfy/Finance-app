import 'package:finance_app/core/routing/app_routes.dart' show AppRoutes;
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:finance_app/core/widgets/custom_text_field.dart';
import 'package:finance_app/core/widgets/primary_button_widget.dart';
import 'package:finance_app/features/auth/widgets/back_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController newpass;
  late TextEditingController confirmpass;
  initState() {
    newpass = TextEditingController();
    confirmpass = TextEditingController();
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
                    "Create new password",
                    style: AppStyles.primaryMeadLineStyle,
                  ),
                ),
                const Gap(10),
                SizedBox(
                  width: 400.w,
                  child: Text(
                    "Your new password must be unique from those previously used.",
                    style: AppStyles.subtitleStyle,
                  ),
                ),
                const Gap(32),
                CustomTextField(
                  controller: newpass,
                  hintText: "New Password",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please Enter New Password ";
                    }
                    return null;
                  },
                ),
                const Gap(15),
                CustomTextField(
                  controller: confirmpass,
                  hintText: "Confirm Password",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please Enter Confirm Password";
                    }
                    return null;
                  },
                ),
                const Gap(30),
                PrimayButtonWidget(
                  buttonText: "Reset Password",
                  onPress: () {
                    if (formKey.currentState!.validate()) {
                      print(newpass.text);
                      print(confirmpass.text);
                      GoRouter.of(context).push(AppRoutes.passwordChanged);
                    }
                    ;
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );

  }
}
