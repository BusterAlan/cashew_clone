import 'package:flutter/material.dart';

class ConfigListTile extends StatelessWidget {
  const ConfigListTile({super.key});

  @override
  Widget build(BuildContext context) => ListTile(
    title: Text("Configuración y personalización"),
    subtitle: Text("Tema, idioma, importación/exportación CSV"),
    leading: Icon(Icons.settings),
  );
}
