import 'package:flutter/material.dart';
import 'package:word_find/widgets/select-letter-option.dart';

class SelectLetter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const radius = 200.0;
    const letterSize = 45.0;
    const padding = 10.0;
    return new SizedBox(
      height: radius,
      width: radius,
      child: new Container(
        decoration: new ShapeDecoration(
          color: Colors.blue,
          shape: CircleBorder(),
        ),
        child: new Stack(
          alignment: AlignmentDirectional.center,
          children: <Widget>[
            new Positioned(
              child: new SelectLetterOption(),
              top: 0.0 + 5.0,
            ),
            new Positioned(
              child: new SelectLetterOption(),
              left: 0.0 + padding,
              top: 0.0 + 10.0 + letterSize
            ),
            new Positioned(
              child: new SelectLetterOption(),
              right: 0.0 + padding,
              top: 0.0 + 10.0 + letterSize
            ),
            new Positioned(
              child: new SelectLetterOption(),
              left: 0.0 + 30.0,
              bottom: 0.0 + 10.0 + 10.0
            ),
            new Positioned(
              child: new SelectLetterOption(),
              right: 0.0 + 30.0,
              bottom: 0.0 + 10.0 + 10.0
            ),
          ],
          fit: StackFit.loose,
          overflow: Overflow.clip
        )
      )
    );
  }
}