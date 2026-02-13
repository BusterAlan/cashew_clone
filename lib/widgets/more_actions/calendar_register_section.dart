import 'package:cashew_clone/extensions/double_extensions.dart';
import 'package:flutter/material.dart';

class CalendarRegisterSection extends StatelessWidget {
  const CalendarRegisterSection({super.key});

  @override
  Widget build(BuildContext context) => Row(
    mainAxisAlignment: .spaceBetween,
    children: [_Calendar(), 10.0.w, RegisterFrom()],
  );
}

class _Calendar extends StatelessWidget {
  const _Calendar();

  @override
  Widget build(BuildContext context) => Expanded(
    child: ListTile(
      title: Text("Calendario", overflow: .clip, maxLines: 1),
      leading: Icon(Icons.calendar_month),
    ),
  );
}

class RegisterFrom extends StatelessWidget {
  const RegisterFrom();

  @override
  Widget build(BuildContext context) => Expanded(
    child: ListTile(
      title: Text("Registro de", overflow: .clip, maxLines: 1),
      leading: Icon(Icons.checklist),
    ),
  );
}
