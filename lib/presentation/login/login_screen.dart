import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:refri_mobile/constants/icon.dart';
import 'package:refri_mobile/data/mapper/auth_mapper.dart';
import 'package:refri_mobile/data/source/remote/auth_api.dart';
import 'package:refri_mobile/domain/model/auth/auth_info.dart';
import 'package:refri_mobile/presentation/login/google_oauth_response.dart';
import 'package:refri_mobile/presentation/login/oauth.dart';
import 'package:refri_mobile/presentation/mypage/mypage_action.dart';
import 'package:refri_mobile/presentation/mypage/mypage_view_model.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthApi authApi = AuthApi();
    final viewModel = context.watch<MypageViewModel>();

    handleLogin(handleOauth) => () async {
          try {
            final OauthResponse oauthResponse = await handleOauth();

            final AuthInfo loginResponse = (await authApi.googleLogin(
                    accessToken: oauthResponse.accessToken))
                .toAuthInfo();
            if (loginResponse.isExist) {
              viewModel.onAction(
                  MypageAction.updateUserInfo(loginResponse.userInfo));
            }

            if (!loginResponse.isExist) {
              String registerToken = loginResponse.registerToken!;
              final AuthInfo registerResponse = (await authApi.register(
                      registerToken: registerToken, name: oauthResponse.name))
                  .toAuthInfo();
              viewModel.onAction(
                  MypageAction.updateUserInfo(registerResponse.userInfo));
            }

            Navigator.pop(context);
          } on FirebaseAuthException catch (e) {
            print(e);
          }
        };

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
            icon: SvgPicture.asset(IconAsset.kakaoIcon.path),
            handleLogin: () {},
          ),
          const SizedBox(height: 16),
          LoginButton(
            backgroundColor: Colors.white,
            textColor: Color(0xFF686868),
            text: "구글 계정으로 로그인",
            icon: SvgPicture.asset(IconAsset.googleIcon.path),
            handleLogin: handleLogin(signInWithGoogle),
          ),
          const SizedBox(height: 16),
          LoginButton(
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

  Widget LoginButton({
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
