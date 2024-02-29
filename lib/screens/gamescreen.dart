import 'package:flame/game.dart' show Game, GameWidget;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:global_gamers_challenge/game/game.dart';
final myGame = MyGame();

class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);

  static Route<void> route() {
    return MaterialPageRoute(
      builder: (_) => const GameScreen(),
    );
  }

  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Stack(
        children: [
          GameWidget<MyGame>(
            game: myGame,
          ),
          Positioned(
            left: 30,
            bottom: 30,
            child: Container(
              child: IconButton(
                icon: const Icon(Icons.arrow_back_ios, size: 40,),
                color: Colors.red,
                onPressed: (){

                  myGame.player.moveLeft(MediaQuery.of(context).size.width/7);
                },
              ),
            ),
          ),
          Positioned(
            right: 30,
            bottom: 30,
            child: Container(
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios, size: 40,),
                color: Colors.red,
                onPressed: (){
                  myGame.player.moveRight(MediaQuery.of(context).size.width/7);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
