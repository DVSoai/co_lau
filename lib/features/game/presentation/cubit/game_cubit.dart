import 'package:flame/components.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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

class GameCubit extends Cubit<GameState> {
  GameCubit() : super(GameState());

  void start() => emit(state.copyWith(running: true));
  void stop() => emit(state.copyWith(running: false));
  void updatePlayer(Vector2 position) =>
      emit(state.copyWith(playerPosition: position));
}
