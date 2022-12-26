// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'xy.freezed.dart';
part 'xy.g.dart';

@freezed
class Xy with _$Xy {
  factory Xy({
    @JsonKey(name: 'front_default') String? frontDefault,
    @JsonKey(name: 'front_female') String? frontFemale,
    @JsonKey(name: 'front_shiny') String? frontShiny,
    @JsonKey(name: 'front_shiny_female') String? frontShinyFemale,
  }) = _Xy;

  factory Xy.fromJson(Map<String, dynamic> json) => _$XyFromJson(json);
}
