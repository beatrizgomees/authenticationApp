import 'package:flutter/material.dart';

class ErrorMessageSnackbar {
  static SnackBar build(String message) {
    return SnackBar(
      content: Text(
        message,
        style: const TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.red,
    );
  }
}

void showErrorMessageEmailOrPasswordFailed(
    BuildContext context, String message) {
  ScaffoldMessenger.of(context)
      .showSnackBar(ErrorMessageSnackbar.build(message));
}

class SucessMessageSnackBar {
  static SnackBar build(String message) {
    return SnackBar(
      content: Text(
        message,
        style: const TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.green,
    );
  }
}

void showSucessMessageLogin(BuildContext context, String message) {
  ScaffoldMessenger.of(context)
      .showSnackBar(ErrorMessageSnackbar.build(message));
}
