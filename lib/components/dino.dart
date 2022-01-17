import 'dart:ui';
import 'package:flame/components/component.dart';

class Dino {
  Size screenSize;
  SpriteComponent spriteComponent;
  Dino(){
    spriteComponent=SpriteComponent.square(150,'DinoSprites_tard.gif');
    spriteComponent.x=100;
    spriteComponent.y=100;
  }

 @override
 void resize(Size size) {
   screenSize=size;
 }
}


/*

class Cat extends AnimationComponent{
  SpriteSheet catSpritesheet;
  Animation  _runAnimation;
  Animation  _hitAnimation;
  double speedY=0;
  double maxY=0;
  bool isHit;
  Timer _timer;

  Cat():super.empty(){
    catSpritesheet=SpriteSheet(
        imageName: "cat_spritesheet.png",
        textureWidth: 32,
        textureHeight: 32,
        columns: 8,
        rows: 10);
*/
