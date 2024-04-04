import 'package:authentication_app/src/features/auth/ui/pages/login_page.dart';
import 'package:authentication_app/src/features/auth/ui/pages/register_page.dart';
import 'package:authentication_app/src/utils/routes/routes_name.dart';
import 'package:authentication_app/src/view/pages/home_page.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> generatedRoute(RouteSettings settings) {
    final argument = settings.arguments;
    switch (settings.name) {
      case RoutesName.HOME:
        return MaterialPageRoute(builder: (_) => HomePage());
      case RoutesName.LOGIN:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case RoutesName.LOGIN:
        return MaterialPageRoute(builder: (_) => const RegisterPage());
      default:
        return MaterialPageRoute(
          builder: (_) {
            return const Scaffold(
              body: Center(
                child: Text("No Route defined"),
              ),
            );
          },
        );
    }
  }
}