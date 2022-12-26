import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/common/common.dart';
import 'package:pokedex/data/data.dart';
import 'package:pokedex/domain/domain.dart';

part 'pokemon_list_event.dart';
part 'pokemon_list_state.dart';
part 'pokemon_list_bloc.freezed.dart';

class PokemonListBloc extends Bloc<PokemonListEvent, PokemonListState> {
  PokemonListBloc() : super(const PokemonListState.initial()) {
    on<_GetPokemons>(_onGetPokemons);
  }

  String _nextUrl = 'https://pokeapi.co/api/v2/pokemon';
  final _pokemons = <Pokemon>{};
  int _pokemonsLenght = 0;

  void _onGetPokemons(
    _GetPokemons event,
    Emitter<PokemonListState> emit,
  ) async {
    if (_pokemons.isNotEmpty && _pokemons.length >= _pokemonsLenght) {
      return;
    }

    emit(const PokemonListState.loading());

    final result = await PokedexUsecases.getPokemons(_nextUrl);

    result.fold(
      (l) => emit(PokemonListState.error(l)),
      (r) {
        _pokemons.addAll(r.results ?? []);
        _nextUrl = r.next ?? _nextUrl;
        _pokemonsLenght = r.count ?? 0;

        emit(PokemonListState.loaded(_pokemons.toList()));
      },
    );
  }
}
