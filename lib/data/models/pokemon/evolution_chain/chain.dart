// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/data/models/pokemon/evolution_chain/evolution_detail.dart';
import 'package:pokedex/data/models/pokemon/evolution_chain/evolves_to.dart';
import 'package:pokedex/data/models/pokemon/evolution_chain/species.dart';

part 'chain.freezed.dart';
part 'chain.g.dart';

@freezed
class Chain with _$Chain {
  factory Chain({
    @JsonKey(name: 'evolution_details') List<EvolutionDetail>? evolutionDetails,
    @JsonKey(name: 'evolves_to') List<EvolvesTo>? evolvesTo,
    @JsonKey(name: 'is_baby') bool? isBaby,
    Species? species,
  }) = _Chain;

  factory Chain.fromJson(Map<String, dynamic> json) => _$ChainFromJson(json);
}
