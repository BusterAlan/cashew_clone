import 'package:auto_route/auto_route.dart';
import 'package:cashew_clone/widgets/cashew_app_bar.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: CashewAppBar(
      titleText: "Inicio",
      actions: [
        IconButton(
          icon: Icon(Icons.density_medium),
          onPressed: () => _onPressed(context),
        ),
      ],
    ),
    body: Center(child: Text("Home page")),
  );

  void _onPressed(BuildContext context) {
    // TODO: Implement onPressed of AppBar
  }
}
