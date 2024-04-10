import 'package:authentication_app/src/features/auth/data/auth_model.dart';
import 'package:authentication_app/src/features/auth/network/auth_service.dart';
import 'package:authentication_app/src/features/auth/view_model/login_view_model.dart';
import 'package:authentication_app/src/features/user/user_model.dart';
import 'package:authentication_app/src/shared/components/show_snackBar_custom_component.dart';
import 'package:authentication_app/src/shared/utils/pref_services.dart';
import 'package:flutter/material.dart';

class LoginViewModelImpl extends LoginViewModel {
  final AuthService _authService = AuthService();

  TextEditingController emailControllerText = TextEditingController();
  TextEditingController passwordControllerText = TextEditingController();
  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();
  bool? isLogged = false;

  @override
  Future<bool> loginUser(String email, String password) async {
    AuthModel response = await _authService.login(email, password);
    print(response.accessToken);
    if (response.accessToken != null) {
      saveToken(response);
      isLogged = true;
      return isLogged!;
    }

    return false;
  }

  @override
  notifyListeners();
}

void saveToken(AuthModel response) async {
  PrefersService.save(response.accessToken!);
}

@override
Future<void> register(User user) {
  throw UnimplementedError();
}
