part of 'evolution_chain_bloc.dart';

@freezed
class EvolutionChainEvent with _$EvolutionChainEvent {
  const factory EvolutionChainEvent.getEvolutionChain(int? id) =
      _GetEvolutionChain;
}
