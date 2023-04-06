import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:refri_mobile/constants/colors.dart';
import 'package:refri_mobile/constants/icon.dart';
import 'package:refri_mobile/domain/model/user/user_info.dart';
import 'package:refri_mobile/presentation/mypage/components/sliver_fixed_header_delegate.dart';

class IntroduceHeader extends StatelessWidget {
  final UserInfo userInfo;
  const IntroduceHeader({
    required this.userInfo,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const defaultTextStyle = TextStyle(
      color: SUB_COLOR_1,
      fontSize: 27,
      fontWeight: FontWeight.w500,
      fontFamily: "SpoqaHanSansNeo",
    );

    return SliverPersistentHeader(
        pinned: true,
        delegate: SliverFixedHeaderDelegate(
            child: Container(
              color: Colors.black,
              child: Container(
                  decoration: const BoxDecoration(
                    color: PRIMARY_COLOR,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(28)),
                  ),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Text(userInfo.username, style: defaultTextStyle),
                          const SizedBox(width: 10),
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xFF72BF88),
                                borderRadius: BorderRadius.circular(100)),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 8, right: 8, bottom: 3, top: 1),
                              child: Row(
                                children: [
                                  Text(userInfo.diet.name,
                                      style: defaultTextStyle.copyWith(
                                        color: Colors.white,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                      )),
                                  const SizedBox(width: 4),
                                  SvgPicture.asset(IconAsset.veganIcon.path)
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )),
            ),
            maxHeight: 73,
            minHeight: 73));
  }
}
