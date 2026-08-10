import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:finance_app/features/home_page/widget/cart_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class CustomCarouselWidget extends StatefulWidget {
  const CustomCarouselWidget({super.key});

  @override
  State<CustomCarouselWidget> createState() => _CustomCarouselWidgetState();
}

class _CustomCarouselWidgetState extends State<CustomCarouselWidget> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 263.h,
            padEnds: false,
            viewportFraction: 0.7,
            enlargeCenterPage: true,
            enlargeFactor: 0.2,

            onPageChanged: (index, reason) {
              setState(() {
                currentPage = index;
              });
            },
          ),
          items: [
            CartItemWidget(
              title: "X-Card",
              balance: "23400 EG",
              date: "12/24",
              number: "****  3434",
              subTitle: "Balance",
            ),
            CartItemWidget(
              title: "X-Card",
              balance: "23400 EG",
              date: "12/24",
              number: "****  3434",
              subTitle: "Balance",
            ),
            CartItemWidget(
              title: "X-Card",
              balance: "23400 EG",
              date: "12/24",
              number: "****  3434",
              subTitle: "Balance",
            ),
          ],
        ),

        const Gap(16),

        DotsIndicator(
          dotsCount: 3,
          position: currentPage.toDouble(),
          decorator: DotsDecorator(
            size: const Size.square(8),
            activeSize: const Size(18, 8),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            spacing: const EdgeInsets.symmetric(horizontal: 4),
          ),
        ),
      ],
    );
  }
}
