// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'red_blue.freezed.dart';
part 'red_blue.g.dart';

@freezed
class RedBlue with _$RedBlue {
  factory RedBlue({
    @JsonKey(name: 'back_default') String? backDefault,
    @JsonKey(name: 'back_gray') String? backGray,
    @JsonKey(name: 'back_transparent') String? backTransparent,
    @JsonKey(name: 'front_default') String? frontDefault,
    @JsonKey(name: 'front_gray') String? frontGray,
    @JsonKey(name: 'front_transparent') String? frontTransparent,
  }) = _RedBlue;

  factory RedBlue.fromJson(Map<String, dynamic> json) =>
      _$RedBlueFromJson(json);
}
