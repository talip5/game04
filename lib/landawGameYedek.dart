import 'dart:ui';
import 'package:flame/components/component.dart';
import 'package:flame/components/parallax_component.dart';
import 'package:flame/game.dart';
import 'package:flame/gestures.dart';
import 'package:game04/components/fly.dart';
import 'package:flame/game/base_game.dart';

class LandawGame extends BaseGame with TapDetector{

  SpriteComponent _spriteComponent;
  ParallaxComponent _parallaxComponent;

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
    add(_parallaxComponent);
  }

  @override
  void render(Canvas canvas) {
    // TODO: implement render
  }

  @override
  void update(double t) {
    // TODO: implement update
  }

}