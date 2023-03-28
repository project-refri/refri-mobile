import 'package:flutter/material.dart';
import 'package:refri_mobile/domain/repository/user_repository.dart';
import 'package:refri_mobile/presentation/login/login_screen.dart';
import 'package:refri_mobile/presentation/mypage/mypage_action.dart';
import 'package:refri_mobile/presentation/mypage/mypage_state.dart';

class MypageViewModel with ChangeNotifier {
  final UserRepository _repository;

  var _state = const MypageState();

  MypageState get state => _state;

  MypageViewModel(this._repository) {
    _getUserInfo();
  }

  void onAction(MypageAction action) {
    action.when(
      refresh: () => _getUserInfo(),
      updateUserInfo: (userInfo) {
        _state = state.copyWith(
            userInfo: userInfo, isError: false, isLoading: false);
        notifyListeners();
      },
    );
  }

  Future _getUserInfo() async {
    print("유저 정보 업데이트");
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    final result = await _repository.getUserInfo("test");
    print(result);
    result.when(success: (userInfo) {
      _state = state.copyWith(isError: false);
    }, error: (e) {
      print("유저 정보 업데이트 에러" + e.toString());
      _state = state.copyWith(isError: true);
    });

    _state = state.copyWith(isLoading: false);
    notifyListeners();
  }
}
