import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/common/common.dart';

part 'stat_detail.freezed.dart';
part 'stat_detail.g.dart';

@freezed
class StatDetail with _$StatDetail {
  factory StatDetail({
    String? name,
    String? url,
  }) = _StatDetail;

  factory StatDetail.fromJson(Map<String, dynamic> json) =>
      _$StatDetailFromJson(json);
}

extension StatDetailExtension on StatDetail {
  PokemonStats get pokemonStat =>
      {
        'hp': PokemonStats.hp,
        'attack': PokemonStats.attack,
        'defense': PokemonStats.defense,
        'special-attack': PokemonStats.spAtk,
        'special-defense': PokemonStats.spDef,
        'speed': PokemonStats.speed,
      }[name] ??
      PokemonStats.hp;
}
