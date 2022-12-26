// ignore_for_file: invalid_annotation_target

import 'package:pokedex/data/models/pokemon/details/details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_index.freezed.dart';
part 'game_index.g.dart';

@freezed
class GameIndex with _$GameIndex {
  factory GameIndex({
    @JsonKey(name: 'game_index') int? gameIndex,
    @JsonKey(name: 'version') VersionDetail? versionDetail,
  }) = _GameIndex;

  factory GameIndex.fromJson(Map<String, dynamic> json) =>
      _$GameIndexFromJson(json);
}
