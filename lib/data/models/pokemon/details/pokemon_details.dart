// ignore_for_file: invalid_annotation_target

import 'package:pokedex/data/models/pokemon/details/details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_details.freezed.dart';
part 'pokemon_details.g.dart';

@freezed
class PokemonDetails with _$PokemonDetails {
  factory PokemonDetails({
    List<Ability>? abilities,
    @JsonKey(name: 'base_experience') int? baseExperience,
    List<Form>? forms,
    @JsonKey(name: 'game_indices') List<GameIndex>? gameIndices,
    int? height,
    int? id,
    @JsonKey(name: 'is_default') bool? isDefault,
    @JsonKey(name: 'location_area_encounters') String? locationAreaEncounters,
    List<Move>? moves,
    String? name,
    int? order,
    Sprites? sprites,
    List<Stat>? stats,
    List<Type>? types,
    int? weight,
  }) = _PokemonDetails;

  factory PokemonDetails.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetailsFromJson(json);
}
