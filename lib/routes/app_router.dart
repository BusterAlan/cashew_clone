import 'package:auto_route/auto_route.dart';
import 'package:cashew_clone/routes/app_router.gr.dart';
import 'package:cashew_clone/routes/more_actions_routes.dart';
import 'package:cashew_clone/routes/route_names.dart';
import 'package:cashew_clone/routes/transaction_routes.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: PanelRoute.page,
      path: RouteNames.panel,
      initial: true,
      children: [
        AutoRoute(page: HomeRoute.page, path: RouteNames.home, initial: true),
        TransactionRoutes.routing,
        AutoRoute(page: BudgetRoute.page, path: RouteNames.budget),
        MoreActionsRoutes.routing,
      ],
    ),
  ];
}
