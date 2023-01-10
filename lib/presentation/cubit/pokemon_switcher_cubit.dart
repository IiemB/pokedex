import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/data/data.dart';

class PokemonSwitcherCubit extends Cubit<Pokemon> {
  PokemonSwitcherCubit(this.initial) : super(initial);

  final Pokemon initial;

  void switchPokemon(Pokemon pokemon) => emit(pokemon);
}
