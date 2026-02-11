import 'package:auto_route/auto_route.dart';
import 'package:cashew_clone/routes/app_router.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()
class PanelPage extends StatelessWidget {
  const PanelPage({super.key});

  @override
  Widget build(BuildContext context) => AutoTabsScaffold(
    routes: const [
      HomeRoute(),
      TransactionsRoute(),
      BudgetRoute(),
      MoreActionsRoute(),
    ],
    bottomNavigationBuilder: (_, tabsRouter) => BottomNavigationBar(
      currentIndex: tabsRouter.activeIndex,
      onTap: tabsRouter.setActiveIndex,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const [
        BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
        BottomNavigationBarItem(
          label: 'Transactions',
          icon: Icon(Icons.wallet),
        ),
        BottomNavigationBarItem(label: 'Budget', icon: Icon(Icons.pie_chart)),
        BottomNavigationBarItem(
          label: 'More actions',
          icon: Icon(Icons.drag_handle),
        ),
      ],
    ),
  );
}
