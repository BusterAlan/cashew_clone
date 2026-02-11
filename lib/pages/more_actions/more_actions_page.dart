import 'package:auto_route/auto_route.dart';
import 'package:cashew_clone/widgets/more_actions/about_app_observations_section.dart';
import 'package:cashew_clone/widgets/more_actions/config_list_tile.dart';
import 'package:cashew_clone/widgets/more_actions/expenses_summary_list_tile.dart';
import 'package:cashew_clone/widgets/more_actions/notifications_copy_section.dart';
import 'package:cashew_clone/widgets/more_actions/pro_list_tile.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MoreActionsPage extends StatelessWidget {
  const MoreActionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> bodyWidgets = [
      ProListTile(),
      ConfigListTile(),
      ExpensesSummaryListTile(),
      AboutAppObservationsSection(),
      NotificationsCopySection(),
      SizedBox(), // TODO: Implement Calendar and Register from
      SizedBox(), // TODO: Implement Subscriptions and Scheduled
      SizedBox(), // TODO: Implement Objectives and Loans
      SizedBox(), // TODO: Implement Edit menu for Accounts, Budgets, Categories, and Titles
    ];

    return Scaffold(
      appBar: AppBar(title: Text("Más acciones")),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView.separated(
          separatorBuilder: (context, index) => SizedBox(height: 10),
          itemBuilder: (context, index) => bodyWidgets[index],
          itemCount: 9,
        ),
      ),
    );
  }
}
