import 'package:flutest/Router.dart';
import 'package:flutter/material.dart';
import '../Router.dart';

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

List<Widget> NavButtons(BuildContext context) {
  List<Widget> NavButtonlist = new List();
  Router.routes.forEach((key, value) {
    NavButtonlist.add(RaisedButton(
      child: new Text(key),
      onPressed: () {
        Navigator.of(context).pushNamed(key);
      },
    ));
  });
  return NavButtonlist;
}

Widget navMenu(BuildContext context) {
  return new Column(children: NavButtons(context));
}
