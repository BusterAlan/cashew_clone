import 'package:cashew_clone/extensions/double_extensions.dart';
import 'package:flutter/material.dart';

class ObjectivesLoansSection extends StatelessWidget {
  const ObjectivesLoansSection({super.key});

  @override
  Widget build(BuildContext context) => Row(
    mainAxisAlignment: .spaceBetween,
    children: [_Objectives(), 10.0.w, _Loans()],
  );
}

class _Objectives extends StatelessWidget {
  const _Objectives();

  @override
  Widget build(BuildContext context) => Expanded(
    child: ListTile(
      title: Text("Objetivos", overflow: .clip, maxLines: 1),
      leading: Icon(Icons.savings),
    ),
  );
}

class _Loans extends StatelessWidget {
  const _Loans();

  @override
  Widget build(BuildContext context) => Expanded(
    child: ListTile(
      title: Text("Préstamos", overflow: .clip, maxLines: 1),
      leading: Icon(Icons.import_export),
    ),
  );
}
