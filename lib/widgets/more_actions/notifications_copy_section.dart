import 'package:cashew_clone/extensions/double_extensions.dart';
import 'package:flutter/material.dart';

class NotificationsCopySection extends StatelessWidget {
  const NotificationsCopySection({super.key});

  @override
  Widget build(BuildContext context) => Row(
    mainAxisAlignment: .spaceBetween,
    children: [_Notifications(), 10.0.w, _CopyFrom()],
  );
}

class _Notifications extends StatelessWidget {
  const _Notifications();

  @override
  Widget build(BuildContext context) => Expanded(
    child: ListTile(
      title: Text("Notificaciones", overflow: .clip, maxLines: 1),
      leading: Icon(Icons.notifications),
    ),
  );
}

class _CopyFrom extends StatelessWidget {
  const _CopyFrom();

  @override
  Widget build(BuildContext context) => Expanded(
    child: ListTile(
      title: Text("Copia de", overflow: .clip, maxLines: 1),
      leading: Icon(Icons.drive_file_move),
    ),
  );
}
