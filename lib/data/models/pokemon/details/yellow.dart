// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'yellow.freezed.dart';
part 'yellow.g.dart';

@freezed
class Yellow with _$Yellow {
  factory Yellow({
    @JsonKey(name: 'back_default') String? backDefault,
    @JsonKey(name: 'back_gray') String? backGray,
    @JsonKey(name: 'back_transparent') String? backTransparent,
    @JsonKey(name: 'front_default') String? frontDefault,
    @JsonKey(name: 'front_gray') String? frontGray,
    @JsonKey(name: 'front_transparent') String? frontTransparent,
  }) = _Yellow;

  factory Yellow.fromJson(Map<String, dynamic> json) => _$YellowFromJson(json);
}
