import 'package:flutter/material.dart';
import 'pages/RandomWords.dart';
import 'pages/Home.dart';
import 'pages/Game.dart';
import 'pages/BoxGame.dart';

class Router {
  static Map<String, WidgetBuilder> routes = {
    '/': (BuildContext context) => new Home(),
    '/randomwords': (BuildContext context) => new RandomWords(),
    '/game': (BuildContext context) => new Game(),
    '/boxgame': (BuildContext context) => new BoxGame().widget,
  };
}
