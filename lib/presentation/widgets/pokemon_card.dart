import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pokedex/common/common.dart';
import 'package:pokedex/core/core.dart';
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
                router
                    .push(PokemonDetailsRoute(pokemon: pokemon))
                    .whenComplete(() {
                  // final pokemon =
                  //     BlocProvider.of<PokemonSwitcherCubit>(context).state;

                  // final valueContext =
                  //     GlobalObjectKey(pokemon.name).currentContext;

                  // if (valueContext == null) {
                  //   return;
                  // }

                  // final scrollPosition = Scrollable.of(valueContext).position;
                  // final renderObject = valueContext.findRenderObject();

                  // if (renderObject == null) {
                  //   return;
                  // }

                  // scrollPosition.ensureVisible(
                  //   renderObject,
                  //   duration: const Duration(milliseconds: 400),
                  //   alignment: 0.2,
                  // );
                });
              },
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(16, 16, 16, 32.sp),
                  child: Hero(
                    key: GlobalObjectKey(pokemon.name),
                    tag: pokemon.name,
                    child: state.maybeMap(
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

class PokemonCardEmpty extends StatelessWidget {
  const PokemonCardEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: getRandomColor,
      child: Padding(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 32.sp + 4),
        child: Assets.images.icon.image(),
      ),
    );
  }
}
