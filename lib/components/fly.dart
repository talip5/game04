import 'dart:ui';
import 'package:flame/game.dart';

class Fly {
  Size screenSize;
  Rect flyRect;
  Paint flyPaint;
  bool isDead = false;
  bool isOffScreen = false;

  Fly() {
    flyRect = Rect.fromLTWH(0,0,screenSize.width/4,screenSize.height/4);
    flyPaint = Paint();
    flyPaint.color = Color(0xff6ab04c);
  }

  void render(Canvas c) {
    c.drawRect(flyRect, flyPaint);
    // print('flyRect : ${flyRect.top} ');
  }
/*
  void update(double t) {
    if (isDead) {
      flyRect = flyRect.translate(0, game.tileSize * 12/10 * t);
    }
    if (flyRect.top > game.screenSize.height) {
      isOffScreen = true;
    }
  }

  void onTapDown() {
    isDead = true;
    flyPaint.color = Color(0xffff4757);
    game.spawnFly();
  }*/
  void resize(Size size) {
    screenSize=size;
  }
}