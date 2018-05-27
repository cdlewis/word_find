import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  Tile({Key key, this.active, this.letter}) : super(key: key);

  final bool active;
  final String letter;

  @override
  Widget build(BuildContext context) {
    if (this.letter == " ") {
      return new Text(" ");
    }

    return new Container(
      child: new Center(
        child: new Text(
          this.active ? this.letter : " ",
          style: new TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25.0,
          )
        )
      ),
      decoration: new BoxDecoration(
        color: this.active ? Colors.green : Colors.grey,
        borderRadius: new BorderRadius.all(
          const Radius.circular(2.0),
        ),
      )
    );
  }
}