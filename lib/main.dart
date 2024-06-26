import 'package:authentication_app/src/features/auth/page/login_page.dart';
import 'package:authentication_app/src/features/register/page/register_page.dart';
import 'package:authentication_app/src/shared/routes/routes.dart';
import 'package:authentication_app/src/shared/routes/routes_name.dart';
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
      initialRoute: RoutesName.LOGIN,
      onGenerateRoute: Routes.generatedRoute,
    );
  }
}
