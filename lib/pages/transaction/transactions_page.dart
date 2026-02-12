import 'package:auto_route/auto_route.dart';
import 'package:cashew_clone/widgets/cashew_app_bar.dart';
import 'package:flutter/material.dart';

@RoutePage()
class TransactionsPage extends StatelessWidget {
  const TransactionsPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: CashewAppBar(
      titleText: "Transacciones",
      actions: [
        IconButton(
          onPressed: () => _onFilterPressed(context),
          icon: Icon(Icons.filter_alt),
        ),
        IconButton(
          onPressed: () => _onSearchPressed(context),
          icon: Icon(Icons.search),
        ),
      ],
    ),
    body: Center(child: Text("Transactions page")),
  );

  void _onFilterPressed(BuildContext context) {
    // TODO: Implement action
  }

  void _onSearchPressed(BuildContext context) {
    // TODO: Implement action
  }
}
