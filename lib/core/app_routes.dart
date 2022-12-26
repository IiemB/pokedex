part of 'core.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    RedirectRoute(path: '/', redirectTo: HomePage.routeName),
    AutoRoute(
      initial: true,
      page: HomePage,
      path: HomePage.routeName,
    ),
  ],
)
class $AppRouter {}

@lazySingleton
class AppRoutes {
  String? currentRoute;

  final routeHistory = <String?>[];

  final appRouter = AppRouter();
}

final router = getIt<AppRoutes>().appRouter;
