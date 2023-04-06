import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:refri_mobile/domain/model/user/user_info.dart';

part 'auth_info.freezed.dart';

part 'auth_info.g.dart';

@freezed
class AuthInfo with _$AuthInfo {
  const factory AuthInfo({
    required bool isExist,
    required Token token,
    required UserInfo userInfo,
    required String? registerToken,
  }) = _AuthInfo;

  factory AuthInfo.fromJson(Map<String, dynamic> json) =>
      _$AuthInfoFromJson(json);
}

@JsonSerializable(explicitToJson: true)
class Token {
  @JsonKey(name: "access_token")
  String accessToken;
  @JsonKey(name: "refresh_token")
  String refreshToken;

  Token({required this.accessToken, required this.refreshToken});

  factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);
  Map<String, dynamic> toJson() => _$TokenToJson(this);
}
