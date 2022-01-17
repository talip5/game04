import 'package:flame/components/component.dart';
import 'package:flutter/material.dart';
import 'package:flame/flame.dart';
import 'package:flutter/services.dart';
import 'package:game04/landawGame.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
 await Flame.util.fullScreen();
  await Flame.util.setLandscape();
 //await Flame.util.setOrientation(DeviceOrientation.landscapeLeft);
LandawGame game=LandawGame();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flame Game'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  LandawGame game=LandawGame();

  final SpriteComponent _spriteComponent=SpriteComponent.square(150,'DinoSprites_mort.gif');

  @override
  void initState() {
    //  _spriteComponent.x; // sprite ' tin konumu
    _spriteComponent.x=500;
    _spriteComponent.y=100;
     game.add(_spriteComponent);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: game.widget,
    );
  }
}

