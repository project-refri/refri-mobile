import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:refri_mobile/constants/colors.dart';

class RefriAppBar extends StatelessWidget {
  final String logoPath;
  const RefriAppBar({required this.logoPath, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: PRIMARY_COLOR,
        statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
        statusBarBrightness: Brightness.light, // For iOS (dark icons)
      ),
      pinned: true,
      toolbarHeight: 40,
      backgroundColor: PRIMARY_COLOR,
      title: SvgPicture.asset(
        logoPath,
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset(
            'asset/svg/noti_icon.svg',
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
