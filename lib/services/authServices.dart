import 'dart:convert';

import 'package:shamogetx/model/UserModel.dart';
import 'package:http/http.dart' as https;

class authServoces {
  final _url = 'https://shamo-backend.buildwithangga.id/api';
  Future<userModel> SingIn(
      String name, String username, String email, String password) async {
    try {
      var url = Uri.parse('$_url/register');

      var headers = {'Content-Type': 'application/json'};

      var body = jsonEncode({
        'name': name,
        'username': username,
        'email': email,
        'password': password
      });

      var response = await https.post(url, headers: headers, body: body);
      print(response.body);
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body)['data'];
        print('dsasasa');
        return userModel.fromJson(data['user']);
      } else {
        throw Exception('gagal register');
      }
    } catch (e) {
      print('object');
      rethrow;
    }
  }

  Future<userModel> login(String email, String password) async {
    try {
      var data = Uri.parse(_url);
      var Body = jsonEncode({
        'email': email,
        'password': password,
      });
      var headers = {'Content-Type': 'application/json'};
      final respons = await https.post(data, headers: headers, body: Body);
      print(respons.body);
      if (respons.statusCode == 200) {
        final result = jsonDecode(respons.body)['data'];
        return userModel.fromJson(result['user']);
      } else {
        throw Exception('data tidak di temukan');
      }
    } catch (e) {
      rethrow;
    }
  }
}
