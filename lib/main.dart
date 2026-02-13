import 'package:cashew_clone/routes/app_router.dart';
import 'package:cashew_clone/theme/cashew_themes.dart';
import 'package:flutter/material.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) => MaterialApp.router(
    debugShowCheckedModeBanner: false,
    themeMode: ThemeMode.dark,
    darkTheme: CashewThemes.dark(context),
    routerConfig: _appRouter.config(),
  );
}
