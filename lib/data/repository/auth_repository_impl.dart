import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:refri_mobile/domain/model/auth/auth_info.dart';
import 'package:refri_mobile/domain/repository/auth_repository.dart';
import 'package:refri_mobile/util/result.dart';

class AuthRepositoryImpl extends AuthRepository {
  final storage = const FlutterSecureStorage();

  AuthRepositoryImpl();

  @override
  Future<Result<bool>> writeToken(Token token) async {
    try {
      storage.write(key: 'access_token', value: token.accessToken);
      storage.write(key: 'refresh_token', value: token.refreshToken);

      return const Result.success(true);
    } catch (e) {
      return Result.error(Exception("네트워크 에러 발생: ${e.toString()}"));
    }
  }

  @override
  Future<Result<Token>> readToken() async {
    try {
      final accessToken = await storage.read(key: 'access_token');
      final refreshToken = await storage.read(key: 'refresh_token');
      if (accessToken == null || refreshToken == null) {
        return Result.error(Exception("토큰이 존재하지 않습니다."));
      }

      final token = Token(accessToken: accessToken, refreshToken: refreshToken);
      return Result.success(token);
    } catch (e) {
      return Result.error(Exception("네트워크 에러 발생: ${e.toString()}"));
    }
  }
}
