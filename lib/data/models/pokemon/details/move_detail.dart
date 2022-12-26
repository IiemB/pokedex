import 'package:freezed_annotation/freezed_annotation.dart';

part 'move_detail.freezed.dart';
part 'move_detail.g.dart';

@freezed
class MoveDetail with _$MoveDetail {
  factory MoveDetail({
    String? name,
    String? url,
  }) = _MoveDetail;

  factory MoveDetail.fromJson(Map<String, dynamic> json) =>
      _$MoveDetailFromJson(json);
}
