part of 'pokemon_list_bloc.dart';

@freezed
class PokemonListState with _$PokemonListState {
  const factory PokemonListState.initial() = _Initial;
  const factory PokemonListState.loading() = _Loading;
  const factory PokemonListState.loaded(
    List<Pokemon> pokemons, {
    String? nextUrl,
  }) = _Loaded;
  const factory PokemonListState.error(Failure failure) = _Error;
}
