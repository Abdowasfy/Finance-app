import 'package:finance_app/core/styling/app_assets.dart';
import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class TopProfileNotification extends StatelessWidget {
  const TopProfileNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            ClipOval(
              child: Image.asset(
                AppAssets.profileImages,
                width: 48.sp,
                height: 48.sp,
                fit: BoxFit.fill,
              ),
            ),
            Gap(11),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome back',
                  style: AppStyles.grey12wMediumStyle.copyWith(
                    color: Color(0xff9CA4AB),
                  ),
                ),
                Gap(3),
                Text('Abdelrahman wasfy', style: AppStyles.black18boldStyle),
              ],
            ),
          ],
        ),
        Container(
          width: 48.w,
          height: 48.sp,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Color(0xffE3E9ED), width: 1),
          ),
          child: Icon(
            Icons.notifications,
            color: AppColors.primaryColor,
            size: 28.sp,
          ),
        ),
      ],
    );
  }
}
