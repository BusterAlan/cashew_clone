import 'package:auto_route/auto_route.dart';
import 'package:cashew_clone/routes/app_router.gr.dart';
import 'package:flutter/material.dart';

class ProListTile extends StatelessWidget {
  const ProListTile({super.key});

  @override
  Widget build(BuildContext context) => InkWell(
    onTap: () => context.router.push(ProSubscriptionRoute()),
    child: Container(
      height: 125,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          colors: [
            Colors.pink.shade50,
            Colors.blue.shade100,
            Colors.pink.shade50,
          ],
          begin: AlignmentGeometry.centerLeft,
          end: AlignmentGeometry.centerRight,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            Expanded(
              flex: 9,
              child: Column(
                crossAxisAlignment: .start,
                mainAxisAlignment: .center,
                children: [
                  Text(
                    "Cashew",
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Presupueste cómo un profesional con Cashew Pro",
                    style: Theme.of(
                      context,
                    ).textTheme.bodyMedium?.copyWith(color: Colors.black),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Icon(Icons.chevron_right, color: Colors.black, size: 32),
            ),
          ],
        ),
      ),
    ),
  );
}
