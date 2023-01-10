import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/data/data.dart';
import 'package:pokedex/presentation/presentation.dart';
import 'package:pokedex/utils/utils.dart';

class PokemonWeightHeight extends StatelessWidget {
  const PokemonWeightHeight({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonSwitcherCubit, Pokemon>(
      builder: (context, pokemon) =>
          BlocBuilder<PokemonDetailsBloc, PokemonDetailsState>(
        bloc: pokemon.detailBloc,
        builder: (context, state) {
          var weight = 0.0;
          var height = 0.0;

          state.mapOrNull(
            loaded: (value) {
              final details = value.pokemonDetails;

              weight = (details.weight ?? 10) / 10;
              height = (details.height ?? 10) / 10;
            },
          );

          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '$weight KG',
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: context.theme.colorScheme.onBackground,
                  fontWeight: FontWeight.w600,
                  fontSize: 20.sp,
                ),
              ),
              Text(
                '$height M',
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: context.theme.colorScheme.onBackground,
                  fontWeight: FontWeight.w600,
                  fontSize: 20.sp,
                ),
              ),
            ]
                .map(
                  (e) => state.maybeMap(
                    orElse: () => BaseShimmer(
                      child: Container(
                        decoration: BoxDecoration(
                          color: context.theme.colorScheme.background,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                        child: e,
                      ),
                    ),
                    loaded: (value) => e,
                  ),
                )
                .toList(),
          );
        },
      ),
    );
  }
}
