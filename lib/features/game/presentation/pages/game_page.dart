import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/services.dart';

import 'package:su_viet/app/routers/router_name.dart';
import 'package:su_viet/app/theme/app_colors.dart';

import '../game/hoa_lu_game.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  final HoaLuGame _game = HoaLuGame();

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: AppColors.gameFrame,
    body: Stack(
      fit: StackFit.expand,
      children: [
        GameWidget(game: _game),
        Positioned(
          top: 12,
          left: 12,
          child: IconButton.filledTonal(
            tooltip: 'Về menu',
            onPressed: () => context.goNamed(RouterName.home),
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: IgnorePointer(
            child: ColoredBox(
              color: AppColors.gameHintOverlay,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 7, horizontal: 12),
                child: Text(
                  'Chạm hoặc nhấp vào bản đồ để di chuyển nhân vật.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: AppColors.onGameHint),
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
