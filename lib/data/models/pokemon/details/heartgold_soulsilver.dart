// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'heartgold_soulsilver.freezed.dart';
part 'heartgold_soulsilver.g.dart';

@freezed
class HeartgoldSoulsilver with _$HeartgoldSoulsilver {
  factory HeartgoldSoulsilver({
    @JsonKey(name: 'back_default') String? backDefault,
    @JsonKey(name: 'back_female') String? backFemale,
    @JsonKey(name: 'back_shiny') String? backShiny,
    @JsonKey(name: 'back_shiny_female') String? backShinyFemale,
    @JsonKey(name: 'front_default') String? frontDefault,
    @JsonKey(name: 'front_female') String? frontFemale,
    @JsonKey(name: 'front_shiny') String? frontShiny,
    @JsonKey(name: 'front_shiny_female') String? frontShinyFemale,
  }) = _HeartgoldSoulsilver;

  factory HeartgoldSoulsilver.fromJson(Map<String, String?> json) =>
      _$HeartgoldSoulsilverFromJson(json);
}
