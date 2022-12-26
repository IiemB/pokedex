// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'firered_leafgreen.freezed.dart';
part 'firered_leafgreen.g.dart';

@freezed
class FireredLeafgreen with _$FireredLeafgreen {
  factory FireredLeafgreen({
    @JsonKey(name: 'back_default') String? backDefault,
    @JsonKey(name: 'back_shiny') String? backShiny,
    @JsonKey(name: 'front_default') String? frontDefault,
    @JsonKey(name: 'front_shiny') String? frontShiny,
  }) = _FireredLeafgreen;

  factory FireredLeafgreen.fromJson(Map<String, dynamic> json) =>
      _$FireredLeafgreenFromJson(json);
}
