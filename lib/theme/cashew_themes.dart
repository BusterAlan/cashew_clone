import 'package:flutter/material.dart';

class CashewThemes {
  static ThemeData dark(BuildContext context) => ThemeData.dark().copyWith(
      iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(15),
              ),
            ),
          ),
      ),
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
    );
}
