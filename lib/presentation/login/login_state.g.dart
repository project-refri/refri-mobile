// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginState _$$_LoginStateFromJson(Map<String, dynamic> json) =>
    _$_LoginState(
      token: json['token'] == null
          ? null
          : Token.fromJson(json['token'] as Map<String, dynamic>),
      userInfo: json['userInfo'] == null
          ? null
          : UserInfo.fromJson(json['userInfo'] as Map<String, dynamic>),
      isLoading: json['isLoading'] as bool? ?? true,
      isError: json['isError'] as bool? ?? false,
    );

Map<String, dynamic> _$$_LoginStateToJson(_$_LoginState instance) =>
    <String, dynamic>{
      'token': instance.token,
      'userInfo': instance.userInfo,
      'isLoading': instance.isLoading,
      'isError': instance.isError,
    };
