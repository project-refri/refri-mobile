import 'package:refri_mobile/domain/model/auth/auth_info.dart';
import 'package:refri_mobile/domain/model/user/user_info.dart';
import 'package:refri_mobile/util/result.dart';

abstract class UserRepository {
  Future<Result<UserInfo>> getUserInfo(String id);
  Future<Result<UserInfo>> getMe(Token token);
}
