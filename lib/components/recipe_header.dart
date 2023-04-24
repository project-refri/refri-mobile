import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:refri_mobile/components/sliver_fixed_header_delegate.dart';
import 'package:refri_mobile/constants/colors.dart';

class _Caterory {
  String title, icon;
  _Caterory({required this.title, required this.icon});
}

class RecipeHeader extends StatelessWidget {
  const RecipeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<_Caterory> categories = [
      _Caterory(title: "전체보기", icon: 'asset/svg/전체보기.svg'),
      _Caterory(title: "식이성향", icon: 'asset/svg/식이성향.svg'),
      _Caterory(title: "재료", icon: 'asset/svg/재료.svg'),
      _Caterory(title: "상황", icon: 'asset/svg/상황.svg'),
      _Caterory(title: "조리방법", icon: 'asset/svg/조리방법.svg'),
    ];

    return SliverPersistentHeader(
        delegate: SliverFixedHeaderDelegate(
      child: Container(
          color: primaryColor,
          child: Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, top: 16.0, bottom: 16.0),
              child: SizedBox(
                height: 88,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 10),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        SizedBox(
                          height: 68,
                          width: 68,
                          child: SvgPicture.asset(categories[index].icon),
                        ),
                        const SizedBox(height: 7),
                        Text(categories[index].title,
                            style: const TextStyle(
                                fontSize: 11,
                                color: subColor1,
                                fontWeight: FontWeight.w500)),
                      ],
                    );
                  },
                ),
              ))),
      maxHeight: 124,
      minHeight: 124,
    ));
  }
}
