import 'package:flutter/material.dart';

class CashewAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CashewAppBar({
    super.key,
    required this.titleText,
    required this.actions,
  });

  final String titleText;

  final List<Widget> actions;

  @override
  Widget build(BuildContext context) => AppBar(
    toolbarHeight: 75,
    title: Text(
      titleText,
      style: Theme.of(
        context,
      ).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
    ),
    actions: actions,
  );

  @override
  Size get preferredSize => Size.fromHeight(75);
}
