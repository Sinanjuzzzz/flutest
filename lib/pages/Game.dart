import 'package:flutter/material.dart';

class Game extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Game'),
      ),
      body: new Center(
        child: new RaisedButton(
          child: new Text('Back'),
          onPressed: () {
            Navigator.of(context).pushNamed('/');
          },
        ),
      ),
    );
  }
}
