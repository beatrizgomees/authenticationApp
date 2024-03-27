import 'package:authentication_app/pages/home_page.dart';
import 'package:authentication_app/pages/login_page.dart';
import 'package:authentication_app/pages/register_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => LoginPage(),
          '/register': (context) => RegisterPage(),
        });
  }
}
