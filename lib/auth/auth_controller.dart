import 'package:authentication_app/auth/auth_service.dart';
import 'package:authentication_app/pages/home_page.dart';
import 'package:authentication_app/user/user_model.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController {
  TextEditingController emailControllerText = TextEditingController();
  TextEditingController passwordControllerText = TextEditingController();

  final AuthService _authService = AuthService();
  // bool loginIsEmpty(){
  //   if(emailControllerText.text.isNotEmpty && )
  // }

  void loginUser(
      TextEditingController emailControllerText,
      TextEditingController passwordControllerText,
      BuildContext context) async {
    if (emailControllerText.text.isNotEmpty &&
        passwordControllerText.text.isNotEmpty) {
      _authService.login(
          emailControllerText.text, passwordControllerText.text, context);
    }
  }
}
