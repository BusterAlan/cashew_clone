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
    themeMode: ThemeMode.dark,
    darkTheme: ThemeData.dark().copyWith(
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        unselectedItemColor: Theme.of(context).colorScheme.onPrimary,
        selectedItemColor: Theme.of(context).colorScheme.onPrimary,
      ),
      listTileTheme: ListTileThemeData(
        iconColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(15),
          side: BorderSide(
            color: Theme.of(context).colorScheme.onPrimary.withAlpha(128),
          ),
        ),
        subtitleTextStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
          color: Theme.of(context).colorScheme.onPrimary.withAlpha(128),
        ),
      ),
    ),
    routerConfig: _appRouter.config(),
  );
}
