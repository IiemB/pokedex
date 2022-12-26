// ignore_for_file: invalid_annotation_target

import 'package:pokedex/data/models/pokemon/details/details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generation_iv.freezed.dart';
part 'generation_iv.g.dart';

@freezed
class GenerationIv with _$GenerationIv {
  factory GenerationIv({
    @JsonKey(name: 'diamond-pearl') DiamondPearl? diamondPearl,
    @JsonKey(name: 'heartgold-soulsilver')
        HeartgoldSoulsilver? heartgoldSoulsilver,
    Platinum? platinum,
  }) = _GenerationIv;

  factory GenerationIv.fromJson(Map<String, dynamic> json) =>
      _$GenerationIvFromJson(json);
}
