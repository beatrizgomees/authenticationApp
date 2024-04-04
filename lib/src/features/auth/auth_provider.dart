// import 'dart:js';

// import 'package:authentication_app/auth/auth_model.dart';
// import 'package:authentication_app/auth/auth_service.dart';
// import 'package:authentication_app/user/user_model.dart';
// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class AuthState extends ChangeNotifier {
//   //state of user information

//   User _user = User();
//   AuthModel _authModel = AuthModel();
//   final AuthService _authService = AuthService();

//   User get userInfo => _user;

//   void setUser(User user) {
//     _user = user;
//     notifyListeners();
//   }

//   void logout() {
//     _user = User();
//     _authModel = AuthModel(); // api token is empty
//     notifyListeners();
//   }

//   bool get isAuthorized {
//     return _authModel.accessToken!.isNotEmpty;
//   }

//   bool displayedOnboard = false;

//   Future<bool> tryLogin() async {
//     final preferences = await SharedPreferences.getInstance();

//     //check onboard form local storage

//     displayedOnboard = preferences.getBool('showOnboard') ?? false;
//     if (!displayedOnboard) {
//       //directly return false, when onboard never displayed
//       return false;
//     }

//     //fetch user info
//     final user = await _authService.login(_user.email!, _user.password!);
//     _user = user;
//     return true;
      
//   }
// }
