import 'package:authentication_app/src/features/auth/data/auth_model.dart';
import 'package:flutter/material.dart';

abstract class LoginViewModel extends ChangeNotifier {
  ValueNotifier<bool> obscureNotifier = ValueNotifier<bool>(true);

  Future<bool> loginUser(String email, String password);
}
