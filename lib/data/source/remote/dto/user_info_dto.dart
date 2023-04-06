import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:refri_mobile/domain/model/user/user_info.dart';

part 'user_info_dto.freezed.dart';

part 'user_info_dto.g.dart';

@freezed
class UserInfoDto with _$UserInfoDto {
  const factory UserInfoDto({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'nickname') String? nickname,
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'introduction') String? introduction,
    @JsonKey(name: 'thumbnail') String? thumbnail,
    @JsonKey(name: 'diet') Diet? diet,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _UserInfoDto;

  factory UserInfoDto.fromJson(Map<String, dynamic> json) =>
      _$UserInfoDtoFromJson(json);
}
