// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserInfoDto _$$_UserInfoDtoFromJson(Map<String, dynamic> json) =>
    _$_UserInfoDto(
      id: json['id'] as String?,
      nickname: json['nickname'] as String?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      introduction: json['introduction'] as String?,
      diet: $enumDecodeNullable(_$DietEnumMap, json['diet']),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$_UserInfoDtoToJson(_$_UserInfoDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nickname': instance.nickname,
      'username': instance.username,
      'email': instance.email,
      'introduction': instance.introduction,
      'diet': _$DietEnumMap[instance.diet],
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

const _$DietEnumMap = {
  Diet.nomal: 'NOMAL',
  Diet.workout: 'WORKOUT',
  Diet.keto: 'KETO',
  Diet.vegan: 'VEGAN',
};
