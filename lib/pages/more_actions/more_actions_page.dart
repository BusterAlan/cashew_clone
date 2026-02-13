import 'package:auto_route/auto_route.dart';
import 'package:cashew_clone/extensions/double_extensions.dart';
import 'package:cashew_clone/widgets/cashew_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../widgets/more_actions/more_actions.dart';

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
      CalendarRegisterSection(),
      SubscriptionsScheduledSection(),
      ObjectivesLoansSection(),
      EditMenuSection(),
    ];

    return Scaffold(
      appBar: CashewAppBar(
        titleText: "Más acciones",
        actions: [
          IconButton(
            onPressed: () => _onPressed(context),
            icon: Icon(Icons.question_answer),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView.separated(
          separatorBuilder: (context, index) => 10.0.h,
          itemBuilder: (context, index) => bodyWidgets[index],
          itemCount: 9,
        ),
      ),
    );
  }

  void _onPressed(BuildContext context) => launchUrl(
    Uri.https("cashewapp.web.app", "/faq.html"),
    mode: LaunchMode.externalApplication,
  );
}
