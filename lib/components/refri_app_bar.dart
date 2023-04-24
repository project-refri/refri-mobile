import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:refri_mobile/constants/colors.dart';

class RefriAppBar extends StatelessWidget {
  final String logoPath;
  final String theme;
  const RefriAppBar({
    required this.logoPath,
    this.theme = "light",
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: theme == "light" ? primaryColor : subColor1,
        statusBarIconBrightness: theme == "light"
            ? Brightness.dark
            : Brightness.light, // For Android (dark icons)
        statusBarBrightness: theme == "light"
            ? Brightness.light
            : Brightness.dark, // For iOS (dark icons)
      ),
      pinned: true,
      toolbarHeight: 40,
      backgroundColor: theme == "light" ? primaryColor : subColor1,
      centerTitle: false,
      titleSpacing: 20,
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
