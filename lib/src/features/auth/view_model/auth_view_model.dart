import 'package:flutter/material.dart';

abstract class AuthViewModel extends ChangeNotifier {
  TextEditingController emailControllerText = TextEditingController();
  TextEditingController passwordControllerText = TextEditingController();

  void loginUser(String email, String password);
}
