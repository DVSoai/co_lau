import 'package:flame/components.dart';

class GameState {
  final Vector2 playerPosition;
  final bool running;

  GameState({Vector2? playerPosition, this.running = false})
    : playerPosition = playerPosition ?? Vector2(160, 120);

  GameState copyWith({Vector2? playerPosition, bool? running}) => GameState(
    playerPosition: playerPosition ?? this.playerPosition,
    running: running ?? this.running,
  );
}
