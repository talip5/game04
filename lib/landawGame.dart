import 'package:flame/components/component.dart';
import 'package:flame/components/parallax_component.dart';
import 'package:flame/game.dart';
import 'package:flame/gestures.dart';
import 'dart:ui';
import 'package:game04/components/dino.dart';
import 'package:flame/game/base_game.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/material.dart';


class LandawGame extends BaseGame{
  SpriteComponent _spriteComponent;
  Dino _dino=Dino();
  ParallaxComponent _parallaxComponent;
  int _score=0;

  LandawGame(){
    _parallaxComponent = ParallaxComponent([
      ParallaxImage('parallax/7.png'),
      ParallaxImage('parallax/6.png'),
      ParallaxImage('parallax/5.png'),
      ParallaxImage('parallax/4.png'),
      ParallaxImage('parallax/3.png'),
      ParallaxImage('parallax/2.png'),
      ParallaxImage('parallax/1.png'),
    ],
      baseSpeed: const Offset(100, 0),
      layerDelta: const Offset(20, 0),
    );

     _spriteComponent=SpriteComponent.square(150,'DinoSprites_mort.gif');
     _spriteComponent.x=300;
     _spriteComponent.y=100;
    add(_parallaxComponent);
    add(_spriteComponent);
   // add(_dino.spriteComponent);
    }

  Size screenSize;

 /* @override
  void render(Canvas canvas) {
  Rect bgRect = Rect.fromLTWH(0, 0, screenSize.width, screenSize.height);
    Paint bgPaint = Paint();
    bgPaint.color = Color(0xff576574);
    canvas.drawRect(bgRect, bgPaint);
  }*/

  @override
  void update(double t) {
  _score +=(60 * t).toInt();
  super.update(t);
  }

  @override
  void resize(Size size) {
    // TODO: implement resize
    super.resize(size);
  }

}