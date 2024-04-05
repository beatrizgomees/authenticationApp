import 'package:flutter/material.dart';

abstract class LoginViewModel extends ChangeNotifier {
  TextEditingController emailControllerText = TextEditingController();
  TextEditingController passwordControllerText = TextEditingController();

  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();

  ValueNotifier<bool> obscureNotifier = ValueNotifier<bool>(true);

  void loginUser(String email, String password);
}
