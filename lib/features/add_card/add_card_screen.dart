import 'package:finance_app/features/auth/widgets/back_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class AddCardScreen extends StatelessWidget {
  const AddCardScreen({super.key});

  static const Color _primary = Color(0xFF5B67F1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(30),
              Row(
                children: [
                  const BackButtonWidget(),
                  const Expanded(
                    child: Center(
                      child: Text(
                        "Add Card",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 44),
                ],
              ),
              const Gap(32),
              const Text(
                "Add a new card",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              const Gap(6),
              const Text(
                "Link your card to manage your balance.",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              const Gap(24),
              GestureDetector(
                onTap: () {},
                child: CustomPaint(
                  painter: _DashedBorderPainter(color: _primary, radius: 20),
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      color: _primary.withOpacity(0.05),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 56,
                          height: 56,
                          decoration: BoxDecoration(
                            color: _primary.withOpacity(0.12),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.add_rounded,
                            color: _primary,
                            size: 30,
                          ),
                        ),
                        const Gap(12),
                        const Text(
                          "Tap to add a card",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: _primary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _DashedBorderPainter extends CustomPainter {
  final Color color;
  final double radius;
  final double dashWidth;
  final double dashGap;

  _DashedBorderPainter({
    required this.color,
    this.radius = 16,
    // ignore: unused_element_parameter
    this.dashWidth = 8,
    // ignore: unused_element_parameter
    this.dashGap = 6,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5;

    final path = Path()
      ..addRRect(
        RRect.fromRectAndRadius(Offset.zero & size, Radius.circular(radius)),
      );

    for (final metric in path.computeMetrics()) {
      double distance = 0;
      while (distance < metric.length) {
        canvas.drawPath(
          metric.extractPath(distance, distance + dashWidth),
          paint,
        );
        distance += dashWidth + dashGap;
      }
    }
  }

  @override
  bool shouldRepaint(covariant _DashedBorderPainter old) =>
      old.color != color || old.radius != radius;
}