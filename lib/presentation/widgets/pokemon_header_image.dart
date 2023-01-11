import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
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
        final image = pokemonDetailState.maybeMap<ImageProvider<Object>>(
          orElse: () => AssetImage(Assets.images.icon.path),
          loaded: (value) {
            final svgFile = value.svgFile;
            final imageFile = value.imageFile;

            if (svgFile != null) {
              return Svg(svgFile.path, source: SvgSource.file);
            }

            if (imageFile != null) {
              return FileImage(imageFile);
            }

            return AssetImage(Assets.images.icon.path);
          },
        );

        return BlocBuilder<PokemonSwitcherCubit, Pokemon>(
          builder: (context, currentPokemon) {
            if (pokemon.name != currentPokemon.name) {
              return BaseShimmer(
                child: Image(
                  image: image,
                  color: Colors.black.withOpacity(0.5),
                  colorBlendMode: BlendMode.modulate,
                ),
              );
            }

            return Hero(
              key: ValueKey(currentPokemon),
              tag: pokemon.name,
              child: Image(
                image: image,
                fit: BoxFit.fitHeight,
                filterQuality: FilterQuality.high,
              ),
            );
          },
        );
      },
    );
  }
}
