import 'package:flutter/material.dart';

class CardTaskComponent extends StatefulWidget {
  CardTaskComponent(
      {super.key,
      required this.description,
      required this.title,
      required this.color});
  String title;
  String description;
  Color color;

  @override
  State<CardTaskComponent> createState() => _CardTaskComponentState();
}

class _CardTaskComponentState extends State<CardTaskComponent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 10),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 100,
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${widget.title}',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontSize: 18),
                  ),
                  Checkbox(value: false, onChanged: null),
                ],
              ),
              Text(
                '${widget.description}',
                style: const TextStyle(color: Colors.black, fontSize: 10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
