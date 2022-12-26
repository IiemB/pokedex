// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'ultra_sun_ultra_moon.freezed.dart';
part 'ultra_sun_ultra_moon.g.dart';

@freezed
class UltraSunUltraMoon with _$UltraSunUltraMoon {
  factory UltraSunUltraMoon({
    @JsonKey(name: 'front_default') String? frontDefault,
    @JsonKey(name: 'front_female') String? frontFemale,
    @JsonKey(name: 'front_shiny') String? frontShiny,
    @JsonKey(name: 'front_shiny_female') String? frontShinyFemale,
  }) = _UltraSunUltraMoon;

  factory UltraSunUltraMoon.fromJson(Map<String, String?> json) =>
      _$UltraSunUltraMoonFromJson(json);
}
