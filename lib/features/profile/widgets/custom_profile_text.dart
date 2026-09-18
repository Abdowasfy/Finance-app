import 'package:finance_app/core/styling/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class CustomProfileText extends StatelessWidget {
  final String title;
  final String subTitle;

  const CustomProfileText({
    super.key,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Gap(12),
        Text(title, style: AppStyles.grey12wMediumStyle),
        const Gap(6),
        Text(subTitle, style: AppStyles.black15BoldStyle),
        Divider(height: 25.h, color: Colors.grey.shade100),
      ],
    );
  }
}
