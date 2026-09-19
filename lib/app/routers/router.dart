import 'package:go_router/go_router.dart';

import '../../features/game/presentation/pages/game_page.dart';
import '../../features/menu/presentation/pages/home_page.dart';
import 'route_path.dart';
import 'router_name.dart';

abstract final class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: RoutePath.home,
    routes: [
      GoRoute(
        name: RouterName.home,
        path: RoutePath.home,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        name: RouterName.game,
        path: RoutePath.game,
        builder: (context, state) => const GamePage(),
      ),
    ],
  );
}
