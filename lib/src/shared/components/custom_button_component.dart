import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: must_be_immutable
class CustomButtonComponent extends StatelessWidget {
  CustomButtonComponent(
      {super.key,
      required this.title,
      required this.color,
      required this.textColor,
      required this.heightButton,
      required this.widthButton,
      required this.assetPath,
      required this.heighAsset,
      required this.widthAsset,
      required this.onTap});

  String title;
  Color color;
  Color textColor;
  double widthButton;
  double heightButton;
  String assetPath;
  double widthAsset;
  double heighAsset;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: widthButton,
          height: heightButton,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: color,
          ),
          child: Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (assetPath.isNotEmpty)
                  Image.asset(
                    assetPath,
                    width: widthAsset,
                    height: heighAsset,
                  ),
                Text(
                  title,
                  style:
                      TextStyle(fontWeight: FontWeight.w600, color: textColor),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
