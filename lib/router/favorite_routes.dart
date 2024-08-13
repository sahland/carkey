import 'package:auto_route/auto_route.dart';
import 'package:carkey/router/router.dart';

class FavoriteRoutes {
  static final routes = AutoRoute(page: FavoriteWrapperRoute.page, children: [
    AutoRoute(page: FavoriteRoute.page, initial: true),
  ]);
}
