import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class CartItemWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final String balance;
  final String date;
  final String number;

  const CartItemWidget({
    super.key,
    required this.title,
    required this.balance,
    required this.date,
    required this.number, required this.subTitle,
  });
  

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 207.w,
          height: 263.h,
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(16.r),
          ),
        ),
        Positioned(
          left: 24.w,
          top: 24.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(10),
              Text(
                title,
                style: AppStyles.black18boldStyle.copyWith(
                  fontSize: 14.sp,
                  color: Colors.white,
                ),
              ),
              const Gap(58),
              Text(
                subTitle,
                style: AppStyles.black18boldStyle.copyWith(
                  fontSize: 14.sp,
                  color: Colors.white,
                ),
              ),
              const Gap(8),
              Text(
                balance,
                style: AppStyles.black18boldStyle.copyWith(
                  fontSize: 24.sp,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 26.w,
          right: 24.w,
          child: Text(
            date,
            style: AppStyles.black18boldStyle.copyWith(
              fontSize: 16.sp,
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
          bottom: 26.w,
          left: 24.w,
          child: Text(
            number,
            style: AppStyles.black18boldStyle.copyWith(
              fontSize: 16.sp,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
