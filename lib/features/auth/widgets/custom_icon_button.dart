import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomIconButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String? iconPath;
  const CustomIconButton({super.key, this.onTap, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 56.h,
        width: 105.h,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(color: Color(0xffE8ECF4)),
        ),
        child: Center(
          child: SvgPicture.asset(iconPath ?? "", width: 21.h, height: 24.h),
        ),
      ),
    );
  }
}
