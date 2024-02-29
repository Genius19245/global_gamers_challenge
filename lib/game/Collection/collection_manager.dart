import 'dart:math';

import 'package:flame/components.dart';
import 'package:global_gamers_challenge/game/Collection/collection.dart';

import '../game.dart';

class CollectableManager extends TimerComponent with HasGameRef<MyGame> {
  final Random random = Random();
  List coordinates = [
    15.0,
    25.0,
    50.0,
    100.0,
    150.0,
    205.0,
    200.0,
    125.0,
    150.0
  ]..shuffle();

  CollectableManager() : super(period: 6, repeat: true);

  @override
  void onTick() {
    coordinates.shuffle();
    gameRef.addAll(
      List.generate(
        40,
            (index) => Collection(
          position: Vector2(coordinates.first, -10),
        ),
      ),

    );
    if(gameRef.player.isColliding){
      print('yayayyayayyayay');
    }
  }
}
