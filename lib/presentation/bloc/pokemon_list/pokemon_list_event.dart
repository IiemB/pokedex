part of 'pokemon_list_bloc.dart';

@freezed
class PokemonListEvent with _$PokemonListEvent {
  const factory PokemonListEvent.getPokemons({@Default(false) bool force}) =
      _GetPokemons;
}
