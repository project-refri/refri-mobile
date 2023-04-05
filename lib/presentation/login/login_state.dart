import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:refri_mobile/domain/model/auth/auth_info.dart';
import 'package:refri_mobile/domain/model/user/user_info.dart';

part 'login_state.freezed.dart';

part 'login_state.g.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    Token? token,
    UserInfo? userInfo,
    @Default(true) bool isLoading,
    @Default(false) bool isError,
  }) = _LoginState;

  factory LoginState.fromJson(Map<String, dynamic> json) =>
      _$LoginStateFromJson(json);
}
