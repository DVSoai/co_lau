import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:su_viet/app/theme/app_colors.dart';
import 'package:su_viet/app/routers/router_name.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: AppColors.parchment,
    body: Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'CỜ LAU HOA LƯ',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: AppColors.ink,
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'Prototype tuần 1 · Đinh Bộ Lĩnh',
            style: TextStyle(color: AppColors.mutedInk),
          ),
          const SizedBox(height: 32),
          FilledButton.icon(
            onPressed: () => context.goNamed(RouterName.game),
            icon: const Icon(Icons.play_arrow),
            label: const Text('Bắt đầu thử nghiệm'),
          ),
        ],
      ),
    ),
  );
}
