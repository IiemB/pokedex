import 'package:freezed_annotation/freezed_annotation.dart';

part 'move_learn_method_detail.freezed.dart';
part 'move_learn_method_detail.g.dart';

@freezed
class MoveLearnMethodDetail with _$MoveLearnMethodDetail {
  factory MoveLearnMethodDetail({
    String? name,
    String? url,
  }) = _MoveLearnMethodDetail;

  factory MoveLearnMethodDetail.fromJson(Map<String, dynamic> json) =>
      _$MoveLearnMethodDetailFromJson(json);
}
