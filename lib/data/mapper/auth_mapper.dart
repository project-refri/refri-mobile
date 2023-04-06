import 'package:refri_mobile/data/mapper/user_mapper.dart';
import 'package:refri_mobile/data/source/remote/dto/auth_info_dto.dart';
import 'package:refri_mobile/domain/model/auth/auth_info.dart';
import 'package:refri_mobile/domain/model/user/user_info.dart';

extension ToAuthInfo on AuthInfoDto {
  AuthInfo toAuthInfo() {
    return AuthInfo(
        isExist: isExist ?? false,
        token: token ?? Token(accessToken: "", refreshToken: ""),
        userInfo: userInfoDto?.toUserInfo() ??
            UserInfo(
                id: "",
                nickname: "",
                username: "",
                email: "",
                introduction: "",
                thumbnail: "",
                diet: Diet.nomal,
                createdAt: DateTime.now(),
                updatedAt: DateTime.now()),
        registerToken: registerToken);
  }
}
