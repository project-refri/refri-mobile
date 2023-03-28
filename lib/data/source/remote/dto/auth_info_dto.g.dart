// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthInfoDto _$$_AuthInfoDtoFromJson(Map<String, dynamic> json) =>
    _$_AuthInfoDto(
      isExist: json['is_exist'] as bool?,
      token: json['token'] == null
          ? null
          : Token.fromJson(json['token'] as Map<String, dynamic>),
      userInfoDto: json['user'] == null
          ? null
          : UserInfoDto.fromJson(json['user'] as Map<String, dynamic>),
      registerToken: json['register_token'] as String?,
    );

Map<String, dynamic> _$$_AuthInfoDtoToJson(_$_AuthInfoDto instance) =>
    <String, dynamic>{
      'is_exist': instance.isExist,
      'token': instance.token,
      'user': instance.userInfoDto,
      'register_token': instance.registerToken,
    };
