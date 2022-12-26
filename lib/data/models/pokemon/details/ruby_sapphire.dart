// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'ruby_sapphire.freezed.dart';
part 'ruby_sapphire.g.dart';

@freezed
class RubySapphire with _$RubySapphire {
  factory RubySapphire({
    @JsonKey(name: 'back_default') String? backDefault,
    @JsonKey(name: 'back_shiny') String? backShiny,
    @JsonKey(name: 'front_default') String? frontDefault,
    @JsonKey(name: 'front_shiny') String? frontShiny,
  }) = _RubySapphire;

  factory RubySapphire.fromJson(Map<String, dynamic> json) =>
      _$RubySapphireFromJson(json);
}
