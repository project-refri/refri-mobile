import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:refri_mobile/constants/colors.dart';
import 'package:refri_mobile/constants/icon.dart';
import 'package:refri_mobile/presentation/mypage/components/sliver_fixed_header_delegate.dart';

class PostHeader extends StatelessWidget {
  const PostHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
        pinned: true,
        delegate: SliverFixedHeaderDelegate(
            child: Container(
              color: PRIMARY_COLOR,
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(28))),
                height: 67,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      const Text("POSTS",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: SUB_COLOR_1)),
                      Positioned(
                          right: 33,
                          child: SvgPicture.asset(IconAsset.gridIcon.path,
                              colorFilter: const ColorFilter.mode(
                                  SUB_COLOR_2, BlendMode.srcIn))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: SvgPicture.asset(IconAsset.tableIcon.path,
                              colorFilter: const ColorFilter.mode(
                                  SUB_COLOR_1, BlendMode.srcIn))),
                    ],
                  ),
                ),
              ),
            ),
            maxHeight: 67,
            minHeight: 67));
  }
}
