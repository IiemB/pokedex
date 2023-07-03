import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          final backgroundColor = state.maybeMap(
            orElse: () => pokemon.optionColor,
            loaded: (value) =>
                value.palette?.dominantColor?.color ?? pokemon.optionColor,
          );

          return SliverAppBar(
            expandedHeight: context.height / 3,
            collapsedHeight: context.height / 5,
            floating: true,
            automaticallyImplyLeading: false,
            backgroundColor: backgroundColor,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox.shrink(),
                Flexible(
                  child: Text(
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
                ),
              ],
            ),
            leading: IconButton(
              onPressed: router.pop,
              color: backgroundColor.getContrastColor,
              icon: const Icon(Icons.cancel),
            ),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(12),
              ),
            ),
            // flexibleSpace: FlexibleSpaceBar(
            //   background: PokemonImagesCarousel(
            //     pokemons: pokemons,
            //   ),
            // ),
            flexibleSpace: Padding(
              padding: const EdgeInsets.all(8),
              child: Center(child: PokemonHeaderImage(pokemon: pokemon)),
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(kToolbarHeight),
              child: Text(
                pokemon.name,
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: backgroundColor.getContrastColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 28.sp,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
