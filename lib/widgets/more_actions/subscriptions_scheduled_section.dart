import 'package:flutter/material.dart';

class SubscriptionsScheduledSection extends StatelessWidget {
  const SubscriptionsScheduledSection({super.key});

  @override
  Widget build(BuildContext context) => Row(
    mainAxisAlignment: .spaceBetween,
    children: [_Subscriptions(), SizedBox(width: 10), _Scheduled()],
  );
}

class _Subscriptions extends StatelessWidget {
  const _Subscriptions();

  @override
  Widget build(BuildContext context) => Expanded(
    child: ListTile(
      title: Text("Suscripciones", overflow: .clip, maxLines: 1),
      leading: Icon(Icons.calendar_today),
    ),
  );
}

class _Scheduled extends StatelessWidget {
  const _Scheduled();

  @override
  Widget build(BuildContext context) => Expanded(
    child: ListTile(
      title: Text("Programado", overflow: .clip, maxLines: 1),
      leading: Icon(Icons.calendar_view_month),
    ),
  );
}
