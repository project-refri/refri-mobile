import 'package:refri_mobile/domain/model/auth/auth_info.dart';
import 'package:refri_mobile/util/result.dart';

abstract class AuthRepository {
  Future<Result<bool>> writeToken(Token token);
  Future<Result<Token>> readToken();
}
