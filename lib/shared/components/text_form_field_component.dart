import 'package:flutter/material.dart';

class TextFormFieldComponent extends StatelessWidget {
  TextFormFieldComponent(
      {super.key,
      required this.title,
      required this.colorFill,
      required this.colorFocus,
      required this.filled});

  String title;
  Color colorFill;
  Color colorFocus;
  bool filled;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: TextFormField(
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
