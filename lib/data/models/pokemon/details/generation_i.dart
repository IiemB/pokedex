// ignore_for_file: invalid_annotation_target

import 'package:pokedex/data/models/pokemon/details/details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generation_i.freezed.dart';
part 'generation_i.g.dart';

@freezed
class GenerationI with _$GenerationI {
  factory GenerationI({
    @JsonKey(name: 'red-blue') RedBlue? redBlue,
    Yellow? yellow,
  }) = _GenerationI;

  factory GenerationI.fromJson(Map<String, dynamic> json) =>
      _$GenerationIFromJson(json);
}
