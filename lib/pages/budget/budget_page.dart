import 'package:auto_route/auto_route.dart';
import 'package:cashew_clone/widgets/cashew_app_bar.dart';
import 'package:flutter/material.dart';

@RoutePage()
class BudgetPage extends StatelessWidget {
  const BudgetPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: CashewAppBar(
      titleText: "Presupuesto",
      actions: [
        IconButton(
          onPressed: () => _onPressed(context),
          icon: Icon(Icons.edit),
        ),
      ],
    ),
    body: Padding(
      padding: const EdgeInsets.all(15.0),
      child: SizedBox(
        width: double.infinity,
        height: 200,
        child: IconButton.outlined(
          onPressed: () => _onPressed,
          icon: Icon(Icons.add),
        ),
      ),
    ),
  );

  void _onPressed(BuildContext context) {
    // TODO: Implement action
  }
}
