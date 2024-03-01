import 'dart:async';


import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:global_gamers_challenge/game/game.dart';
import 'package:global_gamers_challenge/game/player.dart';



class Collection extends SpriteAnimationComponent with HasGameRef<MyGame>,
    CollisionCallbacks,
    HasCollisionDetection
{
  Collection({
    required super.position,
  }){
    add(RectangleHitbox());
    debugMode = true;
  }

  @override
  FutureOr<void> onLoad() async{
    // TODO: implement onLoad
    animation = await gameRef.loadSpriteAnimation(
      'fish.png',
      SpriteAnimationData.variable(
        amount: 1,
        textureSize: Vector2.all(150),
        stepTimes: [0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1],
      ),
    );
    return super.onLoad();
  }
  @override
  void onCollisionStart(
      Set<Vector2> intersectionPoints, PositionComponent other) {
    if (other is Player) {
     removeFromParent();
      print('ahh');
    }
    super.onCollisionStart(intersectionPoints, other);
  }
  @override
  void update(double dt) {
    y += 1;
    // TODO: implement update

    super.update(dt);
  }
}