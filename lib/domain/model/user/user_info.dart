import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_info.freezed.dart';

part 'user_info.g.dart';

@freezed
class UserInfo with _$UserInfo {
  const factory UserInfo({
    required String id,
    required String nickname,
    required String username,
    required String email,
    required String introduction,
    required Diet diet,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _UserInfo;

  factory UserInfo.fromJson(Map<String, dynamic> json) =>
      _$UserInfoFromJson(json);
}

enum Diet {
  @JsonValue("NORMAL")
  nomal("normal"),
  @JsonValue("WORKOUT")
  workout("workout"),
  @JsonValue("KETO")
  keto("keto"),
  @JsonValue("VEGAN")
  vegan("vegan");

  const Diet(this.name);

  final String name;
}
