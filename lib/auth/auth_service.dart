import 'dart:convert';
import 'dart:developer';

import 'package:authentication_app/auth/auth_repository.dart';
import 'package:authentication_app/shared/constants/api_constants.dart';
import 'package:authentication_app/user/user_model.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class AuthService implements AuthRepository {
  late SharedPreferences prefs;

  void initSharedPref() async {
    prefs = await SharedPreferences.getInstance();
  }

  @override
  Future<void> login(String email, String password) async {
    try {
      var response = await http.post(Uri.parse(ApiConstants.login),
          headers: ApiConstants.headers,
          body: {'email': email, 'password': password});
      print(response.statusCode);
      if (response.statusCode == 200) {
        var jsonResponse = jsonDecode(response.body);
        log(response.body);
        var token = jsonResponse['acessToken'];
        prefs.setString('acessToken', token);
      }
    } catch (e) {
      throw Exception('Erro ao tentar fazer login: $e');
    }
  }

  @override
  Future<void> register(User user) {
    // TODO: implement register
    throw UnimplementedError();
  }
}
