import 'package:auto_route/auto_route.dart';
import 'package:cashew_clone/routes/app_router.gr.dart';
import 'package:cashew_clone/routes/route_names.dart';

class TransactionRoutes {
  static AutoRoute routing = AutoRoute(
    page: TransactionsRoute.page,
    path: RouteNames.transactions,
    children: [
      AutoRoute(
        page: AddTransactionRoute.page,
        path: RouteNames.addTransaction,
      ),
      AutoRoute(
        page: SearchTransactionRoute.page,
        path: RouteNames.searchTransaction,
      ),
    ],
  );
}
