part of 'evolution_chain_bloc.dart';

@freezed
class EvolutionChainState with _$EvolutionChainState {
  const factory EvolutionChainState.initial() = _Initial;
  const factory EvolutionChainState.loading() = _Loading;
  const factory EvolutionChainState.loaded({required Evolution evolution}) =
      _Loaded;
  const factory EvolutionChainState.error(Failure failure) = _Error;
}
