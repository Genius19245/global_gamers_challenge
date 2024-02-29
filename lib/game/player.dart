import 'dart:async';

import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:global_gamers_challenge/game/Collection/collection.dart';

class Player extends SpriteComponent with CollisionCallbacks{
  Player({
    super.sprite,
    super.position,
    super.size
}): super();

  @override
  FutureOr<void> onLoad() {
    // TODO: implement onLoad
    add(RectangleHitbox());
    debugMode = true;
    return super.onLoad();
  }
  @override
  void onCollisionStart(
      Set<Vector2> intersectionPoints,
      PositionComponent other,
      ) {
    if(other is Collection){
      print(intersectionPoints);
    }
    super.onCollisionStart(intersectionPoints, other);
  }

  @override
  void update(double dt) {
    // TODO: implement update
    if(isColliding){
      print('I have been hit ahhhhhhahahhhh');
    }
    super.update(dt);
  }
  void moveLeft(movement){
    x -= movement;
  }
  void moveRight(movement){
    x += movement;
  }
}