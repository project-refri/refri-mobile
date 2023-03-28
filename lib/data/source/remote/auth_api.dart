import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:refri_mobile/data/source/remote/dto/auth_info_dto.dart';

class AuthApi {
  static const baseUrl =
      'https://1lu5n9p020.execute-api.ap-northeast-2.amazonaws.com/dev';

  final http.Client _client;

  AuthApi({http.Client? client}) : _client = client ?? http.Client();

  Future<AuthInfoDto> googleLogin({required String accessToken}) async {
    final response = await _client.post(Uri.parse("$baseUrl/auth/google"),
        body: <String, String>{'access_token': accessToken});
    return AuthInfoDto.fromJson(jsonDecode(response.body)["data"]);
  }

  Future<AuthInfoDto> appleLogin({required String accessToken}) async {
    final response = await _client.post(Uri.parse("$baseUrl/auth/apple"),
        body: <String, String>{'access_token': accessToken});
    return AuthInfoDto.fromJson(jsonDecode(response.body)["data"]);
  }

  Future<AuthInfoDto> kakaoLogin({required String accessToken}) async {
    final response = await _client.post(Uri.parse("$baseUrl/auth/kakao"),
        body: <String, String>{'access_token': accessToken});
    return AuthInfoDto.fromJson(jsonDecode(response.body)["data"]);
  }

  Future<AuthInfoDto> register({required registerToken, required name}) async {
    final response = await _client.post(Uri.parse("$baseUrl/auth/register"),
        headers: <String, String>{'Authorization': 'Bearer $registerToken'},
        body: <String, String>{'nickname': name, 'username': name});
    return AuthInfoDto.fromJson(jsonDecode(response.body)["data"]);
  }
}
