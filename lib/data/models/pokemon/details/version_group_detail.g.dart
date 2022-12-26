// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'version_group_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VersionGroupDetail _$$_VersionGroupDetailFromJson(
        Map<String, dynamic> json) =>
    _$_VersionGroupDetail(
      levelLearnedAt: json['level_learned_at'] as int?,
      moveLearnMethodDetail: json['move_learn_method'] == null
          ? null
          : MoveLearnMethodDetail.fromJson(
              json['move_learn_method'] as Map<String, dynamic>),
      versionGroupDetail: json['version_group'] == null
          ? null
          : VersionGroupDetail.fromJson(
              json['version_group'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_VersionGroupDetailToJson(
        _$_VersionGroupDetail instance) =>
    <String, dynamic>{
      'level_learned_at': instance.levelLearnedAt,
      'move_learn_method': instance.moveLearnMethodDetail?.toJson(),
      'version_group': instance.versionGroupDetail?.toJson(),
    };
