// ignore_for_file: invalid_annotation_target

import 'package:pokedex/data/models/pokemon/details/details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generation_viii.freezed.dart';
part 'generation_viii.g.dart';

@freezed
class GenerationViii with _$GenerationViii {
  factory GenerationViii({
    Icons? icons,
  }) = _GenerationViii;

  factory GenerationViii.fromJson(Map<String, dynamic> json) =>
      _$GenerationViiiFromJson(json);
}
