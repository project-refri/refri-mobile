import 'package:flutter/material.dart';
import 'package:refri_mobile/domain/model/user/user_info.dart';

class ProfileAppBar extends StatelessWidget {
  final UserInfo userInfo;

  const ProfileAppBar({
    required this.userInfo,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const defaultTextStyle = TextStyle(
        color: Colors.white,
        fontFamily: "SpoqaHanSans",
        fontSize: 21,
        fontWeight: FontWeight.w500);
    double maxWidth = MediaQuery.of(context).size.width;

    return SliverAppBar(
      pinned: true,
      backgroundColor: Colors.black,
      expandedHeight: 450,
      leading: const SizedBox(
        width: 100,
        height: 40,
        child: Center(
          child: Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
      ),
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: const EdgeInsets.all(0),
        title: Container(
          width: maxWidth,
          height: 70,
          decoration: const BoxDecoration(
              color: Color(0xFF000000),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(28))),
          child: Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        "라이프",
                        style: defaultTextStyle.copyWith(
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF8D8D8D),
                            fontSize: 11),
                      ),
                      const Text("0", style: defaultTextStyle)
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "팔로잉",
                        style: defaultTextStyle.copyWith(
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF8D8D8D),
                            fontSize: 11),
                      ),
                      const Text("0", style: defaultTextStyle)
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "팔로워",
                        style: defaultTextStyle.copyWith(
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF8D8D8D),
                            fontSize: 11),
                      ),
                      const Text("0", style: defaultTextStyle)
                    ],
                  )
                ]),
          ),
        ),
        background: Image.network(
          userInfo.thumbnail,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
