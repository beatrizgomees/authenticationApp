import 'package:authentication_app/user/user_model.dart';

abstract class AuthRepository {
  Future<void> login(String email, String password);
  Future<void> register(User user);
}
