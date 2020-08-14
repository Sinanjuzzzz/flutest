import 'dart:ui';
import 'package:flame/game.dart';
import 'package:flame/gestures.dart';

class BoxGame extends Game with TapDetector {
  Size screenSize;
  bool gameState = false;
  void resize(Size size) {
    screenSize = size;
    super.resize(size);
  }

  @override
  void onTapUp(details) {
    double screenCenterX = screenSize.width / 2;
    double screenCenterY = screenSize.height / 2;
    if (details.globalPosition.dx >= screenCenterX - 75 &&
        details.globalPosition.dx <= screenCenterX + 75 &&
        details.globalPosition.dy >= screenCenterY - 75 &&
        details.globalPosition.dy <= screenCenterY + 75) {
      gameState = !gameState;
    }
  }

  void render(Canvas canvas) {
    Rect bgRect = Rect.fromLTWH(0, 0, screenSize.width, screenSize.height);
    Paint bgPaint = Paint();
    bgPaint.color = gameState ? Color(0xff00ff00) : Color(0xffff0000);
    canvas.drawRect(bgRect, bgPaint);
    double screenCenterX = screenSize.width / 2;
    double screenCenterY = screenSize.height / 2;
    Rect boxRect =
        Rect.fromLTWH(screenCenterX - 75, screenCenterY - 75, 150, 150);
    Paint boxPaint = Paint();
    boxPaint.color = Color(0xffffffff);
    canvas.drawRect(boxRect, boxPaint);
  }

  void update(double t) {}
}
