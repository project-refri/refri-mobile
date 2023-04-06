import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:refri_mobile/data/source/remote/dto/user_info_dto.dart';
import 'package:refri_mobile/domain/model/auth/auth_info.dart';

class UserApi {
  static const baseUrl =
      'https://1lu5n9p020.execute-api.ap-northeast-2.amazonaws.com/dev';

  final http.Client _client;

  UserApi({http.Client? client}) : _client = client ?? http.Client();

  Future<UserInfoDto> getUserInfo(String id) async {
    final response = await _client.get(Uri.parse("$baseUrl/user/$id"));
    return UserInfoDto.fromJson(jsonDecode(response.body)["data"]);
  }

  Future<UserInfoDto> getMe(Token token) async {
    final response = await _client.get(Uri.parse("$baseUrl/auth/me"),
        headers: <String, String>{
          'Authorization': 'Bearer ${token.accessToken}'
        });
    return UserInfoDto.fromJson(jsonDecode(response.body)["data"]);
  }
}
