import 'package:flutter/material.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class HomePage extends StatefulWidget {
  final token;
  HomePage({required this.token, super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late String email;
  @override
  void initState() {
    Map<String, dynamic> jwtDecodedToken = JwtDecoder.decode(widget.token);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('email'),
        ],
      ),
    );
  }
}
