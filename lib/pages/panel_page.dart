import 'package:auto_route/auto_route.dart';
import 'package:cashew_clone/routes/app_router.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()
class PanelPage extends StatefulWidget {
  const PanelPage({super.key});

  @override
  State<PanelPage> createState() => _PanelPageState();
}

class _PanelPageState extends State<PanelPage> {
  late bool showFAB;

  @override
  void initState() {
    showFAB = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) => AutoTabsScaffold(
    floatingActionButton: Visibility(
      visible: showFAB,
      child: FloatingActionButton(
        backgroundColor: Colors.blue.shade50,
        child: Icon(Icons.add, color: const Color.fromARGB(255, 0, 36, 65)),
        onPressed: _onFABPressed,
      ),
    ),
    routes: const [
      HomeRoute(),
      TransactionsRoute(),
      BudgetRoute(),
      MoreActionsRoute(),
    ],
    bottomNavigationBuilder: (_, tabsRouter) => BottomNavigationBar(
      currentIndex: tabsRouter.activeIndex,
      onTap: (value) => _onTap(tabsRouter, value),
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

  void _onTap(TabsRouter router, int value) {
    router.setActiveIndex(value);

    if (value == 3) {
      setState(() {
        showFAB = false;
      });
    } else if (!showFAB) {
      setState(() {
        showFAB = true;
      });
    }
  }

  void _onFABPressed() => context.router.push(AddTransactionRoute());
}
