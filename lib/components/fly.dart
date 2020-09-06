import 'dart:ui';

class Fly {
  double width, height;
  Rect flyRect;
  Paint flyPaint;
  double flySize;
  bool isDead = false;

  Fly(double tileSize, double x, double y) {
    flySize = tileSize;
    flyRect = Rect.fromLTWH(x, y, tileSize, tileSize);
    flyPaint = Paint();
    flyPaint.color = Color(0xff6ab04c);
  }

  void render(Canvas c) {
    c.drawRect(flyRect, flyPaint);
  }

  void update(double t) {
    if (isDead) {
      flyRect = flyRect.translate(0, flySize * 12 * t);
    }
  }

  void onTapDown() {
    flyPaint.color = Color(0xffff4757);
    isDead = true;
  }
}
