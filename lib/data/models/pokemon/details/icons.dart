// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'icons.freezed.dart';
part 'icons.g.dart';

@freezed
class Icons with _$Icons {
  factory Icons({
    @JsonKey(name: 'front_default') String? frontDefault,
    @JsonKey(name: 'front_female') String? frontFemale,
  }) = _Icons;

  factory Icons.fromJson(Map<String, dynamic> json) => _$IconsFromJson(json);
}
