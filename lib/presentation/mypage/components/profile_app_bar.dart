import 'package:flutter/material.dart';

class ProfileAppBar extends StatelessWidget {
  final String profileImage;

  const ProfileAppBar({
    required this.profileImage,
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
      expandedHeight: 500,
      leading: Container(
        width: 100,
        height: 40,
        child: const Center(
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
                            color: Color(0xFF8D8D8D),
                            fontSize: 11),
                      ),
                      Text("0", style: defaultTextStyle)
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "팔로잉",
                        style: defaultTextStyle.copyWith(
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF8D8D8D),
                            fontSize: 11),
                      ),
                      Text("0", style: defaultTextStyle)
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "팔로워",
                        style: defaultTextStyle.copyWith(
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF8D8D8D),
                            fontSize: 11),
                      ),
                      Text("0", style: defaultTextStyle)
                    ],
                  )
                ]),
          ),
        ),
        background: Image.network(
          profileImage,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
