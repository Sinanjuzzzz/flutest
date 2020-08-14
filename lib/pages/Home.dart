import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Home Screen'),
      ),
      body: new Center(
        child: navMenu(context),
      ),
    );
  }
}

Widget navMenu(BuildContext context) {
  return new Column(children: <Widget>[
    RaisedButton(
      child: new Text('Randomwords'),
      onPressed: () {
        Navigator.of(context).pushNamed('/randomwords');
      },
    ),
    RaisedButton(
      child: new Text('Game'),
      onPressed: () {
        Navigator.of(context).pushNamed('/game');
      },
    ),
    RaisedButton(
      child: new Text('BoxGame'),
      onPressed: () {
        Navigator.of(context).pushNamed('/boxgame');
      },
    ),
  ]);
}
