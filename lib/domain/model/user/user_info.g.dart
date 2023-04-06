// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserInfo _$$_UserInfoFromJson(Map<String, dynamic> json) => _$_UserInfo(
      id: json['id'] as String,
      nickname: json['nickname'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      introduction: json['introduction'] as String,
      thumbnail: json['thumbnail'] as String,
      diet: $enumDecode(_$DietEnumMap, json['diet']),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$_UserInfoToJson(_$_UserInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nickname': instance.nickname,
      'username': instance.username,
      'email': instance.email,
      'introduction': instance.introduction,
      'thumbnail': instance.thumbnail,
      'diet': _$DietEnumMap[instance.diet]!,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$DietEnumMap = {
  Diet.nomal: 'NORMAL',
  Diet.workout: 'WORKOUT',
  Diet.keto: 'KETO',
  Diet.vegan: 'VEGAN',
};
