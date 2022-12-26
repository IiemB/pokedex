// ignore_for_file: invalid_annotation_target

import 'package:pokedex/data/models/pokemon/details/details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generation_v.freezed.dart';
part 'generation_v.g.dart';

@freezed
class GenerationV with _$GenerationV {
  factory GenerationV({
    @JsonKey(name: 'black-white') BlackWhite? blackWhite,
  }) = _GenerationV;

  factory GenerationV.fromJson(Map<String, dynamic> json) =>
      _$GenerationVFromJson(json);
}
