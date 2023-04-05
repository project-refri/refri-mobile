import 'package:flutter/material.dart';
import 'package:refri_mobile/data/mapper/auth_mapper.dart';
import 'package:refri_mobile/data/source/remote/auth_api.dart';
import 'package:refri_mobile/domain/model/auth/auth_info.dart';
import 'package:refri_mobile/domain/repository/auth_repository.dart';
import 'package:refri_mobile/presentation/login/google_oauth_response.dart';
import 'package:refri_mobile/presentation/login/login_action.dart';
import 'package:refri_mobile/presentation/login/login_state.dart';
import 'package:refri_mobile/presentation/login/oauth.dart';

class LoginViewModel with ChangeNotifier {
  final AuthRepository _repository;
  final AuthApi _authApi = AuthApi();

  var _state = const LoginState();

  LoginState get state => _state;

  LoginViewModel(this._repository) {
    _getToken();
  }

  void onAction(LoginAction action) {
    action.when(
      googleLogin: () => _googleLogin(),
    );
  }

  Future _getToken() async {
    final result = await _repository.readToken();
    result.when(success: (token) {
      _state = state.copyWith(token: token, isError: false);
    }, error: (e) {
      _state = state.copyWith(isError: true);
    });

    notifyListeners();
  }

  Future _googleLogin() async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    try {
      final OauthResponse oauthResponse = await signInWithGoogle();

      AuthInfo loginResponse =
          (await _authApi.googleLogin(accessToken: oauthResponse.accessToken))
              .toAuthInfo();
      if (!loginResponse.isExist) {
        String registerToken = loginResponse.registerToken!;
        loginResponse = (await _authApi.register(
                registerToken: registerToken, name: oauthResponse.name))
            .toAuthInfo();
      }

      _state = _state.copyWith(
          isError: false,
          token: loginResponse.token,
          userInfo: loginResponse.userInfo);
    } catch (e) {
      print(e);
    }

    _state = state.copyWith(isLoading: false);
    notifyListeners();
  }
}
