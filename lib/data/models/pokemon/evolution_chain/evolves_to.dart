// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:pokedex/data/models/pokemon/evolution_chain/evolution_detail.dart';
import 'package:pokedex/data/models/pokemon/evolution_chain/species.dart';

part 'evolves_to.freezed.dart';
part 'evolves_to.g.dart';

@freezed
class EvolvesTo with _$EvolvesTo {
  factory EvolvesTo({
    @JsonKey(name: 'evolution_details') List<EvolutionDetail>? evolutionDetails,
    @JsonKey(name: 'evolves_to') List<EvolvesTo>? evolvesTo,
    @JsonKey(name: 'is_baby') bool? isBaby,
    Species? species,
  }) = _EvolvesTo;

  factory EvolvesTo.fromJson(Map<String, dynamic> json) =>
      _$EvolvesToFromJson(json);
}
