import 'package:finance_app/core/styling/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class CustomOrRegister extends StatelessWidget {
  const CustomOrRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 100.w, child: Divider()),
        Gap(12),
        Text(
          "Or Register with",
          style: AppStyles.black15BoldStyle.copyWith(color: Color(0xff6A707C)),
        ),
        Gap(12.w),
        SizedBox(width: 95.w, child: Divider()),
      ],
    );
  }
}
