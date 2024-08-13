import 'package:auto_route/auto_route.dart';
import 'package:carkey/router/favorite_routes.dart';
import 'package:carkey/router/profile_routes.dart';
import 'package:carkey/router/tape_routes.dart';

import '../features/features.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, path: '/', initial: true, children: [
          TapeRoutes.routes,
          FavoriteRoutes.routes,
          ProfileRoutes.routes
        ])
      ];
}
