import 'package:finance_app/core/styling/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<MainScreen> {
  int currentIndex = 0;

  List<Widget> pages = [
    Container(color: Colors.red),
    Container(color: Colors.yellow),
    Container(color: Colors.green),
    Container(color: Colors.blue),
    Container(color: Colors.red),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.whiteColor,
        elevation: 5,

        type: BottomNavigationBarType.fixed,

        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: AppColors.greyColor,

        currentIndex: currentIndex,

        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },

        items: [
          // Home
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: 24.sp,
            ),
            activeIcon: Icon(
              Icons.home,
              size: 24.sp,
            ),
            label: "Home",
          ),

          // Statistic
          BottomNavigationBarItem(
            icon: Icon(
              Icons.stacked_bar_chart_outlined,
              size: 24.sp,
            ),
            activeIcon: Icon(
              Icons.stacked_bar_chart,
              size: 24.sp,
            ),
            label: "Statistic",
          ),

          // Add
          BottomNavigationBarItem(
            icon: Container(
              width: 48.sp,
              height: 48.sp,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                shape: BoxShape.circle,
              ),
              alignment: Alignment.center,
              child: Icon(
                Icons.add,
                color: AppColors.whiteColor,
                size: 28.sp,
              ),
            ),
            label: "",
          ),

          // My Card
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_balance_wallet_outlined,
              size: 24.sp,
            ),
            activeIcon: Icon(
              Icons.account_balance_wallet,
              size: 24.sp,
            ),
            label: "My card",
          ),

          // Profile
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              size: 24.sp,
            ),
            activeIcon: Icon(
              Icons.person,
              size: 24.sp,
            ),
            label: "Profil",
          ),
        ],
      ),
    );
  }
}