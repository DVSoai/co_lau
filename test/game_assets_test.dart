import 'package:su_viet/features/game/presentation/game/components/player_component.dart';
import 'package:su_viet/features/game/presentation/game/hoa_lu_game.dart';
import 'package:flame/components.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test(
    'assets load and player switches idle / walk / idle at destination',
    () async {
      final game = HoaLuGame();
      game.onGameResize(Vector2(960, 640));
      // Drive the Flame lifecycle explicitly in this headless asset test.
      // ignore: invalid_use_of_internal_member
      await game.load();
      // ignore: invalid_use_of_internal_member
      game.mount();
      await game.ready();
      game.update(0);
      final player = game.children.whereType<PlayerComponent>().single;
      expect(player.current, PlayerAnimation.idle);
      final atlas = game.images.fromCache('reed_leader_sheet.png');
      expect(atlas.width, 1536);
      expect(atlas.height, 1024);
      expect(player.animations![PlayerAnimation.walk]!.frames.length, 4);

      final destination = player.position + Vector2(100, 0);
      game.destination = destination.clone();
      game.update(.1);
      expect(player.current, PlayerAnimation.walk);
      for (var frame = 0; frame < 10; frame++) {
        game.update(.1);
      }
      expect(player.current, PlayerAnimation.idle);
      expect(game.destination, isNull);
      expect(player.position.distanceTo(destination), lessThan(.001));
      game.onRemove();
    },
  );
}
