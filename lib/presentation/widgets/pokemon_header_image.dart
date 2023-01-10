import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokedex/data/data.dart';
import 'package:pokedex/presentation/presentation.dart';
import 'package:pokedex/utils/utils.dart';

class PokemonHeaderImage extends StatelessWidget {
  final Pokemon pokemon;
  const PokemonHeaderImage({
    super.key,
    required this.pokemon,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonDetailsBloc, PokemonDetailsState>(
      bloc: pokemon.detailBloc,
      builder: (context, pokemonDetailState) {
        final image = pokemonDetailState.maybeMap(
          orElse: () => Assets.images.icon.image(),
          loaded: (value) {
            final svgFile = value.svgFile;
            final imageFile = value.imageFile;

            if (svgFile != null) {
              return SvgPicture.file(svgFile);
            }

            if (imageFile != null) {
              return Image.file(imageFile);
            }

            return Assets.images.icon.image();
          },
        );

        return BlocBuilder<PokemonSwitcherCubit, Pokemon>(
          builder: (context, currentPokemon) {
            if (pokemon.name != currentPokemon.name) {
              return image;
            }

            return Hero(
              key: ValueKey(currentPokemon),
              tag: pokemon.name,
              child: image,
            );
          },
        );
      },
    );
  }
}
