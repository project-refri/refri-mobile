import 'package:flutter/material.dart';
import 'package:refri_mobile/constants/colors.dart';
import 'package:refri_mobile/presentation/mypage/components/sliver_fixed_header_delegate.dart';

class Introduce extends StatelessWidget {
  const Introduce({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const defaultStyle = TextStyle(
      fontFamily: "SpoqaHanSansNeo",
      color: SUB_COLOR_1,
      fontSize: 11,
      fontWeight: FontWeight.w400,
    );

    return Container(
      color: PRIMARY_COLOR,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("I AM",
                textAlign: TextAlign.center,
                style: defaultStyle.copyWith(fontWeight: FontWeight.w600)),
            const SizedBox(height: 8),
            Text(
                "자기소개자기소개자기소개자기소개자기소개자기소개. 자기소개자기소개자기소개자기소개자기소개자기소개자기소개 자기소개자기소개자기소개자기소개자기소개자기소개자기소개",
                textAlign: TextAlign.center,
                style: defaultStyle),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text("팔로우하기",
                  style: defaultStyle.copyWith(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500)),
              style: ElevatedButton.styleFrom(backgroundColor: SUB_COLOR_1),
            )
          ],
        ),
      ),
    );
  }
}
