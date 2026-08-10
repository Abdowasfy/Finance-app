import 'package:finance_app/features/auth/widgets/back_button_widget.dart';
import 'package:finance_app/features/home_page/widget/custom_home_page.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class StatisticScreen extends StatefulWidget {
  const StatisticScreen({super.key});

  @override
  State<StatisticScreen> createState() => _StatisticScreenState();
}

class _StatisticScreenState extends State<StatisticScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const Gap(18),
              Row(
                children: [
                  const BackButtonWidget(),
                  const Spacer(),
                  const Text(
                    "Reload",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  const Spacer(),
                  const SizedBox(width: 48),
                ],
              ),

              const Gap(30),
              SizedBox(
                height: 300,
                child: BarChart(
                  BarChartData(
                    maxY: 8000,
                    minY: 0,
                    alignment: BarChartAlignment.spaceAround,
                    barTouchData: BarTouchData(enabled: false),
                    borderData: FlBorderData(show: false),
                    gridData: FlGridData(
                      show: true,
                      drawVerticalLine: false,
                      horizontalInterval: 2000,
                      getDrawingHorizontalLine: (value) {
                        return FlLine(
                          color: Colors.grey.shade200,
                          strokeWidth: 1,
                          dashArray: [6, 6],
                        );
                      },
                    ),

                    titlesData: FlTitlesData(
                      topTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),

                      rightTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),

                      leftTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          reservedSize: 35,
                          interval: 2000,
                          getTitlesWidget: (value, meta) {
                            String text = '';

                            switch (value.toInt()) {
                              case 0:
                                text = '0';
                                break;
                              case 2000:
                                text = '2k';
                                break;
                              case 4000:
                                text = '4k';
                                break;
                              case 6000:
                                text = '6k';
                                break;
                              case 8000:
                                text = '8k';
                                break;
                            }

                            return Text(
                              text,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey.shade500,
                              ),
                            );
                          },
                        ),
                      ),

                      // X Axis
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          reservedSize: 35,
                          getTitlesWidget: (value, meta) {
                            const months = ['Jan', 'Feb', 'Mar', 'Apr', 'May'];

                            final index = value.toInt();

                            if (index < 0 || index >= months.length) {
                              return const SizedBox();
                            }

                            return Text(
                              months[index],
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey.shade500,
                              ),
                            );
                          },
                        ),
                      ),
                    ),

                    barGroups: [
                      _makeBarGroup(0, 7300, 4800),
                      _makeBarGroup(1, 7300, 4800),
                      _makeBarGroup(2, 7300, 4800),
                      _makeBarGroup(3, 7300, 4800),
                      _makeBarGroup(4, 7300, 4800),
                    ],
                  ),
                ),
              ),
              const Gap(16),
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
                        iconData: Icons.download,
                        title: "15000 EG",
                        subTitle: "Income",
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: CustomHomePage(
                        iconData: Icons.upload,
                        title: "35000 EG",
                        subTitle: "Outcome",
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  BarChartGroupData _makeBarGroup(
    int x,
    double firstValue,
    double secondValue,
  ) {
    return BarChartGroupData(
      x: x,

      barsSpace: 5,

      barRods: [
        BarChartRodData(
          toY: firstValue,
          width: 20,
          color: const Color(0xff617CF6),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
          ),
        ),

        BarChartRodData(
          toY: secondValue,
          width: 20,
          color: const Color(0xff303B76),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
          ),
        ),
      ],
    );
  }
}
