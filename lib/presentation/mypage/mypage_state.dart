import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:refri_mobile/domain/model/user/user_info.dart';

part 'mypage_state.freezed.dart';

part 'mypage_state.g.dart';

@freezed
class MypageState with _$MypageState {
  const factory MypageState({
    UserInfo? userInfo,
    @Default(true) bool isLoading,
    @Default(false) bool isError,
  }) = _MypageState;

  factory MypageState.fromJson(Map<String, dynamic> json) =>
      _$MypageStateFromJson(json);
}
