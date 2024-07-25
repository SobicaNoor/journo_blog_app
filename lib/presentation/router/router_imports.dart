import 'package:auto_route/auto_route.dart';

import 'router_imports.gr.dart';

part 'router.dart';

@AutoRouterConfig(replaceInRouteName: "Route")
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, path: '/', initial: true),
        AutoRoute(page: OnboardRoute.page),
        // Add more routes here
      ];
}
