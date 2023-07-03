import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:pokedex/core/core.dart';
import 'package:pokedex/presentation/presentation.dart';
import 'package:pokedex/utils/utils.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  static const routeName = '/';
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<PokemonListBloc, PokemonListState>(
      bloc: BlocProvider.of<PokemonListBloc>(context)
        ..add(const PokemonListEvent.getPokemons(force: true)),
      listener: (context, state) => state.mapOrNull(
        error: (value) => ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(value.failure.message))),
        loaded: (value) => Future.delayed(
          const Duration(seconds: 1),
          () => router.pushAndPopUntil(
            const HomeRoute(),
            predicate: (route) => false,
          ),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(toolbarHeight: 1),
        body: Stack(
          children: [
            Center(
              child: Assets.images.gif.pokeball.image(),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const CircularProgressIndicator.adaptive(),
                      const Gap(8),
                      BlocBuilder<PokemonListBloc, PokemonListState>(
                        builder: (context, state) {
                          final pokemonsLenght = state.mapOrNull(
                            loading: (value) => value.dataLoaded,
                          );

                          if (pokemonsLenght == null || pokemonsLenght <= 0) {
                            return const Text(
                              '  ',
                              textAlign: TextAlign.center,
                            );
                          }

                          return Text(
                            '$pokemonsLenght',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: context.theme.colorScheme.onBackground,
                            ),
                          );
                        },
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
