import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/core/core.dart';
import 'package:pokedex/data/data.dart';
import 'package:pokedex/presentation/presentation.dart';
import 'package:pokedex/utils/utils.dart';

class PokemonDetailHeader extends StatelessWidget {
  const PokemonDetailHeader({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonSwitcherCubit, Pokemon>(
      builder: (context, pokemon) =>
          BlocBuilder<PokemonDetailsBloc, PokemonDetailsState>(
        bloc: pokemon.detailBloc,
        builder: (context, state) {
          var backgroundColor = state.maybeMap(
            orElse: () => pokemon.optionColor,
            loaded: (value) =>
                value.palette?.dominantColor?.color ?? pokemon.optionColor,
          );

          return SliverAppBar(
            expandedHeight: context.height / 3,
            backgroundColor: backgroundColor,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Pokedex',
                  style: TextStyle(
                    color: backgroundColor.getContrastColor,
                  ),
                ),
                Text(
                  state.maybeMap(
                    orElse: () => '',
                    loaded: (value) => '#${value.pokemonDetails.id}',
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: backgroundColor.getContrastColor,
                  ),
                ),
              ],
            ),
            leading: IconButton(
              onPressed: router.pop,
              icon: Icon(
                Icons.chevron_left_rounded,
                color: backgroundColor.getContrastColor,
              ),
            ),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(16),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: BlocBuilder<PokemonListBloc, PokemonListState>(
                builder: (context, state) => state.maybeMap(
                  orElse: () => Padding(
                    padding: const EdgeInsets.fromLTRB(
                      16,
                      24 + kToolbarHeight,
                      16,
                      16,
                    ),
                    child: Assets.images.icon.image(),
                  ),
                  loaded: (value) => PageView.builder(
                    allowImplicitScrolling: true,
                    controller: pageController,
                    itemCount: value.pokemons.length,
                    onPageChanged: (index) {
                      final pokemon = value.pokemons[index]
                        ..detailBloc
                            .add(const PokemonDetailsEvent.getPokemonDetail());

                      if (index + 1 < value.pokemons.length) {
                        value.pokemons[index + 1].detailBloc
                            .add(const PokemonDetailsEvent.getPokemonDetail());
                      }

                      BlocProvider.of<PokemonSwitcherCubit>(
                        context,
                      ).switchPokemon(pokemon);
                    },
                    itemBuilder: (_, index) {
                      final pokemon = value.pokemons[index];

                      return Padding(
                        padding: const EdgeInsets.fromLTRB(
                          16,
                          24 + kToolbarHeight,
                          16,
                          16,
                        ),
                        child: PokemonHeaderImage(pokemon: pokemon),
                      );
                    },
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
