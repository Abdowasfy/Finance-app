import 'package:finance_app/features/home_page/widget/carousel_widget.dart';
import 'package:finance_app/features/home_page/widget/custom_home_page.dart';
import 'package:finance_app/features/home_page/widget/top_profile_notification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        children: [
          const Gap(40),
          const TopProfileNotification(),
          const Gap(18),
          const CustomCarouselWidget(),
          const Gap(5),
          Expanded(
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8.sp,
                crossAxisSpacing: 8.sp,
              ),
              children: [
                InkWell(
                  onTap: () {},
                  child: CustomHomePage(
                    iconData: Icons.send,
                    title: "Send money",
                    subTitle: "Take acc to acc",
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: CustomHomePage(
                    iconData: Icons.wallet,
                    title: "Pay the bill",
                    subTitle: "Lorem ipsum",
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: CustomHomePage(
                    iconData: Icons.send,
                    title: "Request",
                    subTitle: "Lorem ipsum",
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: CustomHomePage(
                    iconData: Icons.contacts,
                    title: "Contact",
                    subTitle: "Lorem ipsum",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
