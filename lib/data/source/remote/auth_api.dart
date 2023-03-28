import 'dart:convert';
import 'package:http/http.dart' as http;

class AuthApi {
  static const baseUrl =
      'https://1lu5n9p020.execute-api.ap-northeast-2.amazonaws.com/dev';

  final http.Client _client;

  AuthApi({http.Client? client}) : _client = client ?? http.Client();

  Future<http.Response> googleLogin({required String accessToken}) async {
    return await _client.post(Uri.parse("$baseUrl/auth/google"),
        body: <String, String>{'access_token': accessToken});
  }

  Future<http.Response> appleLogin({required String accessToken}) async {
    return await _client.post(Uri.parse("$baseUrl/auth/apple"),
        body: <String, String>{'access_token': accessToken});
  }

  Future<http.Response> kakaoLogin({required String accessToken}) async {
    return await _client.post(Uri.parse("$baseUrl/auth/kakao"),
        body: <String, String>{'access_token': accessToken});
  }

  Future<http.Response> register(
      {required registerToken, required name}) async {
    return await _client.post(Uri.parse("$baseUrl/auth/register"),
        headers: <String, String>{'Authorization': 'Bearer $registerToken'},
        body: <String, String>{'nickname': name, 'username': name});
  }
}
