import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:su_viet/app/routers/router_name.dart';

import '../game/hoa_lu_game.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  final HoaLuGame _game = HoaLuGame();

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      leading: IconButton(
        tooltip: 'Về menu',
        onPressed: () => context.goNamed(RouterName.home),
        icon: const Icon(Icons.arrow_back),
      ),
      title: const Text('Cờ Lau Hoa Lư'),
    ),
    backgroundColor: const Color(0xff26382b),
    body: SafeArea(
      child: Center(
        child: AspectRatio(
          aspectRatio: 3 / 2,
          child: GameWidget(game: _game),
        ),
      ),
    ),
    bottomNavigationBar: const SafeArea(
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Text(
          'Chạm hoặc nhấp vào bản đồ để di chuyển nhân vật.',
          textAlign: TextAlign.center,
        ),
      ),
    ),
  );
}
