import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/data/data.dart';
import 'package:pokedex/presentation/presentation.dart';
import 'package:pokedex/utils/utils.dart';

class PokemonAbilities extends StatelessWidget {
  const PokemonAbilities({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonSwitcherCubit, Pokemon>(
      builder: (context, pokemon) =>
          BlocBuilder<PokemonDetailsBloc, PokemonDetailsState>(
        bloc: pokemon.detailBloc,
        builder: (context, state) {
          final pokemonAbilities = <Ability>[];

          state.mapOrNull<void>(
            loaded: (value) => pokemonAbilities
              ..clear()
              ..addAll([...?value.pokemonDetails.abilities]),
          );

          if (pokemonAbilities.isEmpty) {
            return const SizedBox.shrink();
          }

          return Column(
            children: [
              Text(
                'Abilities',
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
                  final ability = pokemonAbilities[index];

                  return ListTile(
                    title: Text(
                      '${ability.abilityDetail?.name}'.formSlugThenCapitalized,
                    ),
                    subtitle: Text('Slot : ${ability.slot}'),
                  );
                },
                itemCount: pokemonAbilities.length,
              ),
            ],
          );
        },
      ),
    );
  }
}
