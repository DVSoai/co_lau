import 'dart:ui';

import 'package:flame/components.dart';

import '../hoa_lu_game.dart';

enum PlayerAnimation { idle, walk }

class PlayerComponent extends SpriteAnimationGroupComponent<PlayerAnimation>
    with HasGameReference<HoaLuGame> {
  PlayerComponent({required Image image, required super.position})
    : super(
        size: Vector2(64, 256 / 3),
        anchor: Anchor.center,
        current: PlayerAnimation.idle,
        animations: {
          for (final state in PlayerAnimation.values)
            state: SpriteAnimation.fromFrameData(
              image,
              SpriteAnimationData.sequenced(
                amount: 4,
                amountPerRow: 4,
                stepTime: state == PlayerAnimation.idle ? .24 : .14,
                textureSize: Vector2(image.width / 4, image.height / 2),
                texturePosition: Vector2(0, state.index * image.height / 2),
              ),
            ),
        },
      );

  @override
  void update(double dt) {
    final target = game.destination;
    if (target == null) {
      current = PlayerAnimation.idle;
    } else {
      final boundedTarget = game.constrainPosition(target);
      final delta = boundedTarget - position;
      final step = 140 * dt;
      if (delta.length <= step) {
        position.setFrom(boundedTarget);
        game.destination = null;
        current = PlayerAnimation.idle;
      } else {
        position += delta.normalized() * step;
        current = PlayerAnimation.walk;
      }
    }
    position.setFrom(game.constrainPosition(position));
    super.update(dt);
  }
}
