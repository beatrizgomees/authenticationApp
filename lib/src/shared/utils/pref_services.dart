import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class PrefersService {
  static const String _key = 'key';

  static save(String token) async {
    var prefs = await SharedPreferences.getInstance();
    prefs.setString(
        _key,
        jsonEncode({
          'token': token,
          'isAuth': true,
        }));
  }
}
