import 'package:auto_route/auto_route.dart';
import 'package:cashew_clone/routes/app_router.gr.dart';
import 'package:cashew_clone/routes/route_names.dart';

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
        AutoRoute(page: TransactionsRoute.page, path: RouteNames.transactions),
        AutoRoute(
          page: AddTransactionRoute.page,
          path: RouteNames.addTransaction,
        ),
        AutoRoute(
          page: SearchTransactionRoute.page,
          path: RouteNames.searchTransaction,
        ),
        AutoRoute(page: BudgetRoute.page, path: RouteNames.budget),
        AutoRoute(page: MoreActionsRoute.page, path: RouteNames.moreActions),
        AutoRoute(
          page: ProSubscriptionRoute.page,
          path: RouteNames.proSubscription,
        ),
      ],
    ),
  ];
}
