import 'package:freezed_annotation/freezed_annotation.dart';

part 'ability_detail.freezed.dart';
part 'ability_detail.g.dart';

@freezed
class AbilityDetail with _$AbilityDetail {
  factory AbilityDetail({
    String? name,
    String? url,
  }) = _AbilityDetail;

  factory AbilityDetail.fromJson(Map<String, dynamic> json) =>
      _$AbilityDetailFromJson(json);
}
