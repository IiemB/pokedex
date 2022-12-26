// ignore_for_file: invalid_annotation_target

import 'package:pokedex/data/models/pokemon/details/details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'versions.freezed.dart';
part 'versions.g.dart';

@freezed
class Versions with _$Versions {
  factory Versions({
    @JsonKey(name: 'generation-i') GenerationI? generationI,
    @JsonKey(name: 'generation-ii') GenerationIi? generationIi,
    @JsonKey(name: 'generation-iii') GenerationIii? generationIii,
    @JsonKey(name: 'generation-iv') GenerationIv? generationIv,
    @JsonKey(name: 'generation-v') GenerationV? generationV,
    @JsonKey(name: 'generation-vi') GenerationVi? generationVi,
    @JsonKey(name: 'generation-vii') GenerationVii? generationVii,
    @JsonKey(name: 'generation-viii') GenerationViii? generationViii,
  }) = _Versions;

  factory Versions.fromJson(Map<String, dynamic> json) =>
      _$VersionsFromJson(json);
}
