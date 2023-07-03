part of 'core.dart';

// @MaterialAutoRouter(
//   replaceInRouteName: 'Page,Route',
//   routes: <AutoRoute>[
//     AutoRoute(
//       initial: true,
//       page: SplashPage,
//       path: SplashPage.routeName,
//     ),
//     AutoRoute(
//       page: HomePage,
//       path: HomePage.routeName,
//     ),
//     AutoRoute(
//       page: PokemonDetailsPage,
//       path: PokemonDetailsPage.routeName,
//     ),
//     AutoRoute(
//       page: SettingsPage,
//       path: SettingsPage.routeName,
//     ),
//   ],
// )
// class $AppRouter {}

@AutoRouterConfig(replaceInRouteName: 'Page|Screen,Route')
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => <AutoRoute>[
        AutoRoute(
          initial: true,
          page: SplashRoute.page,
          path: SplashPage.routeName,
        ),
        AutoRoute(
          page: HomeRoute.page,
          path: HomePage.routeName,
        ),
        AutoRoute(
          page: PokemonDetailsRoute.page,
          path: PokemonDetailsPage.routeName,
        ),
      ];
}

@lazySingleton
class AppRoutes {
  String? currentRoute;

  final routeHistory = <String?>[];

  final appRouter = AppRouter();
}

final router = getIt<AppRoutes>().appRouter;
