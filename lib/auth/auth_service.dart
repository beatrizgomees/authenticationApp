import 'dart:convert';
import 'dart:developer';
import 'package:authentication_app/auth/auth_model.dart';
import 'package:authentication_app/auth/auth_repository.dart';
import 'package:authentication_app/shared/components/show_snackBar_custom_component.dart';
import 'package:authentication_app/shared/constants/api_constants.dart';
import 'package:authentication_app/user/user_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class AuthService implements AuthRepository {
  @override
  Future<AuthModel> login(
      String email, String password, BuildContext context) async {
    try {
      var url = Uri.parse(ApiConstants.login);

      Map<String, dynamic> data = {
        'email': email,
        'password': password,
      };

      String jsonData = json.encode(data);
      var response = await http.post(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonData,
      );

      if (response.statusCode == 200) {
        var jsonResponse = jsonDecode(response.body);
        var token = jsonResponse['acessToken'];
        log(token);
        return AuthModel.fromJson(jsonResponse);
      } else {
        showErrorMessageEmailOrPasswordFailed(
            context, "Email or password invalid");
        return Future.error("Email or password invalid");
      }
    } catch (e) {
      showErrorMessageEmailOrPasswordFailed(context, "Login Failed");
      return Future.error("Login Failed");
    }
  }

  @override
  Future<void> register(User user) {
    // TODO: implement register
    throw UnimplementedError();
  }
}
