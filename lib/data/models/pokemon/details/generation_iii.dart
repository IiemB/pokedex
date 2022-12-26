// ignore_for_file: invalid_annotation_target

import 'package:pokedex/data/models/pokemon/details/details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generation_iii.freezed.dart';
part 'generation_iii.g.dart';

@freezed
class GenerationIii with _$GenerationIii {
  factory GenerationIii({
    Emerald? emerald,
    @JsonKey(name: 'firered-leafgreen') FireredLeafgreen? fireredLeafgreen,
    @JsonKey(name: 'ruby-sapphire') RubySapphire? rubySapphire,
  }) = _GenerationIii;

  factory GenerationIii.fromJson(Map<String, dynamic> json) =>
      _$GenerationIiiFromJson(json);
}
