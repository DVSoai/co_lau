import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/experimental.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';
import 'components/meadow_component.dart';
import 'components/player_component.dart';
import 'hoa_lu_world.dart';

class HoaLuGame extends FlameGame<HoaLuWorld> with TapCallbacks {
  Vector2? destination;

  HoaLuGame() : super(world: HoaLuWorld());

  Vector2 constrainPosition(Vector2 point) {
    final marginX = 32.0;
    final marginY = 43.0;
    return Vector2(
      point.x.clamp(marginX, HoaLuWorld.mapSize.x - marginX).toDouble(),
      point.y.clamp(marginY, HoaLuWorld.mapSize.y - marginY).toDouble(),
    );
  }

  @override
  void onTapDown(TapDownEvent event) {
    destination = constrainPosition(camera.globalToLocal(event.canvasPosition));
  }

  @override
  Color backgroundColor() => AppColors.gameBackground;

  @override
  Future<void> onLoad() async {
    await images.loadAll([
      'hoa_lu_meadow.png',
      'bamboo.png',
      'reed_leader_sheet.png',
    ]);
    await world.add(
      MeadowComponent(
        ground: Sprite(images.fromCache('hoa_lu_meadow.png')),
        bamboo: Sprite(images.fromCache('bamboo.png')),
      ),
    );
    final player = PlayerComponent(
      image: images.fromCache('reed_leader_sheet.png'),
      position: HoaLuWorld.mapSize / 2,
    );
    await world.add(player);
    camera.setBounds(
      Rectangle.fromLTWH(0, 0, HoaLuWorld.mapSize.x, HoaLuWorld.mapSize.y),
      considerViewport: true,
    );
    camera.follow(player, snap: true);
  }
}
