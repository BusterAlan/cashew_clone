import 'package:flutter/material.dart';

class AboutAppObservationsSection extends StatelessWidget {
  const AboutAppObservationsSection({super.key});

  @override
  Widget build(BuildContext context) => Row(
    mainAxisAlignment: .spaceBetween,
    children: [_AboutCashew(), SizedBox(width: 10), _Observations()],
  );
}

class _AboutCashew extends StatelessWidget {
  const _AboutCashew();

  @override
  Widget build(BuildContext context) => Expanded(
    child: ListTile(
      title: Text("Acerca de Cashew", overflow: .clip, maxLines: 1),
      leading: Icon(Icons.info_outline),
    ),
  );
}

class _Observations extends StatelessWidget {
  const _Observations();

  @override
  Widget build(BuildContext context) => Expanded(
    child: ListTile(
      title: Text("Observaciones", overflow: .clip, maxLines: 1),
      leading: Icon(Icons.edit_attributes),
    ),
  );
}
