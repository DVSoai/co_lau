import 'dart:ui';

import 'package:flame/components.dart';

import '../hoa_lu_world.dart';

class MeadowComponent extends Component with HasWorldReference<HoaLuWorld> {
  MeadowComponent({required this.ground, required this.bamboo});

  final Sprite ground;
  final Sprite bamboo;

  @override
  void render(Canvas canvas) {
    ground.render(canvas, size: HoaLuWorld.mapSize);
    final height = HoaLuWorld.mapSize.y * .26;
    final propSize = Vector2(height * 1145 / 1374, height);
    bamboo.render(
      canvas,
      position: Vector2(HoaLuWorld.mapSize.x * .06, HoaLuWorld.mapSize.y * .04),
      size: propSize,
    );
    bamboo.render(
      canvas,
      position: Vector2(HoaLuWorld.mapSize.x * .48, HoaLuWorld.mapSize.y * .02),
      size: propSize * .8,
    );
  }
}
