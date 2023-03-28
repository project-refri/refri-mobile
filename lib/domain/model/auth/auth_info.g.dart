// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Token _$TokenFromJson(Map<String, dynamic> json) => Token(
      accessToken: json['access_token'] as String,
      refreshToken: json['refresh_token'] as String,
    );

Map<String, dynamic> _$TokenToJson(Token instance) => <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
    };

_$_AuthInfo _$$_AuthInfoFromJson(Map<String, dynamic> json) => _$_AuthInfo(
      isExist: json['isExist'] as bool,
      token: Token.fromJson(json['token'] as Map<String, dynamic>),
      userInfo: UserInfo.fromJson(json['userInfo'] as Map<String, dynamic>),
      registerToken: json['registerToken'] as String?,
    );

Map<String, dynamic> _$$_AuthInfoToJson(_$_AuthInfo instance) =>
    <String, dynamic>{
      'isExist': instance.isExist,
      'token': instance.token,
      'userInfo': instance.userInfo,
      'registerToken': instance.registerToken,
    };
