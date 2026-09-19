import 'package:flame/components.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'game_state.dart';

class GameCubit extends Cubit<GameState> {
  GameCubit() : super(GameState());

  void start() => emit(state.copyWith(running: true));
  void stop() => emit(state.copyWith(running: false));
  void updatePlayer(Vector2 position) =>
      emit(state.copyWith(playerPosition: position));
}
