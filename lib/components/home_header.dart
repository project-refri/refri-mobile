import 'package:flutter/material.dart';
import 'package:refri_mobile/components/sliver_fixed_header_delegate.dart';
import 'package:refri_mobile/constants/colors.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
        delegate: SliverFixedHeaderDelegate(
      child: Container(
          color: primaryColor,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
            child: SizedBox(
              height: 38,
              child: TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: subColor1, width: 1.5),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: subColor1, width: 1.5),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  labelText: '재료명, 레시피, 리프렌즈를 찾아보세요.',
                  labelStyle:
                      const TextStyle(color: Color(0xFF9A8266), fontSize: 12),
                  suffixIcon: const Icon(Icons.search, color: subColor1),
                ),
              ),
            ),
          )),
      maxHeight: 70,
      minHeight: 7,
    ));
  }
}
