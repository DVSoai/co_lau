part of 'route_path.dart';

abstract final class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        name: RouterName.home,
        path: '/',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        name: RouterName.game,
        path: '/game',
        builder: (context, state) => const GamePage(),
      ),
    ],
  );
}
