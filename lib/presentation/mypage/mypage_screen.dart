import 'dart:math';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:refri_mobile/constants/colors.dart';
import 'package:refri_mobile/presentation/login/login_screen.dart';
import 'package:refri_mobile/presentation/mypage/mypage_action.dart';
import 'package:refri_mobile/presentation/mypage/mypage_state.dart';
import 'package:refri_mobile/presentation/mypage/mypage_view_model.dart';

class MypageScreen extends StatelessWidget {
  const MypageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MypageViewModel>();
    final state = viewModel.state;
    print(state);

    if (state.isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    if (state.isError) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginScreen()));
      });

      return Container();
    }

    return Container(
      color: Colors.white,
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
        ),
        child: CustomScrollView(
          slivers: [
            _ProfileImageHeader(),
            // SliverPersistentHeader(
            //   pinned: true,
            //   delegate: DashboardHeaderPersistentDelegate(
            //       state.userInfo!.nickname, state.userInfo!.introduction),
            // ),
            _ProfileDetailHeader(),
            _PostHeader(),
            SliverToBoxAdapter(child: _ProfilePost())
          ],
        ),
      ),
    );
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

class _ProfileImageHeader extends StatelessWidget {
  const _ProfileImageHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
        pinned: true,
        delegate: _SliverFixedHeaderDelegate(
            child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("asset/img/profile_image_sample_6.png"),
                      fit: BoxFit.cover),
                ),
                child: Center(
                  child: Text("hi", style: TextStyle(color: Colors.white)),
                )),
            maxHeight: 434,
            minHeight: 0));
  }
}

class _ProfileDetailHeader extends StatelessWidget {
  const _ProfileDetailHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
        pinned: false,
        delegate: _SliverFixedHeaderDelegate(
            child: Container(
                color: PRIMARY_COLOR,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20, top: 26, right: 20, bottom: 13),
                  child: Column(
                    children: [
                      Container(
                        color: Colors.white,
                        child: Row(
                          children: [
                            Text("김나래",
                                style: TextStyle(
                                  color: SUB_COLOR_1,
                                  fontSize: 26,
                                  fontWeight: FontWeight.w500,
                                )),
                            SizedBox(width: 8),
                            Text("@NARAE_TABLE",
                                style: TextStyle(
                                  color: SUB_COLOR_2,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                )),
                            SizedBox(width: 8),
                            Container(
                              decoration: BoxDecoration(
                                  color: Color(0xFF72BF88),
                                  borderRadius: BorderRadius.circular(100)),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 8, right: 8, bottom: 3, top: 1),
                                child: Text("VEGAN",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                    )),
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text("I AM",
                                style: TextStyle(
                                  color: SUB_COLOR_1,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                )),
                            SizedBox(height: 8),
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Text(
                                    "자기소개자기소개자기소개자기소개자기소개자기소개. 자기소개자기소개자기소개자기소개자기소개자기소개자기소개 자기소개자기소개자기소개자기소개자기소개자기소개자기소개",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: SUB_COLOR_1,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400,
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
            maxHeight: 270,
            minHeight: 0));
  }
}

class _PostHeader extends StatelessWidget {
  const _PostHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
        pinned: true,
        delegate: _SliverFixedHeaderDelegate(
            child: Container(
              color: PRIMARY_COLOR,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                    )),
                height: 67,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Text("POSTS",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: SUB_COLOR_1)),
                      Positioned(
                          right: 33,
                          child: SvgPicture.asset("asset/svg/grid_icon.svg")),
                      Align(
                          alignment: Alignment.centerRight,
                          child: SvgPicture.asset("asset/svg/table_icon.svg")),
                    ],
                  ),
                ),
              ),
            ),
            maxHeight: 67,
            minHeight: 67));
  }
}

class _ProfilePost extends StatelessWidget {
  const _ProfilePost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: PRIMARY_COLOR,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(5),
              bottomLeft: Radius.circular(5),
              bottomRight: Radius.circular(5),
            )),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: MediaQuery.removePadding(
            context: context,
            removeTop: true,
            child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(height: 8),
                physics: ScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) =>
                    renderCard(img: "asset/img/post_sample_1.png")),
          ),
        ),
      ),
    );
  }

  Widget renderCard({required final String img}) {
    return Container(
      height: 105,
      decoration: BoxDecoration(
        border: Border.all(color: SUB_COLOR_3),
      ),
      child: Row(children: [
        SizedBox(width: 138, child: Image.asset(img, fit: BoxFit.cover)),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text("게시글제목",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: SUB_COLOR_1)),
                Text("게시글 내용 첫줄 게시글 내용 첫줄 게시글 내용 첫줄 게시글 내용 첫줄",
                    style: TextStyle(fontSize: 9, color: SUB_COLOR_2)),
                Row(
                  children: [
                    SvgPicture.asset("asset/svg/like_icon.svg",
                        width: 13, height: 13, fit: BoxFit.cover),
                    SizedBox(width: 4),
                    Text("532",
                        style: TextStyle(fontSize: 11, color: SUB_COLOR_2)),
                    SizedBox(width: 6),
                    SvgPicture.asset("asset/svg/time_icon.svg",
                        width: 13, height: 13),
                    SizedBox(width: 4),
                    Text("1일전",
                        style: TextStyle(fontSize: 11, color: SUB_COLOR_2)),
                  ],
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}

class DashboardHeaderPersistentDelegate extends SliverPersistentHeaderDelegate {
  final String nickname;
  final String introduction;

  DashboardHeaderPersistentDelegate(this.nickname, this.introduction);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    double shrinkPercentage = min(1, shrinkOffset / (maxExtent - minExtent));

    return Container(
      color: PRIMARY_COLOR,
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20, top: 26, right: 20, bottom: 13),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: [
                Text(nickname,
                    style: TextStyle(
                      color: SUB_COLOR_1,
                      fontSize: 26,
                      fontWeight: FontWeight.w500,
                    )),
                SizedBox(width: 8),
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xFF72BF88),
                      borderRadius: BorderRadius.circular(100)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 8, right: 8, bottom: 3, top: 1),
                    child: Text("VEGAN",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        )),
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(introduction == "" ? "자기소개를 입력해주세요" : introduction,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: SUB_COLOR_1,
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                    )),
                SizedBox(
                  width: 253,
                  height: 40,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        )),
                        backgroundColor: MaterialStateProperty.all(SUB_COLOR_1),
                      ),
                      child: Text("팔로우하기",
                          style: TextStyle(
                              color: Color(0xFFF1F1E7),
                              fontSize: 10,
                              fontWeight: FontWeight.w500))),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  double get maxExtent => 240;

  @override
  double get minExtent => 100;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
