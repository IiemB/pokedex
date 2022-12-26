// ignore_for_file: invalid_annotation_target

import 'package:pokedex/data/models/pokemon/details/details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'version_group_detail.freezed.dart';
part 'version_group_detail.g.dart';

@freezed
class VersionGroupDetail with _$VersionGroupDetail {
  factory VersionGroupDetail({
    @JsonKey(name: 'level_learned_at') int? levelLearnedAt,
    @JsonKey(name: 'move_learn_method')
        MoveLearnMethodDetail? moveLearnMethodDetail,
    @JsonKey(name: 'version_group') VersionGroupDetail? versionGroupDetail,
  }) = _VersionGroupDetail;

  factory VersionGroupDetail.fromJson(Map<String, dynamic> json) =>
      _$VersionGroupDetailFromJson(json);
}
