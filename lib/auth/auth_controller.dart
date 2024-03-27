import 'package:authentication_app/auth/auth_service.dart';
import 'package:authentication_app/pages/home_page.dart';
import 'package:authentication_app/user/user_model.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController {
  TextEditingController emailControllerText = TextEditingController();
  TextEditingController passwordControllerText = TextEditingController();

  // bool loginIsEmpty(){
  //   if(emailControllerText.text.isNotEmpty && )
  // }

  void loginUser(String email, String password, BuildContext context) async {
    final AuthService _authService = AuthService();
    if (email.isNotEmpty && password.isNotEmpty) {
      _authService.login(email, password, context);
    }
  }
}
