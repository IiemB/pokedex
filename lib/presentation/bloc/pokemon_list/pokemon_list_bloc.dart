import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/common/common.dart';
import 'package:pokedex/data/data.dart';
import 'package:pokedex/domain/domain.dart';

part 'pokemon_list_bloc.freezed.dart';
part 'pokemon_list_event.dart';
part 'pokemon_list_state.dart';

class PokemonListBloc extends Bloc<PokemonListEvent, PokemonListState> {
  PokemonListBloc() : super(const PokemonListState.initial()) {
    on<_GetPokemons>(_onGetPokemons);
  }

  String? _nextUrl = 'https://pokeapi.co/api/v2/pokemon';
  final _pokemons = <Pokemon>{};

  void _onGetPokemons(
    _GetPokemons event,
    Emitter<PokemonListState> emit,
  ) async {
    if (_nextUrl == null ||
        state.maybeMap(
          orElse: () => false,
          loading: (value) => true,
        )) {
      return;
    }

    emit(const PokemonListState.loading());

    final result = await PokedexUsecases.getPokemons(_nextUrl!);

    result.fold(
      (l) => emit(PokemonListState.error(l)),
      (r) {
        _pokemons.addAll(r.results ?? []);
        _nextUrl = r.next;

        emit(PokemonListState.loaded(_pokemons.toList(), nextUrl: _nextUrl));
      },
    );
  }

  @override
  Future<void> close() async {
    Future.wait([
      for (var element in _pokemons) element.detailBloc.close(),
    ]).whenComplete(_pokemons.clear);

    return super.close();
  }
}
