import 'dart:ui';
import 'dart:math';
import 'dart:async';
import 'package:flame/game.dart';
import 'package:flame/flame.dart';
import 'package:flame/gestures.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/fly.dart';

class LangawGamePage extends StatelessWidget {
  final game = LangawGame();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('LangawGame'),
      ),
      body: new Center(child: game.widget),
    );
  }
}

class LangawGame extends Game with TapDetector {
  Size screenSize;
  double tileSize;
  List<Fly> flies;
  Random rnd;

  LangawGame() {
    initialize();
  }

  void initialize() async {
    flies = List<Fly>();
    resize(await Flame.util.initialDimensions());
    rnd = Random();
    moveFly();
  }

  void render(Canvas canvas) {
    Rect bgRect = Rect.fromLTWH(0, 0, screenSize.width, screenSize.height);
    Paint bgPaint = Paint();
    bgPaint.color = Color(0xff576574);
    canvas.drawRect(bgRect, bgPaint);
    flies.forEach((Fly fly) => fly.render(canvas));
  }

  void update(double t) {
    flies.forEach((Fly fly) => fly.update(t));
  }

  void resize(Size size) {
    screenSize = size;
    tileSize = screenSize.width / 9;
  }

  void spawnFly(index) {
    double x = rnd.nextDouble() * (screenSize.width - tileSize);
    double y = rnd.nextDouble() * (screenSize.height - tileSize);
    if (index < 3) {
      flies.add(Fly(tileSize, x, y));
    } else {
      flies[index % 3] = Fly(tileSize, x, y);
    }
  }

  void moveFly() {
    int seconds = 0;
    Timer.periodic(Duration(seconds: 1), (timer) {
      spawnFly(seconds);
      seconds++;
    });
  }

  @override
  void onTapUp(details) {
    flies.forEach((Fly fly) {
      if (fly.flyRect.contains(details.globalPosition)) {
        fly.onTapDown();
      }
    });
  }
}
