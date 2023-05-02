import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:refri_mobile/components/sliver_fixed_header_delegate.dart';
import 'package:refri_mobile/constants/colors.dart';
import 'package:refri_mobile/constants/icon.dart';
import 'package:refri_mobile/presentation/fridge/components/expire_list.dart';
import 'package:refri_mobile/presentation/fridge/components/nutrient_info.dart';

class FridgeAppBar extends StatelessWidget {
  const FridgeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      delegate: SliverFixedHeaderDelegate(
        minHeight: 0,
        maxHeight: 400,
        child: Container(
          color: subColor1,
          child: Column(
            children: [
              SvgPicture.asset(IconAsset.logoFridgeIcon.path),
              ExpireList(),
              NutrientInfo(),
            ],
          ),
        ),
      ),
    );
  }
}
