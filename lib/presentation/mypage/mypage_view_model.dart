import 'package:flutter/material.dart';
import 'package:refri_mobile/domain/repository/auth_repository.dart';
import 'package:refri_mobile/domain/repository/user_repository.dart';
import 'package:refri_mobile/presentation/mypage/mypage_action.dart';
import 'package:refri_mobile/presentation/mypage/mypage_state.dart';

class MypageViewModel with ChangeNotifier {
  final UserRepository _userRepository;
  final AuthRepository _authRepository;

  var _state = const MypageState();

  MypageState get state => _state;

  MypageViewModel(this._userRepository, this._authRepository) {
    _getUserInfo();
  }

  void onAction(MypageAction action) {
    action.when(
      refresh: () => _getUserInfo(),
    );
  }

  Future _getUserInfo() async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    final tokenResult = await _authRepository.readToken();
    await tokenResult.when(success: (token) async {
      final result = await _userRepository.getMe(token);
      result.when(success: (userInfo) {
        _state = state.copyWith(isError: false, userInfo: userInfo);
      }, error: (e) {
        print(e.toString());
        _state = state.copyWith(isError: true);
      });
    }, error: (e) {
      print(e.toString());
      _state = state.copyWith(isError: true);
    });

    _state = state.copyWith(isLoading: false);
    notifyListeners();
  }
}
