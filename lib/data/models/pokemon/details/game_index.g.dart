// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_index.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GameIndex _$$_GameIndexFromJson(Map<String, dynamic> json) => _$_GameIndex(
      gameIndex: json['game_index'] as int?,
      versionDetail: json['version'] == null
          ? null
          : VersionDetail.fromJson(json['version'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GameIndexToJson(_$_GameIndex instance) =>
    <String, dynamic>{
      'game_index': instance.gameIndex,
      'version': instance.versionDetail?.toJson(),
    };
