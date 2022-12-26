// ignore_for_file: invalid_annotation_target

import 'package:pokedex/data/models/pokemon/details/details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generation_vii.freezed.dart';
part 'generation_vii.g.dart';

@freezed
class GenerationVii with _$GenerationVii {
  factory GenerationVii({
    Icons? icons,
    @JsonKey(name: 'ultra-sun-ultra-moon') UltraSunUltraMoon? ultraSunUltraMoon,
  }) = _GenerationVii;

  factory GenerationVii.fromJson(Map<String, dynamic> json) =>
      _$GenerationViiFromJson(json);
}
