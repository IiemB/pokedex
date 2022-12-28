import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/data/data.dart';

class StatsAnimatorCubit extends Cubit<List<Stat>> {
  StatsAnimatorCubit(this.initialStats)
      : super(
          List.from(
            initialStats.map(
              (e) => e.copyWith(
                baseStat: 0,
                effort: 0,
              ),
            ),
          ),
        );

  final List<Stat> initialStats;

  void animate() => Future.delayed(
        const Duration(milliseconds: 100),
        () => emit(List.from(initialStats)),
      );
}
