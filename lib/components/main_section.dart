import 'package:flutter/material.dart';
import 'package:refri_mobile/constants/colors.dart';

class MainSection extends StatelessWidget {
  final String title;
  final Widget child;
  final EdgeInsetsGeometry? padding;

  const MainSection(
      {required this.title, required this.child, this.padding, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding != null
          ? padding!
          : const EdgeInsets.symmetric(horizontal: 20.0, vertical: 26),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: SUB_COLOR_1),
              ),
              const Text(
                '전체보기',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: SECONDARY_COLOR,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          child
        ],
      ),
    );
  }
}
