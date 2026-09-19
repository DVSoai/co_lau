import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

class HoaLuGame extends FlameGame {
  @override
  Color backgroundColor() => const Color(0xff8eaa62);

  @override
  Future<void> onLoad() async {
    add(_Ground());
    add(_Player(position: Vector2(size.x / 2, size.y / 2)));
  }
}

class _Ground extends Component with HasGameReference<HoaLuGame> {
  @override
  void render(Canvas canvas) {
    final p = Paint()..color = const Color(0xffb7c985);
    canvas.drawRect(Rect.fromLTWH(0, 0, game.size.x, game.size.y), p);
    final river = Paint()..color = const Color(0xff6e9eb0);
    canvas.drawRect(Rect.fromLTWH(game.size.x * .68, 0, game.size.x * .12, game.size.y), river);
    final path = Paint()..color = const Color(0xffc9aa72)..strokeWidth = 18;
    canvas.drawLine(Offset(0, game.size.y * .72), Offset(game.size.x, game.size.y * .36), path);
  }
}

class _Player extends PositionComponent with HasGameReference<HoaLuGame> {
  _Player({required super.position}) : super(size: Vector2.all(34), anchor: Anchor.center);

  @override
  void render(Canvas canvas) {
    canvas.drawCircle(Offset(size.x / 2, size.y / 2), 16, Paint()..color = const Color(0xff8d2f24));
    canvas.drawCircle(Offset(size.x / 2, size.y / 2 - 4), 7, Paint()..color = const Color(0xffffd39b));
    canvas.drawRect(Rect.fromLTWH(14, 1, 4, 11), Paint()..color = const Color(0xfff1d26a));
  }

  @override
  void update(double dt) {
    super.update(dt);
    position.x = (position.x + 22 * dt).clamp(20, game.size.x - 20);
  }
}
