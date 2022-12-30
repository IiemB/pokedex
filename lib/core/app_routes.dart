part of 'core.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      initial: true,
      page: SplashPage,
      path: SplashPage.routeName,
    ),
    AutoRoute(
      page: HomePage,
      path: HomePage.routeName,
    ),
    AutoRoute(
      page: PokemonDetailsPage,
      path: PokemonDetailsPage.routeName,
    ),
    AutoRoute(
      page: SettingsPage,
      path: SettingsPage.routeName,
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
