part of 'router_imports.dart';

@AutoRouterConfig(replaceInRouteName: 'Route')
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();
  @override
  List<AutoRoute> get routes => [
        /// routes go here
        AutoRoute(page: SplashRoute.page, path: "/", initial: true),
        AutoRoute(page: OnboardRoute.page),
        AutoRoute(page: AuthRoute.page)
      ];
}
