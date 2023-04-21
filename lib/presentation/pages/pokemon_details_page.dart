import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/data/data.dart';
import 'package:pokedex/presentation/presentation.dart';
import 'package:pokedex/utils/utils.dart';

@RoutePage()
class PokemonDetailsPage extends StatelessWidget {
  static const routeName = '/pokemon-details';

  final Pokemon pokemon;
  final List<Pokemon> pokemons;
  const PokemonDetailsPage({
    super.key,
    required this.pokemon,
    required this.pokemons,
  });
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: BlocProvider.of<PokemonSwitcherCubit>(context)
            ..switchPokemon(pokemon),
        ),
        BlocProvider(create: (context) => EvolutionChainBloc()),
      ],
      child: Builder(
        builder: (context) => Scaffold(
          body: CustomScrollView(
            slivers: [
              PokemonDetailHeader(pokemons: pokemons),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    BlocBuilder<PokemonSwitcherCubit, Pokemon>(
                      builder: (context, pokemon) => Text(
                        pokemon.name,
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: context.theme.colorScheme.onBackground,
                          fontWeight: FontWeight.w600,
                          fontSize: 28.sp,
                        ),
                      ),
                    ),
                    const PokemonTypes(),
                    const PokemonWeightHeight(),
                    const PokemonBaseStats(),
                    const PokemonAbilities(),
                    // const EvolutionChain(),
                    const PokemonMoves()
                  ]
                      .map(
                        (e) => e is PokemonMoves || e is PokemonAbilities
                            ? e
                            : Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 8,
                                  horizontal: 16,
                                ),
                                child: e,
                              ),
                      )
                      .toList(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
