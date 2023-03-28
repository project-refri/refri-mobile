import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:refri_mobile/constants/colors.dart';
import 'package:refri_mobile/presentation/home/home_screen.dart';
import 'package:refri_mobile/presentation/mypage/mypage_screen.dart';
import 'package:refri_mobile/presentation/recipe/recipe_screen.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Text(
      '냉장고',
      style: optionStyle,
    ),
    Text(
      '추가하기',
      style: optionStyle,
    ),
    RecipeScreen(),
    MypageScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: ConvexAppBar(
          items: [
            TabItem(
              title: "홈",
              activeIcon: SvgPicture.asset('asset/svg/home_icon.svg',
                  color: Colors.black),
              icon: SvgPicture.asset('asset/svg/home_icon.svg',
                  color: Colors.grey),
            ),
            TabItem(
              title: "냉장고",
              activeIcon: SvgPicture.asset('asset/svg/refri_icon.svg',
                  color: Colors.black),
              icon: SvgPicture.asset('asset/svg/refri_icon.svg',
                  color: Colors.grey),
            ),
            TabItem(
              icon: SvgPicture.asset(
                'asset/svg/plus_icon.svg',
              ),
            ),
            TabItem(
              title: "레시피",
              activeIcon: SvgPicture.asset('asset/svg/recipe_icon.svg',
                  color: Colors.black),
              icon: SvgPicture.asset('asset/svg/recipe_icon.svg',
                  color: Colors.grey),
            ),
            TabItem(
              title: "내정보",
              activeIcon: SvgPicture.asset('asset/svg/profile_icon.svg',
                  color: Colors.black),
              icon: SvgPicture.asset('asset/svg/profile_icon.svg',
                  color: Colors.grey),
            ),
          ],
          style: TabStyle.fixedCircle,
          backgroundColor: PRIMARY_COLOR,
          color: SUB_COLOR_2,
          activeColor: SUB_COLOR_1,
          onTap: _onItemTapped,
          curveSize: 0,
          top: -45,
          height: 80,
        ));
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

// class CustomStyle extends StyleHook {
//   @override
//   double get activeIconSize => 10;

//   @override
//   double get activeIconMargin => 10;

//   @override
//   double get iconSize => 24;

//   @override
//   TextStyle textStyle(Color color) {
//     return TextStyle(
//         height: 2.8, fontSize: 10, color: color, fontWeight: FontWeight.w500);
//   }
// }
