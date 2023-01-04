import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/data/data.dart';

class SearchPokemonCubit extends Cubit<List<Pokemon>> {
  SearchPokemonCubit() : super([]);

  final _pokemons = <Pokemon>[];

  void initPokemon(List<Pokemon> pokemons) {
    _pokemons
      ..clear()
      ..addAll(pokemons);

    emit(_pokemons);
  }

  void search(String keyword) {
    if (keyword.isEmpty) {
      emit(_pokemons);
      return;
    }

    final filteredPokemons = List<Pokemon>.from(
      _pokemons.where(
        (element) => element.name.toLowerCase().contains(keyword.toLowerCase()),
      ),
    );

    emit(filteredPokemons);
  }
}
