import 'package:auto_route/auto_route.dart';
import 'package:cashew_clone/routes/app_router.gr.dart';
import 'package:cashew_clone/routes/route_names.dart';

class MoreActionsRoutes {
  static AutoRoute routing = AutoRoute(
    page: MoreActionsRoute.page,
    path: RouteNames.moreActions,
    children: [
      AutoRoute(
        page: ProSubscriptionRoute.page,
        path: RouteNames.proSubscription,
      ),
    ],
  );
}
