import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pokedex/data/data.dart';
import 'package:pokedex/presentation/presentation.dart';
import 'package:pokedex/utils/utils.dart';

class PokemonCard extends StatelessWidget {
  final Pokemon pokemon;

  const PokemonCard({
    super.key,
    required this.pokemon,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: pokemon..add(PokemonDetailsEvent.getPokemonDetail(pokemon.url)),
      child: BlocBuilder<PokemonDetailsBloc, PokemonDetailsState>(
        builder: (context, state) => state.maybeMap(
          orElse: () => Center(child: Assets.images.icon.image()),
          loaded: (value) {
            final svgFile = value.svgFile;
            final imageFile = value.imageFile;

            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: Card(
                color: value.paletteSvg?.dominantColor?.color ??
                    value.paletteImage?.dominantColor?.color,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(8, 8, 8, 24.sp),
                      child: Builder(
                        builder: (context) {
                          if (svgFile != null) {
                            return SvgPicture.file(svgFile);
                          }

                          if (imageFile != null) {
                            return Image.file(imageFile);
                          }

                          return Assets.images.icon.image();
                        },
                      ),
                    ),
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Text(
                            '${pokemon.name?.replaceAll('-', ' ')}',
                            textAlign: TextAlign.center,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: context.theme.colorScheme.onBackground,
                              fontSize: 20.sp,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '${value.pokemonDetails.id}',
                            textAlign: TextAlign.center,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: context.theme.colorScheme.onBackground,
                              fontSize: 20.sp,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
