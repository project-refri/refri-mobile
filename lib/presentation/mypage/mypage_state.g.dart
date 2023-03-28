// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mypage_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MypageState _$$_MypageStateFromJson(Map<String, dynamic> json) =>
    _$_MypageState(
      userInfo: json['userInfo'] == null
          ? null
          : UserInfo.fromJson(json['userInfo'] as Map<String, dynamic>),
      isLoading: json['isLoading'] as bool? ?? true,
      isError: json['isError'] as bool? ?? false,
    );

Map<String, dynamic> _$$_MypageStateToJson(_$_MypageState instance) =>
    <String, dynamic>{
      'userInfo': instance.userInfo,
      'isLoading': instance.isLoading,
      'isError': instance.isError,
    };
