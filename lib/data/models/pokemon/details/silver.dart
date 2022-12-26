// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'silver.freezed.dart';
part 'silver.g.dart';

@freezed
class Silver with _$Silver {
  factory Silver({
    @JsonKey(name: 'back_default') String? backDefault,
    @JsonKey(name: 'back_shiny') String? backShiny,
    @JsonKey(name: 'front_default') String? frontDefault,
    @JsonKey(name: 'front_shiny') String? frontShiny,
    @JsonKey(name: 'front_transparent') String? frontTransparent,
  }) = _Silver;

  factory Silver.fromJson(Map<String, dynamic> json) => _$SilverFromJson(json);
}
