// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'crystal.freezed.dart';
part 'crystal.g.dart';

@freezed
class Crystal with _$Crystal {
  factory Crystal({
    @JsonKey(name: 'back_default') String? backDefault,
    @JsonKey(name: 'back_shiny') String? backShiny,
    @JsonKey(name: 'back_shiny_transparent') String? backShinyTransparent,
    @JsonKey(name: 'back_transparent') String? backTransparent,
    @JsonKey(name: 'front_default') String? frontDefault,
    @JsonKey(name: 'front_shiny') String? frontShiny,
    @JsonKey(name: 'front_shiny_transparent') String? frontShinyTransparent,
    @JsonKey(name: 'front_transparent') String? frontTransparent,
  }) = _Crystal;

  factory Crystal.fromJson(Map<String, dynamic> json) =>
      _$CrystalFromJson(json);
}
