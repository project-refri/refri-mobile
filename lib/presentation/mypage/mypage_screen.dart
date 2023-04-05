import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:refri_mobile/presentation/login/login_screen.dart';
import 'package:refri_mobile/presentation/mypage/components/introduce.dart';
import 'package:refri_mobile/presentation/mypage/components/introduce_header.dart';
import 'package:refri_mobile/presentation/mypage/components/post_header.dart';
import 'package:refri_mobile/presentation/mypage/components/posts.dart';
import 'package:refri_mobile/presentation/mypage/components/profile_app_bar.dart';
import 'package:refri_mobile/presentation/mypage/mypage_action.dart';
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

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      child: RefreshIndicator(
        onRefresh: () async {
          viewModel.onAction(const MypageAction.refresh());
        },
        child: const CustomScrollView(
          physics: ClampingScrollPhysics(),
          slivers: [
            ProfileAppBar(
                profileImage:
                    "https://user-images.githubusercontent.com/24623403/228809621-4f0a7aec-cd41-4d56-830e-19d37eb08b1f.png"),
            IntroduceHeader(),
            SliverToBoxAdapter(child: Introduce()),
            PostHeader(),
            SliverToBoxAdapter(child: Posts())
          ],
        ),
      ),
    );
  }
}
