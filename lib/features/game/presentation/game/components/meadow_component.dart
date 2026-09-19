import 'dart:ui';

import 'package:flame/components.dart';

import '../hoa_lu_game.dart';

class MeadowComponent extends Component with HasGameReference<HoaLuGame> {
  MeadowComponent({required this.ground, required this.bamboo});

  final Sprite ground;
  final Sprite bamboo;

  @override
  void render(Canvas canvas) {
    ground.render(canvas, size: game.size);
    final height = game.size.y * .26;
    final propSize = Vector2(height * 1145 / 1374, height);
    bamboo.render(
      canvas,
      position: Vector2(game.size.x * .06, game.size.y * .04),
      size: propSize,
    );
    bamboo.render(
      canvas,
      position: Vector2(game.size.x * .48, game.size.y * .02),
      size: propSize * .8,
    );
  }
}
