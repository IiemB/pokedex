import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/core/core.dart';
import 'package:pokedex/data/data.dart';
import 'package:pokedex/presentation/presentation.dart';
import 'package:pokedex/utils/utils.dart';

class PokemonDetailHeader extends StatelessWidget {
  final List<Pokemon> pokemons;
  const PokemonDetailHeader({super.key, required this.pokemons});

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
                    loaded: (value) => '# ${value.pokemonDetails.id}',
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
              background: PokemonImagesCarousel(
                pokemons: pokemons,
              ),
            ),
          );
        },
      ),
    );
  }
}
