import 'dart:convert';
import 'dart:developer';
import 'package:authentication_app/src/features/auth/data/auth_model.dart';
import 'package:authentication_app/src/features/auth/repository/auth_repository.dart';
import 'package:authentication_app/src/shared/constants/api_constants.dart';
import 'package:authentication_app/src/features/user/user_model.dart';
import 'package:http/http.dart' as http;

class AuthService implements AuthRepository {
  @override
  Future<AuthModel> login(String email, String password) async {
    try {
      final response = await http.post(Uri.parse(ApiConstants.login),
          headers: {
            'Content-Type': 'application/json',
          },
          body: jsonEncode({
            'email': email,
            'password': password,
          }));
      if (response.statusCode == 200) {
        log(response.body);
        return AuthModel.fromJson(json.decode(response.body));
      } else {
        return Future.error("Email or password invalid");
      }
    } catch (e) {
      return Future.error("Login Failed");
    }
  }

  @override
  Future<void> register(User user) {
    // TODO: implement register
    throw UnimplementedError();
  }
}
