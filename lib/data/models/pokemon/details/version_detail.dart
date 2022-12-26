import 'package:freezed_annotation/freezed_annotation.dart';

part 'version_detail.freezed.dart';
part 'version_detail.g.dart';

@freezed
class VersionDetail with _$VersionDetail {
  factory VersionDetail({
    String? name,
    String? url,
  }) = _VersionDetail;

  factory VersionDetail.fromJson(Map<String, dynamic> json) =>
      _$VersionDetailFromJson(json);
}
