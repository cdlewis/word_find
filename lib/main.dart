import 'package:flutter/material.dart';
import 'package:word_find/widgets/tile.dart';
import 'package:word_find/widgets/select-letter.dart';
import 'package:word_find/puzzle.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.red,
      ),
      home: new MyHomePage(title: 'Find the missing words!'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    var puzzle = new Puzzle();
    
    var gridChildren = <Widget>[];
    for (var i = 0; i < puzzle.tiles.length; i++) {
      for (var j = 0; j < puzzle.tiles[i].length; j++) {
        gridChildren.add(new Tile(active: puzzle.revealedTiles[i][j], letter: puzzle.tiles[i][j]));
      }
    }

    return new Scaffold(
      body: new Column(
        children: <Widget>[
          new Expanded(
            child: new GridView.count(
              primary: false,
              padding: const EdgeInsets.fromLTRB(20.0, 55.0, 20.0, 40.0),
              crossAxisSpacing: 5.0,
              crossAxisCount: 7,
              children: gridChildren,
              mainAxisSpacing: 5.0,
            )
          ),
          new SelectLetter()
        ]
      )
    );
  }
}
