import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:pokedex/data/data.dart';
import 'package:pokedex/presentation/presentation.dart';
import 'package:pokedex/utils/utils.dart';

class PokemonBaseStats extends StatelessWidget {
  const PokemonBaseStats({
    Key? key,
    required this.stats,
  }) : super(key: key);

  final List<Stat> stats;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StatsAnimatorCubit, List<Stat>>(
      bloc: StatsAnimatorCubit(stats)..animate(),
      builder: (context, state) => Column(
        children: [
          Text(
            'Base Stats',
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: context.theme.colorScheme.onBackground,
              fontWeight: FontWeight.w600,
              fontSize: 24.sp,
            ),
          ),
          ...state
              .map(
                (e) {
                  final backgroundColor = Pokemon.getRandomColor;
                  final titleW = context.widthPercent(10);
                  final valueW = context.width - context.widthPercent(30);

                  var statValue = e.baseStat ?? 10;
                  if (statValue > 100) {
                    statValue = 100;
                  }

                  final witdthValue = valueW * ((statValue) / 100);

                  return Row(
                    children: [
                      SizedBox(
                        width: titleW,
                        child: Text(
                          '${e.statDetail?.shortName}',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: context.theme.colorScheme.onBackground
                                .withOpacity(0.8),
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp,
                          ),
                        ),
                      ),
                      const Gap(8),
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 500),
                        height: 16.sp,
                        width: witdthValue,
                        decoration: BoxDecoration(
                          color: backgroundColor,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                        child: Text(
                          '$statValue'.toUpperCase(),
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: backgroundColor.getContrastColor
                                .withOpacity(0.8),
                            fontWeight: FontWeight.w600,
                            fontSize: 12.sp,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              )
              .map(
                (e) => Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 16,
                  ),
                  child: e,
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
