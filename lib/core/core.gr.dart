// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:pokedex/data/data.dart' as _i6;
import 'package:pokedex/presentation/pages/home_page.dart' as _i3;
import 'package:pokedex/presentation/pages/pokemon_details_page.dart' as _i1;
import 'package:pokedex/presentation/pages/splash_page.dart' as _i2;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    PokemonDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<PokemonDetailsRouteArgs>();
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.PokemonDetailsPage(
          key: args.key,
          pokemon: args.pokemon,
          pokemons: args.pokemons,
        ),
      );
    },
    SplashRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.SplashPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomePage(),
      );
    },
  };
}

/// generated route for
/// [_i1.PokemonDetailsPage]
class PokemonDetailsRoute extends _i4.PageRouteInfo<PokemonDetailsRouteArgs> {
  PokemonDetailsRoute({
    _i5.Key? key,
    required _i6.Pokemon pokemon,
    required List<_i6.Pokemon> pokemons,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          PokemonDetailsRoute.name,
          args: PokemonDetailsRouteArgs(
            key: key,
            pokemon: pokemon,
            pokemons: pokemons,
          ),
          initialChildren: children,
        );

  static const String name = 'PokemonDetailsRoute';

  static const _i4.PageInfo<PokemonDetailsRouteArgs> page =
      _i4.PageInfo<PokemonDetailsRouteArgs>(name);
}

class PokemonDetailsRouteArgs {
  const PokemonDetailsRouteArgs({
    this.key,
    required this.pokemon,
    required this.pokemons,
  });

  final _i5.Key? key;

  final _i6.Pokemon pokemon;

  final List<_i6.Pokemon> pokemons;

  @override
  String toString() {
    return 'PokemonDetailsRouteArgs{key: $key, pokemon: $pokemon, pokemons: $pokemons}';
  }
}

/// generated route for
/// [_i2.SplashPage]
class SplashRoute extends _i4.PageRouteInfo<void> {
  const SplashRoute({List<_i4.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute({List<_i4.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
