import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
        delegate: _SliverFixedHeaderDelegate(
      child: Container(
          color: PRIMARY_COLOR,
          child: Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, top: 16.0, bottom: 16.0),
              child: SizedBox(
                height: 88,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  separatorBuilder: (context, index) => SizedBox(width: 10),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          height: 68,
                          width: 68,
                          child: SvgPicture.asset(categories[index].icon),
                        ),
                        SizedBox(height: 7),
                        Text(categories[index].title,
                            style: TextStyle(
                                fontSize: 11,
                                color: SUB_COLOR_1,
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

class _SliverFixedHeaderDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;
  final double maxHeight;
  final double minHeight;

  _SliverFixedHeaderDelegate(
      {required this.child, required this.maxHeight, required this.minHeight});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  double get maxExtent => maxHeight;

  @override
  double get minExtent => minHeight;

  @override
  bool shouldRebuild(_SliverFixedHeaderDelegate oldDelegate) {
    return oldDelegate.minHeight != minHeight ||
        oldDelegate.maxHeight != maxHeight ||
        oldDelegate.child != child;
  }
}
