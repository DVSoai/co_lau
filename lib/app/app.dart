import 'package:flutter/material.dart';

import 'routers/route_path.dart';
import 'theme/app_colors.dart';

class CoLauApp extends StatelessWidget {
  const CoLauApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Cờ Lau Hoa Lư',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: AppColors.accent, useMaterial3: true),
      routerConfig: AppRouter.router,
    );
  }
}
