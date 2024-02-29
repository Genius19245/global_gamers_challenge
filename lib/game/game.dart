import 'dart:async';
import 'package:flame/game.dart';
import 'package:global_gamers_challenge/game/Collection/collection.dart';
import 'package:global_gamers_challenge/game/Collection/collection_manager.dart';
import 'package:global_gamers_challenge/game/player.dart';
class MyGame extends FlameGame{
  late Player player;
  late Collection collection;
  @override
  FutureOr<void> onLoad() async{
    // TODO: implement onLoad
    add(CollectableManager());
    add(player = Player(sprite: await loadSprite('nets.png'),
        position: Vector2(100,450),
        size: Vector2.all(90)
    ));
    return super.onLoad();
  }
  @override
  void update(double dt) {
    // TODO: implement update

    super.update(dt);
  }



}