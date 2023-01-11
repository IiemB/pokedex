import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/data/data.dart';
import 'package:pokedex/presentation/presentation.dart';
import 'package:pokedex/utils/utils.dart';

class PokemonBaseStats extends StatelessWidget {
  const PokemonBaseStats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final valueW = context.width - context.widthPercent(30);

    return BlocBuilder<PokemonSwitcherCubit, Pokemon>(
      builder: (context, pokemon) =>
          BlocBuilder<PokemonDetailsBloc, PokemonDetailsState>(
        bloc: pokemon.detailBloc,
        builder: (context, state) {
          final pokemonStats = List<Stat>.from(_stats);

          state.mapOrNull<void>(
            loaded: (value) => pokemonStats
              ..clear()
              ..addAll([...?value.pokemonDetails.stats]),
          );

          return Column(
            children: [
              Text(
                'Base Stats',
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: context.theme.colorScheme.onBackground,
                  fontWeight: FontWeight.w600,
                  fontSize: 20.sp,
                ),
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ...pokemonStats
                          .map(
                            (e) => SizedBox(
                              height: 30.sp,
                              child: Center(
                                child: Text(
                                  '${e.statDetail?.pokemonStat.statName}',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: context
                                        .theme.colorScheme.onBackground
                                        .withOpacity(0.8),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ...pokemonStats.map(
                        (e) {
                          var statValue = e.baseStat ?? 10;
                          if (statValue > 100) {
                            statValue = 100;
                          }

                          final witdthValue = valueW * ((statValue) / 100);
                          return SizedBox(
                            height: 30.sp,
                            child: Stack(
                              children: [
                                Container(
                                  height: 18.sp,
                                  margin: EdgeInsets.symmetric(vertical: 8.sp),
                                  width: valueW,
                                  decoration: BoxDecoration(
                                    color: context
                                        .theme.colorScheme.onBackground
                                        .withOpacity(0.2),
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(16),
                                    ),
                                  ),
                                ),
                                AnimatedContainer(
                                  duration: const Duration(milliseconds: 500),
                                  height: 18.sp,
                                  margin: EdgeInsets.symmetric(vertical: 8.sp),
                                  width: witdthValue,
                                  decoration: BoxDecoration(
                                    color: e.statDetail?.pokemonStat.color,
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(16),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '${statValue > 0 ? statValue : 0}'
                                          .toUpperCase(),
                                      textAlign: TextAlign.center,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: e.statDetail?.pokemonStat.color
                                            .getContrastColor
                                            .withOpacity(0.8),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 10.sp,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ).toList(),
                    ],
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}

final _stats = [
  Stat(
    baseStat: 0,
    effort: 0,
    statDetail: StatDetail(name: 'hp'),
  ),
  Stat(
    baseStat: 0,
    effort: 0,
    statDetail: StatDetail(name: 'attack'),
  ),
  Stat(
    baseStat: 0,
    effort: 0,
    statDetail: StatDetail(name: 'defense'),
  ),
  Stat(
    baseStat: 0,
    effort: 1,
    statDetail: StatDetail(name: 'special-attack'),
  ),
  Stat(
    baseStat: 0,
    effort: 0,
    statDetail: StatDetail(name: 'special-defense'),
  ),
  Stat(
    baseStat: 0,
    effort: 0,
    statDetail: StatDetail(name: 'speed'),
  )
];
