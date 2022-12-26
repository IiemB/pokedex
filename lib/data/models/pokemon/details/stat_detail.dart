import 'package:freezed_annotation/freezed_annotation.dart';

part 'stat_detail.freezed.dart';
part 'stat_detail.g.dart';

@freezed
class StatDetail with _$StatDetail {
  factory StatDetail({
    String? name,
    String? url,
  }) = _StatDetail;

  factory StatDetail.fromJson(Map<String, dynamic> json) =>
      _$StatDetailFromJson(json);
}
