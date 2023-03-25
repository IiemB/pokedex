import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/data/data.dart';
import 'package:pokedex/presentation/presentation.dart';
import 'package:pokedex/utils/utils.dart';

class PokemonMoves extends StatelessWidget {
  const PokemonMoves({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonSwitcherCubit, Pokemon>(
      builder: (context, pokemon) =>
          BlocBuilder<PokemonDetailsBloc, PokemonDetailsState>(
        bloc: pokemon.detailBloc,
        builder: (context, state) {
          final pokemonMoves = <Move>[];

          state.mapOrNull<void>(
            loaded: (value) => pokemonMoves
              ..clear()
              ..addAll([...?value.pokemonDetails.moves]),
          );

          if (pokemonMoves.isEmpty) {
            return const SizedBox.shrink();
          }

          return Column(
            children: [
              Text(
                'Moves',
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: context.theme.colorScheme.onBackground,
                  fontWeight: FontWeight.w600,
                  fontSize: 20.sp,
                ),
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final move = pokemonMoves[index];

                  final levelLearned = move.versionGroupDetails
                      ?.map((e) => e.levelLearnedAt)
                      .where((element) => element != null)
                      .toSet()
                      .toList()
                    ?..sort();

                  return ListTile(
                    title: Text(
                      '${move.moveDetail?.name?.replaceAll('-', ' ').capitalizeAllWords}',
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ...?levelLearned
                            ?.map((e) => Text('Learned at level $e')),
                      ],
                    ),
                  );
                },
                itemCount: pokemonMoves.length,
              ),
            ],
          );
        },
      ),
    );
  }
}
