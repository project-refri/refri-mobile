import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:refri_mobile/constants/icon.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      color: Color(0xFF242325),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(IconAsset.logoWhiteIcon.path),
          const SizedBox(height: 200),
          LoginButton(
              backgroundColor: Color(0xFFFECD00),
              textColor: Color(0xFF3C1E1E),
              text: "카카오톡 계정으로 로그인",
              icon: SvgPicture.asset(IconAsset.kakaoIcon.path)),
          const SizedBox(height: 16),
          LoginButton(
              backgroundColor: Colors.white,
              textColor: Color(0xFF686868),
              text: "구글 계정으로 로그인",
              icon: SvgPicture.asset(IconAsset.googleIcon.path)),
          const SizedBox(height: 16),
          LoginButton(
              backgroundColor: Color(0xFF111111),
              textColor: Colors.white,
              text: "애플 계정으로 로그인",
              icon: SvgPicture.asset(IconAsset.appleIcon.path)),
        ],
      ),
    ));
  }

  Widget LoginButton(
      {required backgroundColor,
      required textColor,
      required text,
      required icon}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Container(
        height: 56,
        child: ElevatedButton(
          onPressed: () {},
          child: Stack(
            children: [
              Align(alignment: Alignment.centerLeft, child: icon),
              Align(
                alignment: Alignment.center,
                child: Text(text,
                    style: TextStyle(
                        color: textColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        fontFamily: "SpoqaHanSans")),
              ),
            ],
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ),
      ),
    );
  }
}
