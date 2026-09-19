import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app/app.dart';
import 'features/game/presentation/cubit/game_cubit.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    BlocProvider(
      create: (_) => GameCubit(),
      child: const CoLauApp(),
    ),
  );
}
