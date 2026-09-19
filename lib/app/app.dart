import 'package:flutter/material.dart';

import 'routers/router.dart';

class CoLauApp extends StatelessWidget {
  const CoLauApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Cờ Lau Hoa Lư',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: const Color(0xff8b5e34),
        useMaterial3: true,
      ),
      routerConfig: AppRouter.router,
    );
  }
}
