import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import 'components/meadow_component.dart';
import 'components/player_component.dart';

class HoaLuGame extends FlameGame with TapCallbacks {
  Vector2? destination;

  Vector2 constrainPosition(Vector2 point) {
    final marginX = size.x < 64 ? size.x / 2 : 32.0;
    final marginY = size.y < 86 ? size.y / 2 : 43.0;
    return Vector2(
      point.x.clamp(marginX, size.x - marginX).toDouble(),
      point.y.clamp(marginY, size.y - marginY).toDouble(),
    );
  }

  @override
  void onTapDown(TapDownEvent event) {
    destination = constrainPosition(event.localPosition);
  }

  @override
  Color backgroundColor() => const Color(0xff8eaa62);

  @override
  Future<void> onLoad() async {
    await images.loadAll([
      'hoa_lu_meadow.png',
      'bamboo.png',
      'reed_leader_sheet.png',
    ]);
    await add(
      MeadowComponent(
        ground: Sprite(images.fromCache('hoa_lu_meadow.png')),
        bamboo: Sprite(images.fromCache('bamboo.png')),
      ),
    );
    await add(
      PlayerComponent(
        image: images.fromCache('reed_leader_sheet.png'),
        position: size / 2,
      ),
    );
  }
}
