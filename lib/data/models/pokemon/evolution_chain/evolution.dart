import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:pokedex/data/models/pokemon/evolution_chain/chain.dart';

part 'evolution.freezed.dart';
part 'evolution.g.dart';

@freezed
class Evolution with _$Evolution {
  factory Evolution({
    Chain? chain,
    int? id,
  }) = _Evolution;

  factory Evolution.fromJson(Map<String, dynamic> json) =>
      _$EvolutionFromJson(json);
}
