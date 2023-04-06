import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:refri_mobile/data/source/remote/dto/user_info_dto.dart';
import 'package:refri_mobile/domain/model/auth/auth_info.dart';

part 'auth_info_dto.freezed.dart';

part 'auth_info_dto.g.dart';

@freezed
class AuthInfoDto with _$AuthInfoDto {
  const factory AuthInfoDto({
    @JsonKey(name: "is_exist") bool? isExist,
    @JsonKey(name: "token") Token? token,
    @JsonKey(name: "user") UserInfoDto? userInfoDto,
    @JsonKey(name: "register_token") String? registerToken,
  }) = _AuthInfoDto;

  factory AuthInfoDto.fromJson(Map<String, dynamic> json) =>
      _$AuthInfoDtoFromJson(json);
}
