import 'dart:math';

import 'package:authentication_app/src/shared/utils/utils.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFormFieldComponent extends StatefulWidget {
  TextFormFieldComponent(
      {super.key,
      required this.title,
      required this.colorFill,
      required this.colorFocus,
      required this.filled,
      required this.keyboardType,
      this.isObscureText,
      this.controller,
      required this.currentFocusNode,
      this.onFieldSubmitted,
      this.nextFocusNode});

  String title;
  Color colorFill;
  Color colorFocus;
  bool filled;
  TextInputType keyboardType;
  bool? isObscureText;
  TextEditingController? controller;
  FocusNode currentFocusNode;
  FocusNode? nextFocusNode;
  final void Function(String)? onFieldSubmitted;

  @override
  State<TextFormFieldComponent> createState() => _TextFormFieldComponentState();
}

class _TextFormFieldComponentState extends State<TextFormFieldComponent> {
  bool? visibilityPassowrd = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: TextFormField(
        controller: widget.controller,
        keyboardType: widget.keyboardType,
        obscureText:
            visibilityPassowrd! == true ? widget.isObscureText = true : false,
        obscuringCharacter: "*",
        focusNode: widget.currentFocusNode,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(12, 0, 12, 0),
          fillColor: widget.colorFill,
          filled: widget.filled,
          focusColor: widget.colorFocus,
          hintText: widget.title,
          suffixIcon: widget.isObscureText == true
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      visibilityPassowrd = !visibilityPassowrd!;
                      print(visibilityPassowrd!);
                    });
                  },
                  child: visibilityPassowrd! == false
                      ? const Icon(Icons.visibility_off)
                      : const Icon(Icons.visibility),
                )
              : null,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
        ),
        onFieldSubmitted: (value) {
          Utils.fieldFocusChange(
              context, widget.currentFocusNode, widget.nextFocusNode!);
        },
      ),
    );
  }
}
