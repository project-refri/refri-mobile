import 'package:refri_mobile/data/source/remote/dto/user_info_dto.dart';
import 'package:refri_mobile/domain/model/user/user_info.dart';

extension ToUserInfo on UserInfoDto {
  UserInfo toUserInfo() {
    return UserInfo(
      id: id ?? "",
      nickname: nickname ?? "",
      username: username ?? "",
      email: email ?? "",
      introduction: introduction ?? "",
      diet: diet ?? Diet.nomal,
      createdAt: createdAt ?? DateTime.now(),
      updatedAt: updatedAt ?? DateTime.now(),
    );
  }
}
