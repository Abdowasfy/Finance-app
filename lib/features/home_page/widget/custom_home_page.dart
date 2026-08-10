import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class CustomHomePage extends StatelessWidget {
  final IconData iconData;
  final String title;
  final String subTitle;

  const CustomHomePage({
    super.key,
    required this.iconData,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffE3E9ED), width: 1),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Center(
        child: Column(
          children: [
            Container(
              width: 48.w,
              height: 48.w,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xffF5F7F9),
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Icon(
                iconData,
                color: AppColors.primaryColor,
                size: 20.sp,
              ),
            ),
            const Gap(12),
            Text(
              title,
              style: AppStyles.black15BoldStyle,
            ),
            const Gap(8),
            Text(
              subTitle,
              style: AppStyles.grey12wMediumStyle,
            ),
          ],
        )
      ),
    );
  }
}
