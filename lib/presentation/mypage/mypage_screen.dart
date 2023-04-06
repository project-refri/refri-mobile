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

    if (state.isError) {
      WidgetsBinding.instance.addPostFrameCallback((_) async {
        await Navigator.push(context,
            MaterialPageRoute(builder: (context) => const LoginScreen()));
        viewModel.onAction(const MypageAction.refresh());
      });

      return Container();
    }

    if (state.isLoading || state.userInfo == null) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      child: RefreshIndicator(
        onRefresh: () async {
          viewModel.onAction(const MypageAction.refresh());
        },
        child: CustomScrollView(
          physics: ClampingScrollPhysics(),
          slivers: [
            ProfileAppBar(userInfo: state.userInfo!),
            IntroduceHeader(userInfo: state.userInfo!),
            SliverToBoxAdapter(child: Introduce(userInfo: state.userInfo!)),
            PostHeader(),
            SliverToBoxAdapter(child: Posts())
          ],
        ),
      ),
    );
  }
}
