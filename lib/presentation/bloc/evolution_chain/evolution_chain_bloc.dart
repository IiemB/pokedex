import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/common/common.dart';
import 'package:pokedex/data/models/pokemon/pokemon.dart';
import 'package:pokedex/domain/domain.dart';

part 'evolution_chain_event.dart';
part 'evolution_chain_state.dart';
part 'evolution_chain_bloc.freezed.dart';

class EvolutionChainBloc
    extends Bloc<EvolutionChainEvent, EvolutionChainState> {
  EvolutionChainBloc() : super(const _Initial()) {
    on<_GetEvolutionChain>(_onGetEvolutionChain, transformer: droppable());
  }

  void _onGetEvolutionChain(
    _GetEvolutionChain event,
    Emitter<EvolutionChainState> emit,
  ) async {
    final id = event.id;

    if (id == null) {
      return;
    }

    emit(const EvolutionChainState.loading());

    final result = await PokedexUsecases.getEvolutionChain(id);

    result.fold(
      (l) => emit(EvolutionChainState.error(l)),
      (r) => emit(EvolutionChainState.loaded(evolution: r)),
    );
  }
}
