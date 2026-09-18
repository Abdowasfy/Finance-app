import 'package:finance_app/features/all_card/widgets/card_widget.dart';
import 'package:finance_app/features/auth/widgets/back_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class AllCardScreen extends StatelessWidget {
  const AllCardScreen({super.key});

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
                    "All Cards",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  Icon(Icons.more_horiz),
                ],
              ),
              const Gap(10),
              CardWidget(
                title: "X-Card",
                balance: "23400 EG",
                date: "12/24",
                number: "****  3434",
                subTitle: "Balance",
              ),
              const Gap(24),
              CardWidget(
                title: "X-Card",
                balance: "3209 EG",
                date: "12/24",
                number: "****  4545",
                subTitle: "Balance",
              ),
            ],
          ),
        ),
      ),

      //  Gap(30),
    );
  }
}
