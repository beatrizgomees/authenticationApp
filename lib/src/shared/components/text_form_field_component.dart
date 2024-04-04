import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFormFieldComponent extends StatelessWidget {
  TextFormFieldComponent(
      {super.key,
      required this.title,
      required this.colorFill,
      required this.colorFocus,
      required this.filled,
      required this.keyboardType,
      this.isObscureText,
      this.controller});

  String title;
  Color colorFill;
  Color colorFocus;
  bool filled;
  TextInputType keyboardType;
  bool? isObscureText;
  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: isObscureText ?? false,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(12, 0, 12, 0),
          fillColor: colorFill,
          filled: filled,
          focusColor: colorFocus,
          hintText: title,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
        ),
      ),
    );
  }
}
