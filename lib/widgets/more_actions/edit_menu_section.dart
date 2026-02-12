import 'package:flutter/material.dart';

class EditMenuSection extends StatelessWidget {
  const EditMenuSection({super.key});

  @override
  Widget build(BuildContext context) => Row(
    mainAxisAlignment: .spaceBetween,
    crossAxisAlignment: .start,
    children: [
      _Accounts(),
      SizedBox(width: 10),
      _Budgets(),
      SizedBox(width: 10),
      _Categories(),
      SizedBox(width: 10),
      _Titles(),
    ],
  );
}

class _Accounts extends StatelessWidget {
  const _Accounts();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: Theme.of(
              context,
            ).colorScheme.onPrimaryContainer.withAlpha(128),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [Icon(Icons.wallet, size: 32), Text("Cuentas")],
          ),
        ),
      ),
    );
  }
}

class _Budgets extends StatelessWidget {
  const _Budgets();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: Theme.of(
              context,
            ).colorScheme.onPrimaryContainer.withAlpha(128),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: .center,
            children: [
              Icon(Icons.pie_chart, size: 32),
              SizedBox(height: 10),
              Text("Presupuestos", textAlign: .center),
            ],
          ),
        ),
      ),
    );
  }
}

class _Categories extends StatelessWidget {
  const _Categories();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: Theme.of(
              context,
            ).colorScheme.onPrimaryContainer.withAlpha(128),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Icon(Icons.category, size: 32),
              Text("Categorías", textAlign: .center),
            ],
          ),
        ),
      ),
    );
  }
}

class _Titles extends StatelessWidget {
  const _Titles();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: Theme.of(
              context,
            ).colorScheme.onPrimaryContainer.withAlpha(128),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [Icon(Icons.format_size, size: 32), Text("Títulos")],
          ),
        ),
      ),
    );
  }
}
