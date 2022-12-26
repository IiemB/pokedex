import 'package:freezed_annotation/freezed_annotation.dart';

part 'type_detail.freezed.dart';
part 'type_detail.g.dart';

@freezed
class TypeDetail with _$TypeDetail {
  factory TypeDetail({
    String? name,
    String? url,
  }) = _TypeDetail;

  factory TypeDetail.fromJson(Map<String, dynamic> json) =>
      _$TypeDetailFromJson(json);
}
