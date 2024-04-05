import 'package:authentication_app/src/features/auth/network/auth_service.dart';
import 'package:authentication_app/src/features/auth/view_model/login_view_model.dart';
import 'package:authentication_app/src/features/user/user_model.dart';
import 'package:flutter/material.dart';

class LoginViewModelImpl extends LoginViewModel {
  @override
  void loginUser(String email, String password) {
    void loginUser(String email, String password, BuildContext context) async {
      final AuthService _authService = AuthService();
      if (email.isNotEmpty && password.isNotEmpty) {
        _authService.login(email, password, context);
      }
    }

    notifyListeners();
  }

  @override
  Future<void> register(User user) {
    throw UnimplementedError();
  }
}
