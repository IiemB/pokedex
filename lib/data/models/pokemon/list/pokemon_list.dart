import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/data/models/pokemon/list/list.dart';

part 'pokemon_list.freezed.dart';
part 'pokemon_list.g.dart';

@freezed
class PokemonList with _$PokemonList {
  factory PokemonList({
    int? count,
    String? next,
    String? previous,
    List<Pokemon>? results,
  }) = _PokemonList;

  factory PokemonList.fromJson(Map<String, dynamic> json) =>
      _$PokemonListFromJson(json);
}
