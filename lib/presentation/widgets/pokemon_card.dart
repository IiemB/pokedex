import 'package:exprollable_page_view/exprollable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pokedex/data/data.dart';
import 'package:pokedex/presentation/presentation.dart';
import 'package:pokedex/utils/utils.dart';
import 'package:visual_effect/visual_effect.dart';

class PokemonCard extends StatelessWidget {
  final Pokemon pokemon;

  final bool _isKeyed;

  const PokemonCard({
    super.key,
    required this.pokemon,
  }) : _isKeyed = true;

  const PokemonCard.evolution({
    super.key,
    required this.pokemon,
  }) : _isKeyed = false;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsState>(
      builder: (context, state) {
        if (state.scrollEffect) {
          return ScrollEffect(
            onGenerateVisualEffect: (effect, phase) => effect
                .grayscale(phase.leadingLerp(to: 0.5))
                .scale(
                  phase.isLeading ? phase.leadingLerp(from: 1, to: 0.9) : 1,
                  anchor: Alignment.topCenter,
                )
                .translate(
                  y: effect.childSize.width * phase.leading,
                  anchor: Alignment.topCenter,
                )
                .opacity(phase.leadingLerp(from: 1, to: 0)),
            child: _PokemonCard(pokemon: pokemon, isKeyed: _isKeyed),
          );
        }

        return _PokemonCard(pokemon: pokemon, isKeyed: _isKeyed);
      },
    );
  }
}

class _PokemonCard extends StatelessWidget {
  const _PokemonCard({
    required this.pokemon,
    required bool isKeyed,
  }) : _isKeyed = isKeyed;

  final Pokemon pokemon;
  final bool _isKeyed;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonDetailsBloc, PokemonDetailsState>(
      bloc: pokemon.detailBloc
        ..add(const PokemonDetailsEvent.getPokemonDetail()),
      builder: (context, state) => Padding(
        padding: const EdgeInsets.all(4.0),
        child: Card(
          color: state.maybeMap(
            orElse: () => pokemon.optionColor,
            loaded: (value) =>
                value.palette?.dominantColor?.color ?? pokemon.optionColor,
          ),
          child: InkWell(
            onTap: () => state.mapOrNull<void>(
              loaded: (value) {
                FocusScope.of(context).unfocus();

                final pokemons =
                    BlocProvider.of<SearchPokemonCubit>(context).state;

                Navigator.of(context, rootNavigator: true).push(
                  ModalExprollableRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        PokemonsPagesView(
                      pokemon: pokemon,
                      pokemons: pokemons,
                    ),
                  ),
                );
              },
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(16, 16, 16, 32.sp),
                  child: Hero(
                    key: _isKeyed ? GlobalObjectKey(pokemon.name) : UniqueKey(),
                    tag: pokemon.name,
                    child: state.maybeMap(
                      orElse: () => Assets.images.gif.pokeball.image(),
                      loaded: (value) {
                        final svgFile = value.svgFile;
                        final imageFile = value.imageFile;

                        if (svgFile != null) {
                          return SvgPicture.file(svgFile);
                        }

                        if (imageFile != null) {
                          return Image.file(imageFile);
                        }

                        return Assets.images.gif.pokeball.image();
                      },
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Text(
                        pokemon.name,
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: state.maybeMap(
                            orElse: () => pokemon.optionColor.getContrastColor,
                            loaded: (value) =>
                                (value.palette?.dominantColor?.color ??
                                        pokemon.optionColor)
                                    .getContrastColor,
                          ),
                          fontSize: 20.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
