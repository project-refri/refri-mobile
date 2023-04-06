import 'package:refri_mobile/data/mapper/user_mapper.dart';
import 'package:refri_mobile/data/source/remote/user_api.dart';
import 'package:refri_mobile/domain/model/auth/auth_info.dart';
import 'package:refri_mobile/domain/model/user/user_info.dart';
import 'package:refri_mobile/domain/repository/user_repository.dart';
import 'package:refri_mobile/util/result.dart';

class UserRepositoryImpl implements UserRepository {
  final UserApi _api = UserApi();

  UserRepositoryImpl();

  @override
  Future<Result<UserInfo>> getUserInfo(String id) async {
    try {
      final dto = await _api.getUserInfo(id);
      return Result.success(dto.toUserInfo());
    } catch (e) {
      return Result.error(Exception("네트워크 에러 발생: ${e.toString()}"));
    }
  }

  @override
  Future<Result<UserInfo>> getMe(Token token) async {
    try {
      final dto = await _api.getMe(token);
      return Result.success(dto.toUserInfo());
    } catch (e) {
      return Result.error(Exception("네트워크 에러 발생: ${e.toString()}"));
    }
  }
}
