import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import '../game/hoa_lu_game.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: GameWidget(game: HoaLuGame()),
      );
}
