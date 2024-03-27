import 'package:authentication_app/auth/auth_model.dart';
import 'package:authentication_app/user/user_model.dart';
import 'package:flutter/material.dart';

abstract class AuthRepository {
  Future<AuthModel> login(String email, String password, BuildContext context);
  Future<void> register(User user);
}
