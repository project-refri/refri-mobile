import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:refri_mobile/domain/model/user/user_info.dart';

part 'mypage_action.freezed.dart';

@freezed
class MypageAction<T> with _$MypageAction<T> {
  const factory MypageAction.refresh() = Refresh;
  const factory MypageAction.updateUserInfo(UserInfo userInfo) = UpdateUserInfo;
}
