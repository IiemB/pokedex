import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/common/common.dart';
import 'package:pokedex/data/data.dart';
import 'package:pokedex/presentation/presentation.dart';
import 'package:pokedex/utils/utils.dart';

class PokemonTypes extends StatelessWidget {
  const PokemonTypes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonSwitcherCubit, Pokemon>(
      builder: (context, pokemon) =>
          BlocBuilder<PokemonDetailsBloc, PokemonDetailsState>(
        bloc: pokemon.detailBloc,
        builder: (context, state) => state.maybeMap(
          orElse: () => Wrap(
            alignment: WrapAlignment.center,
            children: [
              ...List<String>.generate(
                Random().nextInt(2) + 2,
                (index) => 'Type',
              ).map(
                (e) {
                  return BaseShimmer(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 4,
                      ),
                      margin: const EdgeInsets.symmetric(
                        horizontal: 8,
                      ),
                      decoration: BoxDecoration(
                        color: context.theme.colorScheme.background,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(16),
                        ),
                      ),
                      child: Text(
                        e.toUpperCase(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  );
                },
              ).toList()
            ],
          ),
          loaded: (value) => Wrap(
            alignment: WrapAlignment.center,
            children: [
              ...?value.pokemonDetails.types
                  ?.map((e) => e.typeDetail)
                  .toList()
                  .map(
                (e) {
                  final backgroundColor = getRandomColor;
                  return Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 4,
                    ),
                    margin: const EdgeInsets.symmetric(
                      horizontal: 8,
                    ),
                    decoration: BoxDecoration(
                      color: backgroundColor,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(16),
                      ),
                    ),
                    child: Text(
                      '${e?.name}'.toUpperCase(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: backgroundColor.getContrastColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                      ),
                    ),
                  );
                },
              ).toList()
            ],
          ),
        ),
        // builder: (context, state) {
        //   List<TypeDetail?>? types;
        //   state.mapOrNull<void>(
        //     loaded: (value) {
        //       final details = value.pokemonDetails;

        //       types = details.types?.map((e) => e.typeDetail).toList();
        //     },
        //   );

        //   },
      ),
    );
  }
}
