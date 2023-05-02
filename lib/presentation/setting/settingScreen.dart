import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:refri_mobile/constants/colors.dart';
import 'package:refri_mobile/constants/icon.dart';
import 'package:refri_mobile/constants/typography.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: subColor1,
        centerTitle: true,
        title: Text(
          '프로필',
          style: defaultTextStyle.copyWith(
              fontSize: 18, fontWeight: FontWeight.w500, color: primaryColor),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
              color: primaryColor,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          _Header(name: "황인서", profileImage: "assets/images/profile.png"),
          _Actions(),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 16, bottom: 8),
            child: Text(
              "계정",
              style: defaultTextStyle.copyWith(
                  fontSize: 15, fontWeight: FontWeight.w600),
            ),
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: subColor3,
              child: Icon(Icons.person_outline, color: subColor1),
            ),
            title: Text(
              "알림 설정",
              style: defaultTextStyle.copyWith(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF0F172A)),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: subColor3,
              child: Icon(Icons.verified_user_outlined, color: subColor1),
            ),
            title: Text(
              "계정 관리",
              style: defaultTextStyle.copyWith(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF0F172A)),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: subColor3,
              child: Icon(Icons.notifications_outlined, color: subColor1),
            ),
            title: Text(
              "알림",
              style: defaultTextStyle.copyWith(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF0F172A)),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: subColor3,
              child: Icon(Icons.language, color: subColor1),
            ),
            title: Text(
              "언어",
              style: defaultTextStyle.copyWith(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF0F172A)),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          const Divider(
              height: 6, thickness: 6, color: const Color(0xFFf6f2f0)),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 16, bottom: 8),
            child: Text(
              "지원",
              style: defaultTextStyle.copyWith(
                  fontSize: 15, fontWeight: FontWeight.w600),
            ),
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: subColor3,
              child: Icon(Icons.headphones_outlined, color: subColor1),
            ),
            title: Text(
              "고객센터",
              style: defaultTextStyle.copyWith(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF0F172A)),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(height: 6, thickness: 6, color: const Color(0xFFf6f2f0)),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 16, bottom: 8),
            child: Text(
              "정보",
              style: defaultTextStyle.copyWith(
                  fontSize: 15, fontWeight: FontWeight.w600),
            ),
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: subColor3,
              child: Icon(Icons.logout, color: subColor1),
            ),
            title: Text(
              "로그아웃",
              style: defaultTextStyle.copyWith(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF0F172A)),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Container(
            height: 140,
            color: subColor3,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '개인정보보호정책',
                    style: defaultTextStyle.copyWith(
                        color: subColor2,
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                  ),
                  Text('이용약관',
                      style: defaultTextStyle.copyWith(
                          color: subColor2,
                          fontSize: 13,
                          fontWeight: FontWeight.w400)),
                  Text('version 0.0.1',
                      style: defaultTextStyle.copyWith(
                          color: subColor2,
                          fontSize: 13,
                          fontWeight: FontWeight.w400)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Header extends StatelessWidget {
  final String profileImage;
  final String name;

  const _Header({
    required this.profileImage,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 118,
      color: subColor1,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(profileImage),
            ),
            SizedBox(width: 16),
            RichText(
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: [
                  TextSpan(
                    text: name,
                    style: defaultTextStyle.copyWith(
                        color: primaryColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                        height: 1.8),
                  ),
                  TextSpan(
                    text: ' 님 \n안녕하세요 :)',
                    style: defaultTextStyle.copyWith(
                        color: subColor2,
                        fontWeight: FontWeight.w400,
                        fontSize: 17,
                        height: 1.8),
                  ),
                ],
              ),
            ),
            Expanded(child: Container()),
            ElevatedButton(
                style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(124, 38))),
                onPressed: () {},
                child: Text(
                  "마이로그",
                  style: defaultTextStyle.copyWith(
                      color: Color(0xff0F172A),
                      fontSize: 13,
                      fontWeight: FontWeight.w400),
                ))
          ],
        ),
      ),
    );
  }
}

class _Actions extends StatelessWidget {
  const _Actions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 92,
          color: primaryColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "식이성향",
                      style: defaultTextStyle.copyWith(
                          fontSize: 15, color: subColor2),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Text("KITO",
                            style: defaultTextStyle.copyWith(
                                fontSize: 24, fontWeight: FontWeight.w900)),
                        const SizedBox(width: 8),
                        SvgPicture.asset(IconAsset.leafIcon.path)
                      ],
                    )
                  ],
                ),
                Expanded(child: Container()),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xffcbc0aa)),
                        minimumSize: MaterialStateProperty.all(Size(124, 38))),
                    onPressed: () {},
                    child: Text(
                      "식이성향 안내",
                      style: defaultTextStyle.copyWith(
                          color: Color(0xff5c5c5c),
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ))
              ],
            ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
              color: primaryColor,
              border: Border.symmetric(
                  horizontal: BorderSide(width: 1, color: subColor3))),
          height: 65,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          right: BorderSide(color: subColor3, width: 1))),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.favorite),
                      SizedBox(width: 8),
                      Text('좋아한 컨텐츠')
                    ],
                  ),
                ),
              ),
              const Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.bookmark),
                    SizedBox(width: 8),
                    Text('저장한 레시피')
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
