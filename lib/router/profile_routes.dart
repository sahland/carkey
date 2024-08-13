import 'package:auto_route/auto_route.dart';
import 'package:carkey/router/router.dart';

class ProfileRoutes {
  static final routes = AutoRoute(page: ProfileWrapperRoute.page, children: [
    AutoRoute(page: ProfileRoute.page, initial: true),
  ]);
}
