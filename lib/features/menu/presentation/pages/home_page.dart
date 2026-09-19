import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:su_viet/app/routers/router_name.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: const Color(0xfff2e3c6),
    body: Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'CỜ LAU HOA LƯ',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Color(0xff4d3020),
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'Prototype tuần 1 · Đinh Bộ Lĩnh',
            style: TextStyle(color: Color(0xff6d5034)),
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
