// ignore_for_file: invalid_annotation_target

import 'package:pokedex/data/models/pokemon/details/details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generation_ii.freezed.dart';
part 'generation_ii.g.dart';

@freezed
class GenerationIi with _$GenerationIi {
  factory GenerationIi({
    Crystal? crystal,
    Gold? gold,
    Silver? silver,
  }) = _GenerationIi;

  factory GenerationIi.fromJson(Map<String, dynamic> json) =>
      _$GenerationIiFromJson(json);
}
