import 'package:flutter/material.dart';

class ExpensesSummaryListTile extends StatelessWidget {
  const ExpensesSummaryListTile({super.key});

  @override
  Widget build(BuildContext context) => ListTile(
    title: Text("Resumen de todo el gasto"),
    subtitle: Text("Sus estadísticas de gasto en un solo lugar"),
    leading: Icon(Icons.money),
  );
}
