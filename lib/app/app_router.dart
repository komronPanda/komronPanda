import 'package:auto_route/auto_route.dart';
import 'app_router.gr.dart';
import 'routes.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();
  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      page: InformationRoute.page,
      path: Routes.InformationPage,
    ),
  ];
}