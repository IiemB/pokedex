import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pokedex/data/data.dart';
import 'package:pokedex/presentation/presentation.dart';

class PokemonCard extends StatelessWidget {
  final Pokemon pokemon;

  const PokemonCard({
    super.key,
    required this.pokemon,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PokemonDetailsBloc()
        ..add(PokemonDetailsEvent.getPokemonDetail(pokemon.url)),
      child: Card(
        child: BlocBuilder<PokemonDetailsBloc, PokemonDetailsState>(
          builder: (context, state) => state.maybeMap(
            orElse: () => const Center(child: CircularProgressIndicator()),
            loaded: (value) {
              final file = value.svgFile;

              if (file != null) {
                return SvgPicture.file(file);
              }

              return CachedNetworkImage(
                imageUrl: '${value.pokemonDetails.sprites?.frontDefault}',
                fit: BoxFit.contain,
              );
            },
          ),
        ),
      ),
    );
  }
}
