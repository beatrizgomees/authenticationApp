import 'package:authentication_app/src/features/auth/data/auth_model.dart';
import 'package:authentication_app/src/features/user/user_model.dart';
import 'package:flutter/material.dart';

abstract class AuthRepository {
  Future<AuthModel> login(String email, String password);
  Future<void> register(User user);
}
