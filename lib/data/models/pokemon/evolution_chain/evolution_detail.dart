// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'evolution_detail.freezed.dart';
part 'evolution_detail.g.dart';

@freezed
class EvolutionDetail with _$EvolutionDetail {
  factory EvolutionDetail({
    @JsonKey(name: 'min_level') int? minLevel,
    @JsonKey(name: 'turn_upside_down') bool? turnUpsideDown,
  }) = _EvolutionDetail;

  factory EvolutionDetail.fromJson(Map<String, dynamic> json) =>
      _$EvolutionDetailFromJson(json);
}
