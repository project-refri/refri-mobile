import 'package:flutter/material.dart';
import 'package:refri_mobile/constants/colors.dart';
import 'package:refri_mobile/domain/model/user/user_info.dart';

class Introduce extends StatelessWidget {
  final UserInfo userInfo;

  const Introduce({
    required this.userInfo,
    Key? key,
  }) : super(key: key);

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
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("I AM",
                textAlign: TextAlign.center,
                style: defaultStyle.copyWith(fontWeight: FontWeight.w600)),
            const SizedBox(height: 8),
            Text(
                userInfo.introduction == ""
                    ? "자기소개를 작성해주세요"
                    : userInfo.introduction,
                textAlign: TextAlign.center,
                style: defaultStyle),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: SUB_COLOR_1),
              child: Text("팔로우하기",
                  style: defaultStyle.copyWith(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500)),
            )
          ],
        ),
      ),
    );
  }
}
