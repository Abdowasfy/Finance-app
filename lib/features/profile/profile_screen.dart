import 'package:finance_app/features/auth/widgets/back_button_widget.dart';
import 'package:finance_app/features/profile/widgets/custom_profile_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              const Gap(30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const BackButtonWidget(),
                  const Text(
                    "My Profile",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  Icon(Icons.edit_square),
                ],
              ),
              const Gap(10),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: CircleAvatar(
                  radius: 45.w,
                  backgroundImage: AssetImage("assets/images/profile.jpg"),
                ),
              ),
              const Gap(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomProfileText(
                    title: "Full Name",
                    subTitle: "Abdelrahman Wasfy",
                  ),
                  const Gap(9),
                  CustomProfileText(
                    title: "Email",
                    subTitle: "wasfyabdo215@gmail.com",
                  ),
                  const Gap(9),
                  CustomProfileText(
                    title: "Phone Number",
                    subTitle: "01117738630",
                  ),
                  const Gap(9),
                  CustomProfileText(title: "Address", subTitle: "Cairo,Egypt"),
                  const Gap(9),
                ],
              ),
            ],
          ),
        ),
      ),

      //  Gap(30),
    );
  }
}
