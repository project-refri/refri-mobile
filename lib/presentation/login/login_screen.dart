import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart';
import 'package:refri_mobile/App.dart';
import 'package:refri_mobile/constants/icon.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:refri_mobile/data/source/remote/auth_api.dart';

Future<UserCredential> signInWithGoogle() async {
  // Trigger the authentication flow
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  // Obtain the auth details from the request
  final GoogleSignInAuthentication? googleAuth =
      await googleUser?.authentication;

  // Create a new credential
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );

  // Once signed in, return the UserCredential
  return await FirebaseAuth.instance.signInWithCredential(credential);
}

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
              icon: SvgPicture.asset(IconAsset.kakaoIcon.path),
              onPressed: () {},
              context: context),
          const SizedBox(height: 16),
          LoginButton(
              backgroundColor: Colors.white,
              textColor: Color(0xFF686868),
              text: "구글 계정으로 로그인",
              icon: SvgPicture.asset(IconAsset.googleIcon.path),
              onPressed: signInWithGoogle,
              context: context),
          const SizedBox(height: 16),
          LoginButton(
              backgroundColor: Color(0xFF111111),
              textColor: Colors.white,
              text: "애플 계정으로 로그인",
              icon: SvgPicture.asset(
                IconAsset.appleIcon.path,
              ),
              onPressed: () {},
              context: context),
        ],
      ),
    ));
  }

  Widget LoginButton(
      {required backgroundColor,
      required textColor,
      required text,
      required icon,
      required onPressed,
      required context}) {
    final storage = FlutterSecureStorage();
    final AuthApi authApi = AuthApi();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Container(
        height: 56,
        child: ElevatedButton(
          onPressed: () async {
            try {
              UserCredential oauthResponse = (await onPressed());
              String accessToken = oauthResponse.credential!.accessToken!;
              String name = oauthResponse.user!.displayName!;
              // print(accessToken);
              // print(name);
              Map<String, dynamic> resigterResponse = jsonDecode(
                  (await authApi.googleLogin(accessToken: accessToken)).body);
              String registerToken = resigterResponse["data"]["register_token"];
              bool isExist = resigterResponse["data"]["is_exist"] == "true";
              if (!isExist) {
                Response response = await authApi.register(
                    registerToken: registerToken, name: name);
                print(response.body);
              }
            } on FirebaseAuthException catch (e) {
              print(e);
            }
          },
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
