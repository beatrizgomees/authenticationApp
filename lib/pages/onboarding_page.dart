import 'dart:async';

import 'package:authentication_app/shared/components/custom_button_component.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage>
    with SingleTickerProviderStateMixin {
  bool _isCircular = false;
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),
      reverseDuration: Duration(milliseconds: 200),
    )..repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
// your Onboard UI here
    return TextButton(
        child: const Text("done"),
        onPressed: () async {
          final preferences = await SharedPreferences.getInstance();
          await preferences.setBool('showOnboard', true);
        });
  }
}
