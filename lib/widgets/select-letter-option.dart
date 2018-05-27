import 'package:flutter/material.dart';

class SelectLetterOption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const letter = "A";
    const radius = 55.0;
    return new SizedBox(
      height: radius,
      width: radius,
      child: new Container(
        alignment: Alignment.center,
        decoration: new ShapeDecoration(
          color: Colors.pink,
          shape: CircleBorder()
        ),
        child: new Text(letter, style: new TextStyle(
          fontSize: 0.8 * radius,
          fontWeight: FontWeight.bold,
        ))
      )
    );
  }
}
