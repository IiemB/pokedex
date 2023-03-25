import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/data/data.dart';
import 'package:pokedex/presentation/presentation.dart';
import 'package:pokedex/utils/utils.dart';

class EvolutionChain extends StatelessWidget {
  const EvolutionChain({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonSwitcherCubit, Pokemon>(
      builder: (context, pokemon) =>
          BlocBuilder<PokemonDetailsBloc, PokemonDetailsState>(
        bloc: pokemon.detailBloc,
        builder: (context, state) => state.maybeMap(
          orElse: () => const SizedBox.shrink(),
          loaded: (value) =>
              BlocBuilder<EvolutionChainBloc, EvolutionChainState>(
            bloc: BlocProvider.of<EvolutionChainBloc>(context)
              ..add(
                EvolutionChainEvent.getEvolutionChain(
                  value.pokemonDetails.id,
                ),
              ),
            builder: (context, state) => state.map(
              initial: (value) =>
                  const Center(child: CircularProgressIndicator.adaptive()),
              loading: (value) =>
                  const Center(child: CircularProgressIndicator.adaptive()),
              error: (value) => const SizedBox.shrink(),
              loaded: (loaded) => _PokemonChain(chain: loaded.evolution.chain),
            ),
          ),
        ),
      ),
    );
  }
}

class _PokemonChain extends StatelessWidget {
  final Chain? chain;
  const _PokemonChain({Key? key, required this.chain}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ...?chain?.evolvesTo?.map(
            (e) => _EvolpTo(
              evolvesTo: e,
            ),
          )
        ],
      ),
    );
  }
}

class _EvolpTo extends StatelessWidget {
  final EvolvesTo? evolvesTo;
  const _EvolpTo({Key? key, this.evolvesTo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (evolvesTo == null) {
      return const SizedBox.shrink();
    }

    final pokemon = BlocProvider.of<PokemonListBloc>(context).state.mapOrNull(
          loaded: (value) => value.pokemons.singleWhereOrNull(
            (element) => element.name.toSlug == evolvesTo?.species?.name,
          ),
        );

    if (pokemon == null) {
      return const SizedBox.shrink();
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox.square(
          dimension: context.width / 1.2,
          child: PokemonCard.evolution(pokemon: pokemon),
        ),
        ...?evolvesTo?.evolvesTo
            ?.map(
              (e) => _EvolpTo(
                evolvesTo: e,
              ),
            )
            .toList(),
      ],
    );
  }
}
