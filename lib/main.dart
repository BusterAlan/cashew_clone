import 'package:cashew_clone/routes/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) => MaterialApp.router(
    routerConfig: _appRouter.config(),
  );
}
