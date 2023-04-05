import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:refri_mobile/constants/icon.dart';
import 'package:refri_mobile/data/source/remote/auth_api.dart';
import 'package:refri_mobile/presentation/login/login_action.dart';
import 'package:refri_mobile/presentation/login/login_view_model.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final loginViewModel = context.watch<LoginViewModel>();
    final loginState = loginViewModel.state;

    if (loginState.token != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Navigator.of(context).pop();
      });
    }

    return Scaffold(
        body: Container(
      width: double.infinity,
      color: Color(0xFF242325),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(IconAsset.logoWhiteIcon.path),
          const SizedBox(height: 200),
          loginButton(
            backgroundColor: Color(0xFFFECD00),
            textColor: Color(0xFF3C1E1E),
            text: "카카오톡 계정으로 로그인",
            icon: SvgPicture.asset(IconAsset.kakaoIcon.path),
            handleLogin: () {},
          ),
          const SizedBox(height: 16),
          loginButton(
            backgroundColor: Colors.white,
            textColor: Color(0xFF686868),
            text: "구글 계정으로 로그인",
            icon: SvgPicture.asset(IconAsset.googleIcon.path),
            handleLogin: () =>
                loginViewModel.onAction(const LoginAction.googleLogin()),
          ),
          const SizedBox(height: 16),
          loginButton(
            backgroundColor: Color(0xFF111111),
            textColor: Colors.white,
            text: "애플 계정으로 로그인",
            icon: SvgPicture.asset(
              IconAsset.appleIcon.path,
            ),
            handleLogin: () {},
          ),
        ],
      ),
    ));
  }

  Widget loginButton({
    required backgroundColor,
    required textColor,
    required text,
    required icon,
    required handleLogin,
  }) {
    // final storage = FlutterSecureStorage();
    final AuthApi authApi = AuthApi();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Container(
        height: 56,
        child: ElevatedButton(
          onPressed: handleLogin,
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
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
        ),
      ),
    );
  }
}
