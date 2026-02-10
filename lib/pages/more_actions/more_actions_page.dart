import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MoreActionsPage extends StatelessWidget {
  const MoreActionsPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text("Más acciones"),
    ),
    body: Center(
      child: Text("More actions page"),
    ),
  );
}
