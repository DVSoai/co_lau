import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features/game/presentation/pages/game_page.dart';
import '../features/menu/presentation/pages/home_page.dart';

final _router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (_, __) => const HomePage()),
    GoRoute(path: '/game', builder: (_, __) => const GamePage()),
  ],
);

class CoLauApp extends StatelessWidget {
  const CoLauApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Cờ Lau Hoa Lư',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: const Color(0xff8b5e34), useMaterial3: true),
      routerConfig: _router,
    );
  }
}
