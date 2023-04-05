import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_action.freezed.dart';

@freezed
class LoginAction<T> with _$LoginAction<T> {
  const factory LoginAction.googleLogin() = GoogleLogin;
}
