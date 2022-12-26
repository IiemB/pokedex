// ignore_for_file: invalid_annotation_target

import 'package:pokedex/data/models/pokemon/details/details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generation_vi.freezed.dart';
part 'generation_vi.g.dart';

@freezed
class GenerationVi with _$GenerationVi {
  factory GenerationVi({
    @JsonKey(name: 'omegaruby-alphasapphire')
        OmegarubyAlphasapphire? omegarubyAlphasapphire,
    @JsonKey(name: 'x-y') Xy? xY,
  }) = _GenerationVi;

  factory GenerationVi.fromJson(Map<String, dynamic> json) =>
      _$GenerationViFromJson(json);
}
