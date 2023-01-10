// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/foundation.dart' as _i4;
import 'package:flutter/material.dart' as _i3;

import '../data/data.dart' as _i5;
import '../presentation/presentation.dart' as _i1;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    PokemonDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<PokemonDetailsRouteArgs>();
      return _i2.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i1.PokemonDetailsPage(
          key: args.key,
          currentIndex: args.currentIndex,
          pokemon: args.pokemon,
        ),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SettingsPage(),
      );
    },
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        _i2.RouteConfig(
          HomeRoute.name,
          path: 'home',
        ),
        _i2.RouteConfig(
          PokemonDetailsRoute.name,
          path: 'pokemon-details',
        ),
        _i2.RouteConfig(
          SettingsRoute.name,
          path: 'settings',
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i2.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i2.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: 'home',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i1.PokemonDetailsPage]
class PokemonDetailsRoute extends _i2.PageRouteInfo<PokemonDetailsRouteArgs> {
  PokemonDetailsRoute({
    _i4.Key? key,
    required int currentIndex,
    required _i5.Pokemon pokemon,
  }) : super(
          PokemonDetailsRoute.name,
          path: 'pokemon-details',
          args: PokemonDetailsRouteArgs(
            key: key,
            currentIndex: currentIndex,
            pokemon: pokemon,
          ),
        );

  static const String name = 'PokemonDetailsRoute';
}

class PokemonDetailsRouteArgs {
  const PokemonDetailsRouteArgs({
    this.key,
    required this.currentIndex,
    required this.pokemon,
  });

  final _i4.Key? key;

  final int currentIndex;

  final _i5.Pokemon pokemon;

  @override
  String toString() {
    return 'PokemonDetailsRouteArgs{key: $key, currentIndex: $currentIndex, pokemon: $pokemon}';
  }
}

/// generated route for
/// [_i1.SettingsPage]
class SettingsRoute extends _i2.PageRouteInfo<void> {
  const SettingsRoute()
      : super(
          SettingsRoute.name,
          path: 'settings',
        );

  static const String name = 'SettingsRoute';
}
