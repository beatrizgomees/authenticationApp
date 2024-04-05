import 'package:flutter/material.dart';

abstract class RegisterViewModel extends ChangeNotifier {
  TextEditingController emailControllerText = TextEditingController();
  TextEditingController passwordControllerText = TextEditingController();
  TextEditingController nameControllerText = TextEditingController();
  TextEditingController usernameControllerText = TextEditingController();
  TextEditingController confirmPassowrdControllerText = TextEditingController();

  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();
  FocusNode nameFocusNode = FocusNode();
  FocusNode usernameFocusNode = FocusNode();
  FocusNode confirmPassowrdFocusNode = FocusNode();

  void registerUser(String email, String password);
}
